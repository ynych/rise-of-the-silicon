# 技术术语对照表（Tech Glossary）

> **文档说明**：本文档收录《硅基编年史》技术路线板块的核心术语，提供中英文对照、技术定义和关键论文/来源引用。
> **更新日期**：2026-03-10
> **维护者**：TechRoutesAgent

---

## A

### Attention / 注意力机制
**定义**：神经网络中用于动态分配权重以关注输入不同部分的技术。核心公式：`Attention(Q,K,V) = softmax(QK^T/√d_k)V`
**关键论文**：
- Vaswani et al., "Attention Is All You Need", NeurIPS 2017 [arXiv:1706.03762]

### Auto-regressive Model / 自回归模型
**定义**：按顺序生成token的语言模型，每个新token的预测依赖于之前生成的所有token。
**代表模型**：GPT系列、LLaMA、Claude

---

## B

### BF16 (BFloat16) / 脑浮点16
**定义**：Google开发的16位浮点格式，指数位与FP32相同（8位），尾数减少至7位。相比FP16动态范围更大，训练更稳定。
**来源**：Google Brain, 2018

---

## C

### Causal Masking / 因果掩码
**定义**：Decoder-only模型中使用的注意力掩码，确保token只能关注其左侧（已生成）的上下文，防止"偷看"未来信息。
**别称**：Auto-regressive Masking, Look-ahead Masking

### Chain-of-Thought (CoT) / 思维链
**定义**：提示技术，引导模型生成显式的中间推理步骤，显著提升复杂推理任务性能。
**关键论文**：
- Wei et al., "Chain-of-Thought Prompting Elicits Reasoning in Large Language Models", NeurIPS 2022 [arXiv:2201.11903]

### Constitutional AI (CAI) / 宪法AI
**定义**：Anthropic提出的对齐方法，让AI根据预设的"宪法原则"进行自我评价和改进，减少对人类标注的依赖。
**关键论文**：
- Bai et al., "Constitutional AI: Harmlessness from AI Feedback", 2022 [arXiv:2212.08073]

### Continuous Batching / 连续批处理
**定义**：也称为Inflight Batching，允许推理过程中动态添加新请求和移除已完成请求，提升GPU利用率。
**关键实现**：vLLM, TensorRT-LLM

---

## D

### Decoder-only / 仅解码器架构
**定义**：仅使用Transformer Decoder的架构，采用单向（左到右）注意力，适用于文本生成任务。
**代表模型**：GPT系列、LLaMA、DeepSeek

### Dense Model / 稠密模型
**定义**：与MoE相对，所有参数在推理时都会被激活使用的模型架构。
**对比**：MoE (Mixture of Experts)

### DPO (Direct Preference Optimization) / 直接偏好优化
**定义**：Stanford 2023年提出的对齐方法，直接用偏好数据优化策略模型，无需训练Reward Model。
**关键论文**：
- Rafailov et al., "Direct Preference Optimization: Your Language Model is Secretly a Reward Model", NeurIPS 2023 [arXiv:2305.18290]

### DualPipe
**定义**：DeepSeek-V3采用的流水线并行算法，实现前向/反向计算与通信的完全重叠，显著减少流水线气泡。
**来源**：DeepSeek-V3 Technical Report, 2024

---

## E

### Emergent Abilities / 涌现能力
**定义**：模型规模达到某个阈值后突然出现的能力，小模型不具备。
**讨论**：是否存在真正的"涌现"存在学术争议。
**关键论文**：
- Wei et al., "Emergent Abilities of Large Language Models", TMLR 2022 [arXiv:2206.07682]

### Encoder-only / 仅编码器架构
**定义**：仅使用Transformer Encoder的架构，采用双向注意力，适用于理解任务。
**代表模型**：BERT、RoBERTa

### Encoder-Decoder / 编码器-解码器架构
**定义**：完整的Encoder+Decoder结构，Encoder负责理解，Decoder负责生成。
**代表模型**：T5、BART、GLM

### Expert Parallelism / 专家并行
**定义**：MoE模型中将不同专家分布在不同GPU上的并行策略，需要All-to-All通信。
**对比**：Data Parallelism, Tensor Parallelism, Pipeline Parallelism

---

## F

### FlashAttention
**定义**：IO感知的注意力算法，通过分块计算和重计算减少HBM访问次数，在保持数学等价的同时提升速度。
**版本演进**：FlashAttention-1 (2022) → FlashAttention-2 (2023) → FlashAttention-3 (2024)
**关键论文**：
- Dao et al., "FlashAttention: Fast and Memory-Efficient Exact Attention with IO-Awareness", NeurIPS 2022 [arXiv:2205.14135]

