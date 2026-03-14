# AI史前时代：学术派系与关键论文（2012-2022）

## 一、深度学习三巨头与学术派系

### 1.1 [Geoffrey Hinton](../../04-characters/deep-profiles-complete.md#geoffrey-hinton)（"深度学习教父"）

**核心贡献**：
- 反向传播算法（1986年）
- 深度置信网络（DBN）
- 2012年ImageNet比赛AlexNet的导师（学生：Alex Krizhevsky、[Ilya Sutskever](../../04-characters/deep-profiles-complete.md#ilya-sutskever)）

**关键转折点**：
- 2012年：ImageNet比赛后，深度学习开始爆发
- 2013年：加入Google（被Google收购的公司DNNResearch）
- 2023年：从Google辞职，公开警告AI风险

**学术立场**：
- 坚信神经网络是通向AI的唯一路径
- 晚年对AI安全产生深刻忧虑
- 2024年与John Hopfield共享诺贝尔物理学奖

### 1.2 [Yann LeCun](../../04-characters/deep-profiles-complete.md#yann-lecun)（卷积网络之父）

**核心贡献**：
- 卷积神经网络（LeNet，1989年）
- 反向传播算法的早期贡献者
- PyTorch推手（Meta）

**"推特战神"名场面**：
- 长期与Gary Marcus（符号主义）公开论战
- 2023年称GPT-4"没有真正的理解"
- 与Hinton在AI风险问题上观点相左

**学术立场**：
- 反对"AI末日论"
- 认为当前大模型只是"操纵语言"而非"理解世界"
- 力推"世界模型"（World Models）概念

### 1.3 [Yoshua Bengio](../../04-characters/deep-profiles-complete.md#yoshua-bengio)

**核心贡献**：
- 循环神经网络（RNN）和LSTM的推动者
- 生成对抗网络（GAN）的早期贡献
- 深度学习三巨头中的"调和者"

**学术立场**：
- 在Hinton和LeCun之间寻求平衡
- 关注AI安全但不过度悲观
- 积极参与AI政策制定（加拿大CIFAR）

---

## 二、关键论文与争议

### 2.1 2017年：Attention Is All You Need（Transformer）

**八位作者去向**：
| 作者 | 去向 | 现状 |
|------|------|------|
| Ashish Vaswani | 创立Adept AI、Essential AI | 创业中 |
| Noam Shazeer | 创立Character.AI | 创业中 |
| Niki Parmar | 与Ashish共同创业 | 创业中 |
| Jakob Uszkoreit | Inceptive（生物AI） | 创业中 |
| Llion Jones | 离开Google | - |
| Aidan Gomez | 创立Cohere | 独角兽 |
| Łukasz Kaiser | OpenAI | 研究员 |
| Illia Polosukhin | NEAR Protocol（区块链） | 创业中 |

**论文争议**：
- 署名顺序争议（Alphabetical vs 贡献度）
- 没人预料到Transformer会如此成功
- 8人全部离开Google，无一留下

### 2.2 2018年：BERT vs GPT路线之争

**BERT（Google）**：
- 作者：Jacob Devlin等
- 路线：双向编码器，专注理解
- 命运：作者被OpenAI挖角

**GPT（OpenAI）**：
- 作者：Alec Radford等
- 路线：单向生成器，专注生成
- 命运：成为GPT系列开端

**路线之争**：
- 学术界早期更认可BERT（刷榜能力强）
- OpenAI坚持GPT路线（生成即智能）
- 最终结果：GPT路线胜出（ChatGPT证明）

### 2.3 2020年：GPT-3论文与OpenAI封闭化

**核心争议**：
- 论文发布但模型不开放（API-only）
- 从"Open"AI走向闭源商业化
- Elon Musk公开批评"背离初心"

**内部矛盾**：
- [Ilya Sutskever](../../04-characters/deep-profiles-complete.md#ilya-sutskever)：坚持AGI安全研究
- Sam Altman：推动商业化
- 裂痕种子在此埋下

---

## 三、OpenAI的创立与分裂

### 3.1 2015年创立初衷

**创始人**：
- Sam Altman（Y Combinator总裁）
- Elon Musk（特斯拉/SpaceX）
- Greg Brockman（Stripe CTO）
- [Ilya Sutskever](../../04-characters/deep-profiles-complete.md#ilya-sutskever)（Google Brain）
- 其他：Wojciech Zaremba、John Schulman等

**使命**："确保通用人工智能（AGI）造福全人类"
- 非营利组织
- 开源精神
- 对抗Google的AI垄断

### 3.2 2018年：Musk退出

**矛盾焦点**：
- Musk想控制OpenAI并入特斯拉
- Altman拒绝，坚持独立
- Musk批评OpenAI"不够开放"

**后续影响**：
- Musk承诺的10亿美元捐赠只给了1亿
- 2019年OpenAI被迫转型"有限盈利"（capped-profit）
- 2023年Musk创立xAI，与OpenAI竞争
- 2024年Musk起诉OpenAI背离初心

### 3.3 2023年：董事会政变

**时间线**：
- 11月17日：董事会解雇Sam Altman
- 原因：[Ilya Sutskever](../../04-characters/deep-profiles-complete.md#ilya-sutskever)认为Altman"不够关注AI安全"
- 员工威胁集体离职（700+人签名）
- 11月21日：Altman回归，Ilya边缘化

**深层矛盾**：
- 商业化派（Altman）vs 安全派（Ilya）
- 速度派 vs 谨慎派
- 最终商业化派获胜

**[Ilya](../../04-characters/deep-profiles-complete.md#ilya-sutskever)的结局**：
- 2024年离开OpenAI
- 创立SSI（Safe Superintelligence Inc.）
- "超级对齐"成为个人信仰

---

## 四、DeepMind的独立路线

### 4.1 创立与早期

**2010年创立**：
- Demis Hassabis（DeepMind CEO）
- Shane Legg（首席科学家）
- Mustafa Suleyman（后创立Inflection AI）

**核心信念**：
- AGI可以解决所有科学问题
- 从游戏AI开始（Atari、围棋）

### 4.2 2014年被Google收购

**收购价**：6亿美元
**条件**：保持独立运营

**关键成果**：
- 2016年：AlphaGo战胜李世石
- 2017年：AlphaZero（自我学习）
- 2020年：AlphaFold（蛋白质结构预测，诺贝尔奖级）
- 2022年：Chinchilla（最优训练比例）

### 4.3 2023年与Google Brain合并

**合并原因**：
- 应对OpenAI竞争压力
- 整合Google内部AI资源
- Gemini项目启动

**文化冲突**：
- DeepMind：学术研究导向
- Google Brain：工程应用导向
- 合并后多位核心人员离职

---

## 五、关键人物关系图谱

### 5.1 恩怨局

**Hinton vs 符号主义派（Gary Marcus等）**：
- Marcus批评深度学习"没有理解"
- Hinton回怼"你不懂神经网络"
- 持续十余年的公开论战

**LeCun vs 所有人**：
- 批评OpenAI的GPT路线
- 批评Google的BERT路线
- 批评DeepMind的强化学习路线
- 唯一支持：自己的World Models

**Ilya vs Altman**：
- 从合作到决裂
- 理想主义 vs 现实主义
- 最终分道扬镳

### 5.2 联盟

**Google系**：
- Hinton → Jeff Dean、Samy Bengio
- LeCun（Meta）与Google保持距离
- DeepMind（Google）与Brain（Google）内斗

**OpenAI系**：
- Altman、Brockman、Mira Murati
- Ilya（已离开）
- 前员工创立[Anthropic](../../02-singularity/organizations/openai-internal-politics.md)（Dario Amodei等）

**创业派**：
- Transformer 8人组全员创业
- OpenAI前员工创立Anthropic、SSI等
- 大厂→创业成为主流路径

---

## 六、开源 vs 闭源：理念之争

### 6.1 开源阵营

**代表人物**：
- [Yann LeCun](../../04-characters/deep-profiles-complete.md#yann-lecun)（Meta AI，Llama开源）
- Clement Delangue（Hugging Face）
-  Stability AI（Emad Mostaque，已离职）

**核心论点**：
- 技术民主化
- 防止垄断
- 社区创新更快

### 6.2 闭源阵营

**代表人物**：
- Sam Altman（OpenAI）
- Demis Hassabis（DeepMind）
- 早期李彦宏（百度）

**核心论点**：
- 安全考虑（防止滥用）
- 商业化需要
- 质量控制

### 6.3 摇摆派

**阿里Qwen（林俊旸）**：
- 坚持开源（社区口碑）
- 面临商业化压力（组织冲突）
- 最终离职（理念不合）

**Meta（LeCun）**：
- Llama名义开源（实际有限制）
- 既想获得开源声誉，又想保持控制

---

## 七、关键洞察

1. **学术荣誉 vs 商业利益**：图灵奖得主（Hinton、LeCun、Bengio）都曾在Google/Meta，但最终学术理想与商业利益产生冲突

2. **学生背叛师门**：Ilya是Hinton的学生，但走出了一条独立道路；DeepMind创始人是Hinton的学生

3. **论文作者全员出走**：Transformer 8人全部离开Google，说明大厂难以留住顶尖人才

4. **派系斗争的本质**：不是技术之争，而是**对AI未来的不同想象**（工具 vs 生命、开放 vs 控制、速度 vs 安全）

5. **中国大厂的宿命**：在开源与闭源、理想与现实之间摇摆，最终往往是现实获胜，人才流失

---

*数据来源：学术论文、公开访谈、媒体报道*
*更新时间：2026年3月*
