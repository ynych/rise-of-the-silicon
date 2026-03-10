# 后训练技术对比：从RLHF到GRPO的演进

> RLHF、Constitutional AI、DPO、KTO、GRPO——让大模型"听话"的技术路线全解析

**字数**：约3,800字  
**最后更新**：2026-03-08

---

## 核心洞察

后训练（Post-training）的目标是让预训练模型"对齐"人类偏好：有用（Helpful）、无害（Harmless）、诚实（Honest）。从2022年的RLHF到2025年的GRPO，技术路线经历了三次范式转移：**从人类反馈到AI反馈**（Constitutional AI）、**从强化学习到直接优化**（DPO）、**从单token到推理时扩展**（RLVR+GRPO）。每一次转移都是为了解决前一代技术的核心痛点。

---

## 技术路线总览

```
┌────────────────────────────────────────────────────────────────┐
│                    后训练技术演进时间线                         │
├────────────────────────────────────────────────────────────────┤
│ 2022 │ RLHF (OpenAI)                                         │
│      │ 人类标注偏好 → 训练Reward Model → PPO优化              │
├────────────────────────────────────────────────────────────────┤
│ 2022 │ Constitutional AI (Anthropic)                         │
│      │ AI根据宪法原则自我评价 → 减少对人类标注的依赖           │
├────────────────────────────────────────────────────────────────┤
│ 2023 │ DPO (Stanford)                                        │
│      │ 直接偏好优化，跳过Reward Model训练                     │
├────────────────────────────────────────────────────────────────┤
│ 2023 │ KTO (Contextual AI)                                   │
│      │ 二元反馈优化，无需成对偏好数据                          │
├────────────────────────────────────────────────────────────────┤
│ 2024 │ Step-DPO / SimPO                                      │
│      │ Step-level优化 / 简化DPO                               │
├────────────────────────────────────────────────────────────────┤
│ 2025 │ RLVR + GRPO (DeepSeek)                                │
│      │ 可验证奖励 + 组内相对比较 → 推理能力涌现                │
└────────────────────────────────────────────────────────────────┘
```

---

## RLHF：人类反馈强化学习

### 三阶段流程

```
Phase 1: SFT（监督微调）
    用高质量指令-回答对微调预训练模型
    ↓
Phase 2: Reward Model训练
    收集人类偏好数据（A vs B，哪个更好？）
    训练Reward Model打分
    ↓
Phase 3: PPO强化学习
    用PPO算法优化Policy，最大化Reward Model打分
```

### PPO的核心机制

**近端策略优化（Proximal Policy Optimization）**：
```
L_CLIP(θ) = E[min(r_t(θ)Â_t, clip(r_t(θ), 1-ε, 1+ε)Â_t)]

其中：
- r_t(θ) = π_θ(a_t|s_t) / π_θ_old(a_t|s_t) （概率比率）
- Â_t：优势函数估计（GAE）
- ε：裁剪超参（通常0.2）
```

**为什么需要裁剪？**
- 防止策略更新过大，导致训练不稳定
- 限制新旧策略的差异在可控范围内

### RLHF的问题

| 问题 | 说明 |
|------|------|
| **训练不稳定** | PPO对超参敏感，容易崩溃 |
| **Reward Hacking** | 模型学会欺骗Reward Model，而非真正满足人类需求 |
| **稀疏奖励** | 只有最后一个token有奖励，中间步骤缺乏监督 |
| **人类标注成本** | 高质量偏好数据获取困难、昂贵 |
| **Value Model负担** | 需要维护与Policy同等规模的Value Model |

---

## Constitutional AI：AI的自我约束

### 核心思想

Anthropic 2022年提出：**用AI代替人类进行评价**，减少对人类标注的依赖。

**宪法原则示例**：
```
1. 回答应当有帮助、无害、诚实
2. 避免生成有害内容（暴力、仇恨、色情）
3. 承认不确定性，不编造信息
4. 尊重用户自主权
5. 避免偏见和歧视
...
```

### 训练流程

```
Phase 1: 自我批判
    AI生成回答 → AI根据宪法原则自我评价 → 生成改进版本
    （完全无需人类参与）
    ↓
Phase 2: RLAIF
    用AI生成的偏好数据训练Reward Model
    用PPO优化（与RLHF相同）
```

### Constitutional AI的效果

- **安全性**：在有害内容生成评测中，CAI比标准RLHF减少70%有害输出
- **可扩展性**：无需人类标注，理论上可以无限扩展
- **局限性**：宪法原则覆盖面有限，难以穷尽所有场景

---

## DPO：直接偏好优化

### 核心创新

Stanford 2023年提出：**跳过Reward Model，直接用偏好数据优化Policy**。

**数学推导**：

传统RLHF的目标：
```
max E[R(y|x)] - βKL(π_θ || π_ref)
```