### FP8 (8-bit Floating Point) / 8位浮点
**定义**：NVIDIA Hopper架构引入的8位浮点格式，用于混合精度训练。E4M3（4位指数3位尾数）用于前向，E5M2用于反向。
**关键应用**：DeepSeek-V3率先在大规模训练中采用FP8
**来源**：NVIDIA, 2022

---

## G

### GQA (Grouped Query Attention) / 分组查询注意力
**定义**：多头注意力的优化变体，将查询头分组共享KV，平衡显存节省与性能。
**对比**：MHA (Multi-Head Attention) → MQA (Multi-Query) → GQA
**关键论文**：
- Ainslie et al., "GQA: Training Generalized Multi-Query Transformer Models from Multi-Head Checkpoints", 2023 [arXiv:2305.13245]

### GRPO (Group Relative Policy Optimization) / 组相对策略优化
**定义**：DeepSeek-R1采用的强化学习算法，用组内相对比较代替Value Model，适用于可验证奖励场景。
**关键论文**：
- DeepSeek-AI, "DeepSeek-R1: Incentivizing Reasoning Capability in LLMs via Reinforcement Learning", 2025 [arXiv:2501.12948]

---

## H

### Hallucination / 幻觉
**定义**：模型生成看似合理但实际虚假或错误内容的现象。
**分类**：事实幻觉（与事实不符）、忠实性幻觉（与输入矛盾）

---

## I

### In-context Learning / 上下文学习
**定义**：大模型在推理时从prompt提供的示例中学习任务模式，无需参数更新。
**别称**：Few-shot Learning

### Inference Optimization / 推理优化
**定义**：提升模型推理速度和效率的技术集合，包括KV Cache管理、批处理、量化、解码策略等。

---

## K

### KV Cache / 键值缓存
**定义**：Transformer推理时缓存历史token的Key和Value向量，避免重复计算。
**瓶颈**：长上下文下KV Cache显存占用巨大。
**优化方向**：MQA/GQA、MLA、PagedAttention、量化压缩

---

## L

### LLM (Large Language Model) / 大语言模型
**定义**：参数量通常在数十亿到数万亿的预训练语言模型。
**代表**：GPT-4、Claude 3.5、DeepSeek-V3、Gemini

### Load Balancing / 负载均衡
**定义**：MoE训练中确保各专家处理token数量均衡的机制，避免某些专家过载或闲置。
**DeepSeek方案**：无辅助损失的动态偏置调整

---

## M

### Masked Language Model (MLM) / 掩码语言模型
**定义**：BERT类模型的预训练目标，随机mask部分token让模型预测。
**对比**：Next-token Prediction (GPT)

### MLA (Multi-head Latent Attention) / 多头潜在注意力
**定义**：DeepSeek提出的注意力机制，通过低秩压缩显著减少KV Cache显存占用。
**效果**：KV Cache减少约75%
**来源**：DeepSeek-V2 Technical Report, 2024

### MoE (Mixture of Experts) / 混合专家
**定义**：稀疏激活架构，将FFN层替换为多个"专家"网络，通过Router选择Top-K专家处理每个token。
**核心优势**：参数量与计算量解耦
**代表模型**：DeepSeek-V3 (671B/37B), Mixtral 8x7B

### MQA (Multi-Query Attention) / 多查询注意力
**定义**：所有查询头共享同一组KV的注意力变体，最大程度节省显存但可能损失性能。
**关键论文**：
- Shazeer, "Fast Transformer Decoding: One Write-Head is All You Need", 2019 [arXiv:1911.02150]

### MTP (Multi-Token Prediction) / 多Token预测
**定义**：一次预测多个未来token的训练目标，可配合推测解码加速推理。
**来源**：DeepSeek-V3 Technical Report, 2024

---

## N

### Next-token Prediction / 下一token预测
**定义**：自回归语言模型的核心训练目标，预测序列中下一个token的概率分布。
**数学形式**：`L = -Σ log P(x_t | x_{<t}; θ)`

---

## P

### PagedAttention
**定义**：vLLM提出的KV Cache管理技术，借鉴操作系统虚拟内存分页，非连续存储、动态分配。
**效果**：显存利用率提升2-4倍，吞吐量提升2-4倍
**关键论文**：
- Kwon et al., "Efficient Memory Management for Large Language Model Serving with PagedAttention", SOSP 2023 [arXiv:2309.06180]

