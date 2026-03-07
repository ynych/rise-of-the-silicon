# 《硅基编年史》(Silicon Chronicle)

> 一部关于人工智能时代的非虚构素材库
> 
> **总字数**：180,000+ 字 | **文档数**：38个 | **GitHub**：[ynych/rise-of-the-silicon](https://github.com/ynych/rise-of-the-silicon)

---

## 快速导航

| 你想了解什么？ | 去这里 |
|---------------|--------|
| **AI发展的关键转折点** | [`00-meta/timeline-v2-iteration2.md`](00-meta/timeline-v2-iteration2.md) — 22个已确认节点 + 8个预测节点 |
| **全球AI产业100位关键人物** | [`04-characters/kol-top100-detailed.md`](04-characters/kol-top100-detailed.md) — 完整排名+详细档案 |
| **中美AI博弈全景** | [`02-singularity/east-west/`](02-singularity/east-west/) — 芯片战争、模型对决、开源运动 |
| **大厂内部视角** | [`02-singularity/organizations/`](02-singularity/organizations/) — 百度/腾讯/华为/智谱 |
| **技术路线之争** | [`02-singularity/tech-routes/`](02-singularity/tech-routes/) — Scaling Law、Transformer演进 |
| **核心矛盾分析** | [`00-meta/worldview-framework.md`](00-meta/worldview-framework.md) — 五维矛盾矩阵 |

---

## 项目定位

**不是一本书，而是一个素材库。**

通过整理真实的人物、事件、技术突破和组织变迁，构建完整的AI产业全景。适合：
- 研究者快速查找关键事件
- 写作者寻找叙事素材
- 从业者理解行业格局

---

## 核心框架

### 三重时间线

```
史前时代 (2012-2022)    → 学术奠基，技术突破
    ↓
奇点临近 (2022-2030)    → 产业爆发，地缘博弈  ← 当前阶段
    ↓
AGI爆发  (2030+)        → 技术奇点，社会重构
```

### 五维核心矛盾

1. **东方-西方**（主矛盾）— 技术主权争夺
2. **理想-商业** — 使命 vs 盈利
3. **个人-系统** — 创新者 vs 组织机器
4. **开放-封闭** — 开源 vs 闭源
5. **发展-风险** — 速度 vs 安全

### 四条技术路线

- **语言模型**：OpenAI/Anthropic/GPT/Claude
- **多模态统一**：Sora/Gemini/视觉-语言融合
- **具身智能**：Tesla Optimus/Figure AI/机器人
- **科学AI**：AlphaFold/材料发现/推理能力

---

## 核心交付物

### 1. AI时代转折点全景图
**文件**：`00-meta/timeline-v2-iteration2.md`（7,400字）

**已确认转折点**（2012-2025）：
- 2012 AlexNet → 2016 AlphaGo → 2017 Transformer
- 2020 GPT-3 → 2022 ChatGPT/Stable Diffusion
- 2023 政变/Llama 2 → 2024 Claude 3.5/Sora/Qwen 2.5
- 2025 DeepSeek-R1

**预测转折点**（2025-2030）：
- 2025 AI上半场/下半场分界
- 2026 记忆突破 / Copilot→Autopilot
- 2027 AI Coding专业级 / 世界模型验证
- 2028 群体智能
- 2030 技术奇点

### 2. 全球AI产业Top 100关键人物
**文件**：`04-characters/kol-top100-detailed.md`（45,000字）

- **第一梯队**（1-10）：Altman, Huang, Hinton, LeCun, Ilya, Hassabis, Amodei, Gates, 李飞飞, Andrew Ng
- **第二梯队**（11-30）：Jeff Dean, Nadella, Musk, Zuckerberg, 梁文锋, 张一鸣等
- **第三梯队**（31-60）：Murati, Brockman, Mensch, HuggingFace, ScaleAI等
- **第四梯队**（61-100）：中国创业者/投资人/学者等

### 3. 大厂内部视角（独家）
**文件**：`02-singularity/organizations/`

| 公司 | 文档 | 核心内容 |
|------|------|----------|
| 百度 | `baidu-internal-struggle.md` | 王海峰边缘化、文心品牌迷途 |
| 腾讯 | `tencent-hunyuan-story.md` | 姚顺雨加入、冯佳时挖角 |
| 华为 | `huawei-ascend-inside.md` | 达芬奇计划、昇腾芯片突围 |
| 智谱 | `zhipu-ipo-story.md` | 清华KEG起源、港股上市 |

### 4. 国际视角（全球格局）
**文件**：`02-singularity/east-west/`

- `europe-ai-rising.md` — Mistral AI、马克龙第三条道路
- `asia-ai-players.md` — 日韩AI困境、索尼保守主义
- `middle-east-ai-investment.md` — 阿联酋G42、沙特NEOM
- `india-ai-ecosystem.md` — Krutrim、Sarvam、小模型战略
- `chip-war-comprehensive.md` — H100禁令、黄仁勋困境

### 5. 技术路线
**文件**：`02-singularity/tech-routes/` + `01-prehistoric/`

- `transformer-evolution.md` — Attention论文、BERT/GPT/T5三路线、MoE/Mamba
- `scaling-law-debate.md` — Scaling Law四维扩展争论
- `post-training-methods.md` — RLHF/Constitutional AI/DPO对比

### 6. 人物关系与深度档案
**文件**：`04-characters/`

- `character-relationship-map.md` — 核心人物关系网络
- `deep-profiles-complete.md` — Sam/Ilya/Dario/梁文锋/黄仁勋深度心理档案
- `kol-top100.md` — 100人排名列表

---

## 项目结构

```
silicon-chronicle/
├── 00-meta/                    # 框架与元数据
│   ├── worldview-framework.md  # 五维矛盾矩阵 ⭐
│   ├── timeline-v2-iteration2.md  # 转折点全景图 ⭐
│   ├── character-relationship-map.md  # 人物关系图谱
│   └── unified-timeline.md     # 统一时间线
│
├── 01-prehistoric/             # 史前时代（2012-2022）
│   ├── academic-factions.md    # 学术派系之争
│   └── transformer-evolution.md  # Transformer演进 ⭐
│
├── 02-singularity/             # 奇点临近（2022-2030）
│   ├── talent-migration/       # 人才迁徙
│   │   ├── china-big-tech-poaching.md
│   │   ├── openai-mafia.md
│   │   └── byte-seed-core-members.md
│   ├── east-west/              # 东西对决 ⭐
│   │   ├── chip-war-comprehensive.md
│   │   ├── europe-ai-rising.md
│   │   ├── asia-ai-players.md
│   │   ├── middle-east-ai-investment.md
│   │   └── india-ai-ecosystem.md
│   ├── tech-routes/            # 技术路线
│   │   ├── transformer-evolution.md
│   │   └── scaling-law-debate.md
│   └── organizations/          # 大厂内部 ⭐
│       ├── baidu-internal-struggle.md
│       ├── tencent-hunyuan-story.md
│       ├── huawei-ascend-inside.md
│       └── zhipu-ipo-story.md
│
├── 03-agi-era/                 # AGI时代（2030+）
│   ├── predictions.md
│   └── safety-debates-detailed.md
│
└── 04-characters/              # 人物素材库 ⭐
    ├── kol-top100.md
    ├── kol-top100-detailed.md
    └── deep-profiles-complete.md
```

---

## 核心洞察

### 1. 技术突破来自"意外"
- Transformer论文作者没想到会如此成功
- ChatGPT是"半成品"却引爆全球
- DeepSeek低成本训练是"被迫"的（芯片禁令）

### 2. 组织是创新的敌人
所有突破都来自"被遗忘的角落"：
- OpenAI早期"没人管"的GPT团队
- 阿里Qwen在达摩院角落野蛮生长
- 字节Seed最初只是小探索团队

但当组织壮大，管理介入，创新往往停滞。

### 3. 开源是技术理想主义者的武器
- 对抗组织商业化压力
- 打乱全球闭源格局
- 地缘政治突破策略

### 4. 人才战争的本质是价值观战争
不是钱的问题，是**对AI未来的不同想象**。

---

## 使用建议

### 研究者
- 查找特定事件 → `timeline-v2-iteration2.md`
- 查找人物关系 → `character-relationship-map.md`
- 查找技术细节 → `tech-routes/` + `transformer-evolution.md`

### 写作者
- 寻找叙事素材 → `organizations/` + `east-west/`
- 人物深度档案 → `deep-profiles-complete.md`
- 矛盾分析框架 → `worldview-framework.md`

### 从业者
- 行业格局 → `kol-top100-detailed.md`
- 技术路线 → `tech-routes/`
- 组织对比 → `org-structure-comparison.md`

---

## 项目统计

| 指标 | 数值 |
|------|------|
| 总字数 | 180,000+ 字 |
| 文档数 | 38 个 |
| Git提交 | 20 次 |
| 覆盖时间 | 2012-2030（预测） |
| 人物档案 | 100 位 + 5 位深度档案 |
| 关键事件 | 30+ 个已确认 + 8 个预测 |

---

## 状态与更新

**当前状态**：素材库v1.0完成，进入**维护模式**

**维护模式说明**：
- 重大AI事件发生时自动更新
- 触发条件：头部公司重大发布、地缘政治突破、关键人物变动、技术奇点信号

**最后更新**：2026-03-07

---

*《硅基编年史》—— 记住这个笨蛋的一切。*