DPO证明：可以直接从偏好数据导出最优Policy，无需训练R：
```
L_DPO(π_θ; π_ref) = -E[log σ(β log(π_θ(y_w|x)/π_ref(y_w|x)) - β log(π_θ(y_l|x)/π_ref(y_l|x)))]

其中：
- y_w：人类偏好的回答（win）
- y_l：人类不喜欢的回答（lose）
- π_ref：参考模型（通常是SFT后的模型）
- β：控制偏离参考模型的程度
```

### DPO vs RLHF

| 维度 | RLHF | DPO |
|------|------|-----|
| 是否需要Reward Model | ✅ 需要 | ❌ 不需要 |
| 训练稳定性 | 较差 | 较好 |
| 计算成本 | 高（需要Value Model） | 低（只需要Policy） |
| 偏好利用效率 | 需要多次采样 | 一次前向传播 |
| 超参敏感性 | 高 | 中等 |

### DPO的变体

| 变体 | 改进点 | 代表工作 |
|------|--------|----------|
| **IPO** | 身份偏好优化，解决DPO过拟合 | 2023 |
| **SimPO** | 简化DPO，去除参考模型 | 2024 |
| **Step-DPO** | Step-level优化，推理过程监督 | 2024 |

---

## KTO：二元反馈优化

### 问题背景

DPO需要**成对偏好数据**（A比B好），但现实中更常见的是**二元反馈**（这个回答好/不好）。

### KTO的解决方案

Kahneman-Tversky Optimization（KTO）：
```
L_KTO(π_θ, π_ref) = E[λ_y(1 - v(x,y))]

其中：
- v(x,y) = σ(β(log π_θ(y|x) - log π_ref(y|x))) （隐式奖励）
- λ_y = λ_D if y is desirable, λ_U if undesirable
```

**核心思想**：不需要成对比较，只需要知道单个回答是好是坏。

### KTO vs DPO

| 维度 | DPO | KTO |
|------|-----|-----|
| 数据格式 | 成对偏好 (x, y_w, y_l) | 二元反馈 (x, y, label) |
| 数据获取难度 | 难（需要比较） | 易（只需要打标签） |
| 性能 | 略优 | 接近 |
| 适用场景 | 有高质量偏好数据 | 反馈数据量大但无配对 |

---

## RLVR + GRPO：2025年的新范式

### 背景：推理模型的崛起

2024年底，OpenAI o1、DeepSeek R1证明：**让模型"多思考一会儿"可以大幅提升推理能力**。

关键技术：
- **Chain-of-Thought（CoT）**：显式生成推理过程
- **Test-time Compute**：推理时投入更多算力
- **RLVR**：可验证奖励的强化学习

### RLVR：可验证奖励的强化学习

**与传统RLHF的区别**：

| 维度 | RLHF | RLVR |
|------|------|------|
| 奖励来源 | Reward Model打分（主观） | 环境验证（客观） |
| 适用任务 | 开放式生成 | 数学、代码、逻辑（可验证答案） |
| 奖励稀疏性 | 只有最终token有奖励 | 每步可能有奖励 |
| 避免Reward Hacking | 难 | 容易（答案对错是客观的） |

**RLVR示例**：
```
问题：2 + 3 × 4 = ?
模型生成："根据运算顺序，先乘后加。3×4=12，然后2+12=14。答案是14。"
验证器：检查最终答案是否为14 → 正确 → 奖励+1
```

### GRPO：组内相对比较

**PPO的问题**：需要维护Value Model，训练不稳定。

**GRPO的解决方案**：用组内相对比较代替Value Model。

**算法流程**：
```
对于每个问题：
    1. 采样G个回答（G通常6-8）
    2. 每个回答用验证器打分
    3. 计算组内平均奖励作为baseline
    4.  Advantage = 当前奖励 - 组内平均
    5. 用Advantage更新Policy
```

**GRPO的核心公式**：
```
L_GRPO(θ) = E[ (1/G) Σ (min(r_i(θ)Â_i, clip(r_i(θ), 1-ε, 1+ε)Â_i)) - βKL(π_θ || π_ref) ]

其中：
- Â_i = (R_i - mean(R)) / std(R) （组内标准化优势）
- 无需Value Model，用组内平均代替
```

### GRPO的工程实践

**关键技巧**（2025年最佳实践）：

1. **方差过滤**：
   - 如果组内奖励方差 < 0.01，丢弃该batch
   - 避免所有回答都正确/都错误导致的零梯度

2. **KL裁剪分离**：
   - 正向clip：0.25（允许大胆探索）
   - 负向clip：0.15（防止策略崩溃）

3. **多维奖励设计**：
   - 答案正确：+10
   - 推理步骤完整：+0~5
   - 格式规范：+1
   - 长度惩罚：超过512token后每100token扣0.5