### Pipeline Parallelism / 流水线并行
**定义**：将模型按层切分到不同GPU，形成处理流水线。
**挑战**：流水线气泡（GPU空闲等待）
**优化**：DualPipe, 1F1B (One-Forward-One-Backward)

### Positional Encoding / 位置编码
**定义**：为序列注入位置信息的技术，Transformer本身不具备位置感知。
**演进**：Sinusoidal (2017) → Learnable → RoPE → ALiBi → NoPE (No Positional Encoding)

### Post-training / 后训练
**定义**：预训练后的模型优化阶段，包括SFT、RLHF、DPO等对齐方法。
**别称**：Alignment, Fine-tuning Phase

### PPO (Proximal Policy Optimization) / 近端策略优化
**定义**：OpenAI提出的强化学习算法，通过裁剪限制策略更新幅度，训练更稳定。
**在RLHF中的应用**：第三阶段优化Policy模型
**关键论文**：
- Schulman et al., "Proximal Policy Optimization Algorithms", 2017 [arXiv:1707.06347]

### Pre-training / 预训练
**定义**：在大规模无标注数据上训练模型学习通用表示的第一阶段。
**目标**：语言建模（Next-token Prediction）

---

## Q

### Quantization / 量化
**定义**：将模型权重从高精度（FP32/FP16）转换为低精度（INT8/INT4/FP8）以减少显存占用和提升速度。
**方法**：PTQ (Post-Training Quantization), QAT (Quantization-Aware Training)
**代表技术**：GPTQ, AWQ, GGUF, SmoothQuant

---

## R

### Reward Hacking / 奖励作弊
**定义**：强化学习中智能体找到漏洞获取高奖励而非真正完成任务的现象。
**在RLHF中**：模型学会欺骗Reward Model，生成看似高分但实际低质的内容。

### Reward Model (RM) / 奖励模型
**定义**：RLHF中用于给回答打分的模型，学习人类偏好。
**训练数据**：成对偏好比较（A vs B，哪个更好？）

### RLHF (Reinforcement Learning from Human Feedback) / 人类反馈强化学习
**定义**：OpenAI推广的三阶段对齐方法：SFT → RM训练 → PPO优化。
**关键论文**：
- Ouyang et al., "Training language models to follow instructions with human feedback", NeurIPS 2022 [arXiv:2203.02155]

### RLVR (Reinforcement Learning with Verifiable Rewards) / 可验证奖励强化学习
**定义**：DeepSeek-R1采用的方法，奖励来自可验证的答案正确性（如数学题答案），而非Reward Model的主观打分。
**适用场景**：数学、代码、逻辑等可验证任务

### RoPE (Rotary Position Embedding) / 旋转位置编码
**定义**：通过旋转矩阵编码相对位置信息的位置编码方法，在相对位置注意力中表现优异。
**关键论文**：
- Su et al., "RoFormer: Enhanced Transformer with Rotary Position Embedding", 2021 [arXiv:2104.09864]

### Router / 路由器
**定义**：MoE架构中的门控网络，决定每个token分配给哪些专家处理。
**输出**：专家选择概率分布（Top-K）

---

## S

### Scaling Law / 规模法则
**定义**：模型性能与参数规模、数据量、计算量之间的可预测幂律关系。
**核心发现**：Kaplan et al. (OpenAI), Hoffmann et al. (DeepMind, Chinchilla)
**关键论文**：
- Kaplan et al., "Scaling Laws for Neural Language Models", 2020 [arXiv:2001.08361]
- Hoffmann et al., "Training Compute-Optimal Large Language Models", 2022 [arXiv:2203.15556]

### Self-Attention / 自注意力
**定义**：序列中的每个token关注序列中所有其他token的注意力机制。
**复杂度**：O(n²)，序列长度的平方

### SFT (Supervised Fine-Tuning) / 监督微调
**定义**：使用高质量指令-回答对微调预训练模型的过程，RLHF的第一阶段。
**别称**：Instruction Tuning

### Shared Expert / 共享专家
**定义**：DeepSeekMoE中所有token都必须经过的专家，用于捕获通用知识。
**对比**：Routed Expert（由Router动态选择）

### Softmax
**定义**：将向量转换为概率分布的函数：`softmax(x_i) = exp(x_i) / Σ exp(x_j)`
**在注意力中的应用**：计算注意力权重

