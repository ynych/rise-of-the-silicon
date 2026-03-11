# AI领域核心术语表

## 一、模型架构类

### Transformer
**定义**：2017年Google提出的深度学习架构，基于自注意力机制
**意义**：奠定大语言模型基础，GPT、BERT、T5等均基于此
**关键创新**：Attention Is All You Need，取代RNN/CNN

### GPT（Generative Pre-trained Transformer）
**定义**：OpenAI提出的生成式预训练模型系列
**版本**：GPT-1（2018）→ GPT-2（2019）→ GPT-3（2020）→ GPT-4（2023）→ GPT-5（2025）
**特点**：单向生成，预测下一个token

### BERT（Bidirectional Encoder Representations from Transformers）
**定义**：Google提出的双向编码器模型
**特点**：双向理解，适合分类、NER等任务
**与GPT对比**：BERT理解，GPT生成

### MoE（Mixture of Experts）
**定义**：混合专家模型，稀疏激活架构
**原理**：每次只激活部分参数，降低推理成本
**代表**：DeepSeek-V3、Qwen3、GPT-4

## 二、训练技术类

### 预训练（Pre-training）
**定义**：在大规模无标注数据上训练模型基础能力
**目标**：学习语言规律、世界知识

### RLHF（Reinforcement Learning from Human Feedback）
**定义**：基于人类反馈的强化学习
**流程**：人类标注偏好 → 训练奖励模型 → 强化学习优化

### GRPO（Group Relative Policy Optimization）
**定义**：DeepSeek提出的强化学习算法，无需价值模型

## 三、芯片/算力类

### CUDA
**定义**：英伟达并行计算平台，AI开发标准
**意义**：英伟达生态护城河

### H100 vs 昇腾910C
- **H100**：英伟达旗舰，FP16 989 TFLOPS，被禁售中国
- **昇腾910C**：华为自研，性能达H100 96%，国产替代核心

## 四、组织类

### 垂直整合 vs 水平分工
- **垂直整合**：预训练、后训练、Infra同一团队统筹（阿里Qwen原架构）
- **水平分工**：按功能拆分为独立团队（阿里Qwen新架构）

### P10（阿里）
**定义**：资深技术专家职级，林俊旸32岁成为阿里最年轻P10

## 五、开源/闭源类

### Apache 2.0 vs GPL
- **Apache 2.0**：允许商业使用（Qwen、TensorFlow）
- **GPL**：修改后必须开源（Linux）

### OpenAI Mafia
**定义**：OpenAI前员工创立的AI公司群体
**代表**：Anthropic、SSI、xAI
**总估值**：超640亿美元

---

*完整版见文档内容*