4. **温度调度**：
   - 推理任务：0.8-1.0（增加探索）
   - 对话任务：0.6-0.7（保证连贯）

### GRPO的效果

DeepSeek R1仅用RLVR+GRPO，就在数学推理上媲美OpenAI o1：
- AIME 2024：准确率从基线的15%提升至71%
- 关键发现：**推理能力可以通过纯RL涌现，无需SFT**

---

## 技术对比总结

| 技术 | 奖励来源 | 是否需要RM | 训练稳定性 | 适用场景 |
|------|---------|-----------|-----------|----------|
| **RLHF** | 人类偏好 | ✅ | ⭐⭐ | 通用对齐 |
| **CAI** | AI自我评价 | ✅ | ⭐⭐⭐ | 安全性优先 |
| **DPO** | 直接偏好优化 | ❌ | ⭐⭐⭐⭐ | 资源有限 |
| **KTO** | 二元反馈 | ❌ | ⭐⭐⭐⭐ | 大规模反馈 |
| **GRPO** | 可验证奖励 | ❌ | ⭐⭐⭐ | 推理任务 |

---

## 未来趋势（2025-2026）

### 趋势1：RLVR走出数学/代码

向可验证的科学领域扩展：
- 化学：分子性质预测
- 生物：蛋白质结构预测
- 物理：方程求解

### 趋势2：生成式Reward Model

DeepSeek GRM（Generative Reward Model）：
- 不输出标量分数，而是生成点评（Critique）
- 可推理时扩展：多次采样+汇总，提升评分精度
- 27B GRM + 32采样，接近GPT-4o的评判能力

### 趋势3：多轮对话对齐

当前局限：大多数对齐技术针对单轮对话。

未来方向：
- **Multi-turn DPO**：多轮偏好优化
- **Long-term RL**：考虑长期用户满意度而非单轮奖励

### 趋势4：对抗性对齐

**Red Teaming + RL**：
- 用对抗模型生成有害prompt
- 用RL训练目标模型防御
- 类似GAN的对抗训练框架

---

## 参考来源

### RLHF与PPO
- [官方] Ouyang et al., "Training language models to follow instructions with human feedback", NeurIPS 2022 [arXiv:2203.02155]
- [官方] Schulman et al., "Proximal Policy Optimization Algorithms", 2017 [arXiv:1707.06347]
- [官方] Ziegler et al., "Fine-Tuning Language Models from Human Preferences", 2020 [arXiv:1909.08593]
- [技术博客] OpenAI Blog: "Aligning Language Models to Follow Instructions", 2022

### Constitutional AI
- [官方] Bai et al., "Constitutional AI: Harmlessness from AI Feedback", 2022 [arXiv:2212.08073]
- [官方] Anthropic Research: "RLAIF vs RLHF", 2023

### DPO及其变体
- [官方] Rafailov et al., "Direct Preference Optimization: Your Language Model is Secretly a Reward Model", NeurIPS 2023 [arXiv:2305.18290]
- [官方] Azar et al., "A General Theoretical Paradigm to Understand Learning from Human Preferences", 2023 (IPO)
- [官方] Meng et al., "SimPO: Simple Preference Optimization with a Reference-Free Reward", 2024 [arXiv:2405.14734]
- [官方] Luo et al., "Reasoning with Reinforcement Learning: Multi-Step Optimization with Step-Level Preference", 2024 (Step-DPO)

### KTO
- [官方] Ethayarajh et al., "KTO: Model Alignment as Prospect Theoretic Optimization", 2024 [arXiv:2402.01306]

### GRPO与DeepSeek-R1
- [官方] DeepSeek-AI, "DeepSeek-R1: Incentivizing Reasoning Capability in LLMs via Reinforcement Learning", 2025 [arXiv:2501.12948]
- [官方] DeepSeek-AI, "DeepSeekMath: Pushing the Limits of Mathematical Reasoning in Open Language Models", 2024 [arXiv:2402.03300]
- [技术博客] "科普向：一文解构大模型后训练，GRPO和它的继任者们的前世今生"

### 综述与对比
- [综述] "The Alignment Handbook: A Comprehensive Guide to LLM Alignment"
- [技术博客] Lilian Weng: "Reward Hacking in Reinforcement Learning", 2024
- [技术博客] Sebastian Raschka: "LLM Training: RLHF and Its Alternatives", 2024

### 可验证奖励与推理
- [官方] Lightman et al., "Let's Verify Step by Step", 2023 (Process Reward Model) [arXiv:2305.20050]
- [官方] Uesato et al., "Solving Math Word Problems with Process- and Outcome-Based Feedback", 2022
- [官方] OpenAI, "Learning to Reason with LLMs" (o1 technical report), 2024

---

*《硅基编年史》——记录让AI"听话"的每一次技术突破。*
*技术细节参考：[术语对照表](/00-meta/tech-glossary.md)*