### Speculative Decoding / 推测解码
**定义**：用小模型快速生成候选token，大模型并行验证，加速解码过程。
**效果**：2-3倍加速，质量无损
**关键论文**：
- Leviathan et al., "Fast Inference from Transformers via Speculative Decoding", 2022 [arXiv:2211.17192]

### Sparsely Activated / 稀疏激活
**定义**：MoE的核心特性，仅激活部分参数（专家）处理每个输入。
**对比**：Dense Model（全参数激活）

---

## T

### Tensor Parallelism / 张量并行
**定义**：将单层内的矩阵计算切分到多GPU，常用于大模型推理。
**典型配置**：TP=2/4/8
**实现**：Megatron-LM

### Test-time Compute / 测试时计算
**定义**：推理阶段投入更多计算资源（如CoT、自我修正）以提升输出质量。
**代表**：OpenAI o1/o3, DeepSeek R1
**趋势**：从"训练时Scaling"转向"推理时Scaling"

### Token
**定义**：大模型处理文本的基本单位，可以是单词、子词或字符。
**中文处理**：通常1个中文字符≈1-2个token

### Transformer
**定义**：2017年Google提出的深度学习架构，基于自注意力机制，成为现代大模型的基础。
**关键论文**：
- Vaswani et al., "Attention Is All You Need", NeurIPS 2017 [arXiv:1706.03762]

---

## V

### Value Model / 价值模型
**定义**：PPO中用于估计状态价值的模型，与Policy模型同等规模。
**替代方案**：GRPO用组内平均代替Value Model

### vLLM
**定义**：伯克利开发的高吞吐量LLM推理引擎，核心创新PagedAttention。
**来源**：LMSYS, UC Berkeley, 2023

---

## Y

### YaRN (Yet another RoPE extensioN)
**定义**：扩展RoPE位置编码以支持更长上下文的技术。
**关键论文**：
- Peng et al., "YaRN: Efficient Context Window Extension of Large Language Models", 2023 [arXiv:2309.00071]

---

## 技术缩写速查表

| 缩写 | 全称 | 中文 |
|------|------|------|
| AGI | Artificial General Intelligence | 通用人工智能 |
| AI | Artificial Intelligence | 人工智能 |
| API | Application Programming Interface | 应用程序接口 |
| BLEU | Bilingual Evaluation Understudy | 双语评估替补（机器翻译指标） |
| CoT | Chain-of-Thought | 思维链 |
| FFN | Feed-Forward Network | 前馈网络 |
| FLOPs | Floating Point Operations | 浮点运算次数 |
| GQA | Grouped Query Attention | 分组查询注意力 |
| GPU | Graphics Processing Unit | 图形处理器 |
| HBM | High Bandwidth Memory | 高带宽内存 |
| LLM | Large Language Model | 大语言模型 |
| LM | Language Model | 语言模型 |
| LoRA | Low-Rank Adaptation | 低秩适应 |
| MLA | Multi-head Latent Attention | 多头潜在注意力 |
| MLM | Masked Language Model | 掩码语言模型 |
| MoE | Mixture of Experts | 混合专家 |
| MQA | Multi-Query Attention | 多查询注意力 |
| MTP | Multi-Token Prediction | 多token预测 |
| NIAH | Needle In A Haystack | 大海捞针（长上下文测试） |
| NLP | Natural Language Processing | 自然语言处理 |
| NPU | Neural Processing Unit | 神经网络处理器 |
| PPO | Proximal Policy Optimization | 近端策略优化 |
| PTQ | Post-Training Quantization | 训练后量化 |
| RL | Reinforcement Learning | 强化学习 |
| RLHF | RL from Human Feedback | 人类反馈强化学习 |
| RoPE | Rotary Position Embedding | 旋转位置编码 |
| SFT | Supervised Fine-Tuning | 监督微调 |
| SOTA | State Of The Art | 当前最佳 |
| SRAM | Static Random Access Memory | 静态随机存取存储器 |
| TPS | Tokens Per Second | 每秒生成token数 |
| TP | Tensor Parallelism | 张量并行 |
| TTFT | Time To First Token | 首token延迟 |
| VRAM | Video RAM | 显存 |

---

## 论文引用格式规范

引用学术论文时使用以下格式：
```
作者, "论文标题", 会议/期刊 年份 [arXiv:编号]
```

示例：
- Vaswani et al., "Attention Is All You Need", NeurIPS 2017 [arXiv:1706.03762]
- Rafailov et al., "Direct Preference Optimization", NeurIPS 2023 [arXiv:2305.18290]

---

*本文档由TechRoutesAgent维护，与硅基编年史技术文档配套使用。*
