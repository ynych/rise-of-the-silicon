# 硅基编年史：AI时代转折点全景图

> 版本：v2.1（跨板块链接版）
> 更新时间：2026-03-13
> 更新内容：添加跨板块链接，整合CharactersAgent、OrgsAgent、TechRoutesAgent、GeoAgent内容

---

## 叙事核心假设

基于用户对话偏好 + 质疑修复后的框架：
- **主矛盾**：东方-西方技术主权争夺（2025年后显性化）
- **技术路线**：语言模型 + 多模态 + 具身智能 + 科学AI 并行
- **临界点**：涌现能力（规模质变）
- **奇点信号**：Gemini 3 + OpenClaw（Agent自主化）【置信度：中-高，基于用户判断】
- **矛盾模型**：多矛盾并存，不同阶段有不同矛盾的"显性化"

---

## 第一幕：史前时代（2012-2022）

### 2012.10 —— AlexNet：深度学习的黎明
**标志**：ImageNet竞赛，AlexNet以84%准确率夺冠
**技术**：双GPU训练、ReLU激活、Dropout
**关键人物**：[Alex Krizhevsky](../04-characters/kol-top100-detailed.md)、[Ilya Sutskever](../04-characters/ilya-sutskever-profile.md)、[Geoffrey Hinton](../04-characters/kol-top100-detailed.md)
**主导矛盾显性化**：个人-系统（[Hinton](../04-characters/kol-top100-detailed.md) 30年坚持 vs 学术界的质疑）
**因果链**：AlexNet → GPU计算普及 → 深度学习工业化

---

### 2016.03 —— AlphaGo：AI的公众启蒙
**标志**：[DeepMind](../02-singularity/organizations/google-deepmind-story.md) AlphaGo 4:1 战胜李世石
**技术**：深度强化学习 + 蒙特卡洛树搜索
**关键人物**：[Demis Hassabis](../04-characters/kol-top100-detailed.md)、[David Silver](../04-characters/kol-top100-detailed.md)
**主导矛盾显性化**：理想-商业（[DeepMind](../02-singularity/organizations/google-deepmind-story.md)的AGI使命 vs [Google](../02-singularity/organizations/)的商业化压力）
**被忽视的重要性**：这是AI首次在复杂智力游戏中击败人类顶尖选手，公众认知转折点
**因果链**：AlphaGo → AI全民关注 → 投资热潮 → 人才涌入

**技术演进背景**：
AlphaGo的胜利并非单一算法的颠覆，而是三种成熟技术的工程整合。深度卷积神经网络负责评估棋局形势，蒙特卡洛树搜索提供系统性探索，而强化学习则让模型通过自我对弈持续进化。这三项技术在此之前均已独立发展多年：CNN在2012年ImageNet竞赛中已证明其价值，MCTS在围棋AI中应用已久，强化学习更是贯穿[DeepMind](../02-singularity/organizations/google-deepmind-story.md)早期研究。AlphaGo的突破性在于将三者无缝融合，以工程化的方式解决了19路围棋这一复杂度远超国际象棋的难题。

---

### 2017.06 —— Transformer：现代AI的基石
**标志**：[Google](../02-singularity/organizations/)发表"[Attention Is All You Need](../02-singularity/tech-routes/transformer-evolution.md)"
**技术**：[自注意力机制](../02-singularity/tech-routes/transformer-evolution.md)、并行计算
**关键人物**：[Ashish Vaswani](../04-characters/kol-top100-detailed.md)等8人（后全部离职创业）
**主导矛盾显性化**：个人-系统（8位作者离职预示大厂创新困境）
**意外性**：作者们没想到会如此成功，[Google](../02-singularity/organizations/)也未充分商业化
**因果链**：[Transformer](../02-singularity/tech-routes/transformer-evolution.md) → [GPT](../02-singularity/tech-routes/transformer-evolution.md)/[BERT](../02-singularity/tech-routes/transformer-evolution.md)/T5三条路线 → 现代大模型时代

---

### 2020.05 —— GPT-3：规模质变
**标志**：[OpenAI](../02-singularity/organizations/openai-internal-politics.md)发布[GPT-3](../02-singularity/tech-routes/transformer-evolution.md)，1750亿参数
**技术**：[涌现能力](../02-singularity/tech-routes/scaling-laws.md)（in-context learning）
**主导矛盾显性化**：[开放-封闭](../02-singularity/east-west/open-vs-closed.md)（[GPT-3](../02-singularity/tech-routes/transformer-evolution.md) API化但不开源，引发争议）
**因果链**：[GPT-3](../02-singularity/tech-routes/transformer-evolution.md)能力显现 → 产品化思考 → [ChatGPT](../02-singularity/tech-routes/transformer-evolution.md)立项

---

### 2021.07 —— AlphaFold 2：科学AI的里程碑
**标志**：破解蛋白质折叠难题，CASP14竞赛接近原子精度
**关键人物**：[Demis Hassabis](../04-characters/kol-top100-detailed.md)、[John Jumper](../04-characters/kol-top100-detailed.md)
**被忽视的重要性**：
- 证明AI可解决基础科学问题，非只是模式匹配
- 2024年诺贝尔化学奖（[Hassabis](../04-characters/kol-top100-detailed.md)获奖）
- 与语言模型路线并行，[科学AI](../02-singularity/tech-routes/)独立发展
**因果链**：[AlphaFold](../02-singularity/organizations/google-deepmind-story.md) → 结构生物学革命 → 药物发现加速

---

### 2022.08 —— Stable Diffusion：AIGC视觉爆发
**标志**：Stability AI发布Stable Diffusion，[开源](../02-singularity/east-west/open-source-movement.md)图像生成模型
**技术**：[Latent Diffusion](../02-singularity/tech-routes/multimodal-architecture.md)、CLIP
**关键人物**：[Emad Mostaque](../04-characters/kol-top100-detailed.md)（Stability AI创始人）
**主导矛盾显性化**：[开放-封闭](../02-singularity/east-west/open-vs-closed.md)（[开源](../02-singularity/east-west/open-source-movement.md)vs闭源首次在视觉领域激烈对抗）
**因果链**：Stable Diffusion → Midjourney/DALL-E竞争 → [AIGC](../02-singularity/tech-routes/multimodal-architecture.md)产业爆发

---

## 第二幕：奇点临近（2022-2030）

### 2022.11 —— ChatGPT：消费级AI元年
**标志**：[OpenAI](../02-singularity/organizations/openai-internal-politics.md)发布[ChatGPT](../02-singularity/tech-routes/transformer-evolution.md)，2个月用户破1亿（史上最快）
**技术**：[GPT-3.5](../02-singularity/tech-routes/transformer-evolution.md) + [RLHF](../02-singularity/tech-routes/post-training-methods.md)
**关键人物**：[Sam Altman](../04-characters/kol-top100-detailed.md)、[John Schulman](../04-characters/kol-top100-detailed.md)
**意外性**：[OpenAI](../02-singularity/organizations/openai-internal-politics.md)内部认为是"半成品"
**主导矛盾显性化**：理想-商业（使命 vs 用户增长压力）
**因果链**：[ChatGPT](../02-singularity/tech-routes/transformer-evolution.md)引爆 → 全球大厂跟进 → 人才/算力/数据战争

**技术演进背景**：
[ChatGPT](../02-singularity/tech-routes/transformer-evolution.md)并非凭空诞生的奇迹。其根基可追溯至2020年[GPT-3](../02-singularity/tech-routes/transformer-evolution.md)的[涌现能力](../02-singularity/tech-routes/scaling-laws.md)发现——1750亿参数模型首次展现出上下文学习能力。此后两年，[OpenAI](../02-singularity/organizations/openai-internal-politics.md)团队在[GPT-3.5](../02-singularity/tech-routes/transformer-evolution.md)上进行迭代优化，并引入[RLHF](../02-singularity/tech-routes/post-training-methods.md)（人类反馈强化学习）技术，将冷冰冰的补全模型转化为可对话的助手。这是技术积累与产品化思维碰撞的结果：[GPT-3](../02-singularity/tech-routes/transformer-evolution.md)证明了"规模可以催生能力"，而[ChatGPT](../02-singularity/tech-routes/transformer-evolution.md)证明了"对齐可以让能力可用"。

---

### 2023.02 —— 百度文心一言：中国大模型起步
**标志**：[百度](../02-singularity/organizations/baidu-internal-struggle.md)发布[文心一言](../02-singularity/organizations/baidu-internal-struggle.md)，国内首个[ChatGPT](../02-singularity/tech-routes/transformer-evolution.md)竞品
**关键人物**：[李彦宏](../04-characters/kol-top100-detailed.md)
**主导矛盾显性化**：[东方-西方](../02-singularity/east-west/asia-ai-players.md)（中国追赶开始）
**问题与局限**：
- 发布匆忙，能力差距明显
- 暴露国内算力/数据/人才差距
- [王海峰](../04-characters/kol-top100-detailed.md)团队内部调整，边缘化开始
**因果链**：[文心一言](../02-singularity/organizations/baidu-internal-struggle.md) → [阿里](../02-singularity/organizations/alibaba-qwen-story.md)/[腾讯](../02-singularity/organizations/tencent-hunyuan-story.md)/[字节](../02-singularity/organizations/bytedance-seed-story.md)跟进 → 中国AI六小虎混战

---

### 2023.03 —— GPT-4：多模态里程碑
**标志**：[GPT-4](../02-singularity/tech-routes/transformer-evolution.md)发布，律师考试前10%水平
**主导矛盾显性化**：发展-风险（[安全团队](../02-singularity/tech-routes/ai-safety-superalignment.md)担忧被忽视，为政变埋下伏笔）
**因果链**：[GPT-4](../02-singularity/tech-routes/transformer-evolution.md)能力跃升 → 社会恐慌 → 监管压力 → [安全派](../02-singularity/tech-routes/ai-safety-superalignment.md)试图反击

---

### 2023.07 —— Llama 2开源：[Meta](../02-singularity/organizations/)的反击
**标志**：[Meta](../02-singularity/organizations/)发布[Llama 2](../02-singularity/east-west/open-source-movement.md)，可商用[开源](../02-singularity/east-west/open-source-movement.md)
**关键人物**：[Mark Zuckerberg](../04-characters/kol-top100-detailed.md)、[Yann LeCun](../04-characters/kol-top100-detailed.md)
**主导矛盾显性化**：[开放-封闭](../02-singularity/east-west/open-vs-closed.md)（[开源](../02-singularity/east-west/open-source-movement.md)阵营正式对抗[OpenAI](../02-singularity/organizations/openai-internal-politics.md)闭源垄断）
**因果链**：[Llama 2](../02-singularity/east-west/open-source-movement.md) → [开源](../02-singularity/east-west/open-source-movement.md)生态爆发 → 降低AI应用门槛 → 创业公司机会窗口

---

### 2023.11 —— OpenAI政变：安全派的溃败
**标志**：[OpenAI](../02-singularity/organizations/openai-internal-politics.md)董事会解雇[Sam Altman](../04-characters/kol-top100-detailed.md)，48小时后回归
**关键人物**：[Ilya Sutskever](../04-characters/ilya-sutskever-profile.md)（政变发起者）、[Satya Nadella](../04-characters/kol-top100-detailed.md)（[微软](../02-singularity/organizations/)介入）
**多重矛盾集中爆发**：
- 理想-商业（非营利使命 vs 盈利压力）
- 发展-风险（速度 vs [安全](../02-singularity/tech-routes/ai-safety-superalignment.md)）
- 个人-系统（[Ilya](../04-characters/ilya-sutskever-profile.md) vs 董事会/[Altman](../04-characters/kol-top100-detailed.md)）
**结果**：[安全派](../02-singularity/tech-routes/ai-safety-superalignment.md)边缘化，速度优先全面胜出
**后续**：[Superalignment团队](../02-singularity/tech-routes/ai-safety-superalignment.md)解散，行业"安全清洗"

---

### 2023.12 —— Mistral 6.4亿美元融资：[欧洲AI](../02-singularity/east-west/europe-ai-rising.md)崛起
**标志**：[Mistral AI](../02-singularity/east-west/europe-ai-rising.md)完成6.4亿美元B轮融资，估值60亿美元
**关键人物**：[Arthur Mensch](../04-characters/kol-top100-detailed.md)（CEO）、[Guillaume Lample](../04-characters/kol-top100-detailed.md)、[Timothée Lacroix](../04-characters/kol-top100-detailed.md)
**主导矛盾显性化**：多极化（[欧洲](../02-singularity/east-west/europe-ai-rising.md)寻求AI主权，不依赖[中美](../02-singularity/east-west/asia-ai-players.md)）
**战略意义**：
- [欧洲](../02-singularity/east-west/europe-ai-rising.md)首个具有全球竞争力的大模型公司
- [开源](../02-singularity/east-west/open-source-movement.md)策略（Mistral 7B/Mixtral）对抗[OpenAI](../02-singularity/organizations/openai-internal-politics.md)闭源
- 马克龙"第三条道路"的产业支撑
**因果链**：[Mistral](../02-singularity/east-west/europe-ai-rising.md)崛起 → [欧洲AI](../02-singularity/east-west/europe-ai-rising.md)生态激活 → 全球AI多极化加速

### 2024.06 —— Claude 3.5：安全路线的证明
**标志**：[Anthropic](../02-singularity/organizations/)发布Claude 3.5 Sonnet，多项任务超越[GPT-4](../02-singularity/tech-routes/transformer-evolution.md)
**关键人物**：[Dario Amodei](../04-characters/dario-amodei-profile.md)、[Daniela Amodei](../04-characters/kol-top100-detailed.md)
**主导矛盾显性化**：理想-商业的另一解（[安全](../02-singularity/tech-routes/ai-safety-superalignment.md)与商业可以兼得）
**对比价值**：7位联合创始人全员在岗 vs [OpenAI](../02-singularity/organizations/openai-internal-politics.md)内斗
**因果链**：Claude成功 → [Anthropic](../02-singularity/organizations/)估值飙升 → 但未能改变行业整体方向

---

### 2024.09 —— Qwen 2.5：中国开源全球突围
**标志**：[阿里](../02-singularity/organizations/alibaba-qwen-story.md)发布[Qwen 2.5](../02-singularity/organizations/alibaba-qwen-story.md)，全球开发者广泛采用
**关键人物**：[林俊旸](../04-characters/kol-top100-detailed.md)（技术负责人，开源推动者）
**主导矛盾显性化**：[开放-封闭](../02-singularity/east-west/open-vs-closed.md)（中国走[开源](../02-singularity/east-west/open-source-movement.md)路线突破封锁）
**被忽视的重要性**：
- 首次有中国模型在全球[开源](../02-singularity/east-west/open-source-movement.md)社区获得广泛认可
- [开源](../02-singularity/east-west/open-source-movement.md)作为[地缘政治](../02-singularity/east-west/)策略（对抗[美国](../02-singularity/east-west/)闭源霸权）
**因果链**：[Qwen](../02-singularity/organizations/alibaba-qwen-story.md)开源 → 全球开发者采用 → [中国AI](../02-singularity/east-west/asia-ai-players.md)软实力提升

---

### 2024.12 —— Sora：视频生成突破
**标志**：[OpenAI](../02-singularity/organizations/openai-internal-politics.md)发布[Sora](../02-singularity/tech-routes/multimodal-architecture.md)，文本生成高质量视频
**技术**：[Diffusion Transformer](../02-singularity/tech-routes/multimodal-architecture.md)、时空联合建模
**被忽视的重要性**：
- [多模态](../02-singularity/tech-routes/multimodal-architecture.md)能力质变，从语言到视频
- [世界模型](../02-singularity/tech-routes/)(World Models)路线的验证
- [Yann LeCun](../04-characters/kol-top100-detailed.md)长期推动的方向
**因果链**：[Sora](../02-singularity/tech-routes/multimodal-architecture.md) → 视频生成产业爆发 → 影视/游戏行业冲击

---

### 2025.01 —— DeepSeek-R1：东方破局的标志性时刻
**标志**：[DeepSeek](../02-singularity/organizations/deepseek-organization.md)-[R1](../02-singularity/tech-routes/deepseek-technical-deep-dive.md)发布，557万美元成本，性能比肩[GPT-4](../02-singularity/tech-routes/transformer-evolution.md)
**技术**：[MLA](../02-singularity/tech-routes/deepseek-technical-deep-dive.md)、[DeepSeekMoE](../02-singularity/tech-routes/moe-architecture-deep-dive.md)、[FP8混合精度](../02-singularity/tech-routes/deepseek-technical-deep-dive.md)
**关键人物**：[梁文锋](../04-characters/liang-wenfeng-profile.md)
**主导矛盾显性化**：
- [东方-西方](../02-singularity/east-west/asia-ai-players.md)（算法弥补硬件，打破[封锁](../02-singularity/east-west/chip-war.md)）
- [开放-封闭](../02-singularity/east-west/open-vs-closed.md)（彻底[开源](../02-singularity/east-west/open-source-movement.md)，打乱闭源格局）
- 个人-系统另类解（无商业化压力、扁平管理）
**不是单一高潮，而是渐进积累的爆发**：
- 2023[文心](../02-singularity/organizations/baidu-internal-struggle.md)起步 → 2024 [Qwen](../02-singularity/organizations/alibaba-qwen-story.md)全球突围 → 2025 [DeepSeek](../02-singularity/organizations/deepseek-organization.md)破局
**因果链**：[DeepSeek](../02-singularity/organizations/deepseek-organization.md)突破 → 全球重新审视[中国AI](../02-singularity/east-west/asia-ai-players.md) → [开源](../02-singularity/east-west/open-source-movement.md)力量崛起

**技术演进背景**：
[DeepSeek](../02-singularity/organizations/deepseek-organization.md)-[R1](../02-singularity/tech-routes/deepseek-technical-deep-dive.md)的爆发是系统工程持续优化的集大成者。2024年5月，团队率先提出[MLA](../02-singularity/tech-routes/deepseek-technical-deep-dive.md)（多头潜在注意力）架构，将KV缓存压缩至传统模型的1/20；[DeepSeekMoE](../02-singularity/tech-routes/moe-architecture-deep-dive.md)架构实现了专家路由的精细化；[FP8混合精度](../02-singularity/tech-routes/deepseek-technical-deep-dive.md)训练则在保证精度的前提下大幅降低显存占用。这些创新并非单点突破，而是围绕"算法效率弥补硬件劣势"这一核心思路的系统工程。当所有优化叠加，557万美元的训练成本不再是天方夜谭，而是可复现的技术路径。

---

## 第三幕：预测转折点（2025-2030）

### 2025.06 —— AI上半场/下半场分界（预测，置信度：中）
**标志**：从"[训练Scaling](../02-singularity/tech-routes/scaling-laws.md)"转向"[推理优化](../02-singularity/tech-routes/inference-optimization.md)"+"应用爆发"
**技术焦点**：
- 训练：追求效率而非规模
- 推理：[FlashAttention](../02-singularity/tech-routes/inference-optimization.md)、[PagedAttention](../02-singularity/tech-routes/inference-optimization.md)、[Speculative Decoding](../02-singularity/tech-routes/inference-optimization.md)
- 应用：从基础模型竞赛到场景落地
**关键问题**：谁是下半场的赢家？（应用层创业公司 vs 大厂）
**因果链**：[DeepSeek](../02-singularity/organizations/deepseek-organization.md)证明效率重要性 → [推理成本](../02-singularity/tech-routes/inference-optimization.md)骤降 → 应用门槛降低 → 创业窗口

---

### 2026 —— 记忆突破（预测，置信度：中高）
**标志**：百万级[上下文窗口](../02-singularity/tech-routes/inference-optimization.md)普及，个人记忆系统实用化
**技术趋势**：
- [上下文窗口](../02-singularity/tech-routes/inference-optimization.md)：从128K到1M+（基于当前增长趋势外推）
- 记忆架构：外部记忆库、个性化持久状态
**关键问题**：隐私与便利的边界？
**主导矛盾显性化**：个人-系统（个人数据控制权成为新战场）

---

### 2026 —— Copilot → Autopilot跃迁（预测，置信度：中，基于用户判断）
**标志**：AI从"辅助人类"到"自主完成复杂任务"
**用户判断的奇点信号**：[Gemini 3](../02-singularity/tech-routes/agent-architecture.md) + [OpenClaw](../02-singularity/tech-routes/agent-architecture.md)
**技术**：[Agent架构](../02-singularity/tech-routes/agent-architecture.md)、工具调用、自主决策、多步骤规划
**关键问题**：人类还有多少价值？
**社会影响**：从"人机协作"到"人机分权"，就业结构调整

---

### 2026-2027 —— 具身智能实用化（预测，置信度：中）
**标志**：大模型+机器人结合，实用化场景落地
**技术**：[VLA](../02-singularity/tech-routes/multimodal-architecture.md)（Vision-Language-Action）模型、端到端机器人学习
**关键玩家**：Tesla Optimus、[Figure AI](../02-singularity/organizations/)、[Physical Intelligence](../02-singularity/organizations/)
**关键问题**：劳动力替代开始？
**与语言模型的关系**：[AGI](../02-singularity/tech-routes/agi-technical-landscape.md)是否必须具身？还是独立路线？

---

### 2027 —— AI Coding达到专业工程师水平（预测，置信度：中高）
**标志**：AI独立完成中型软件项目，代码质量通过同行评审
**技术趋势**：基于当前GitHub Copilot、[Cursor](../02-singularity/tech-routes/agent-architecture.md)等工具能力外推
**关键问题**：程序员职业是否消失？
**社会影响**：首个被大规模替代的知识工作者群体，教育体系质疑

---

### 2027 —— 世界模型验证（预测，置信度：中）
**标志**：AI具备物理世界理解能力，可预测物理交互结果
**技术路线**：[Yann LeCun](../04-characters/kol-top100-detailed.md)长期推动的[World Models](../02-singularity/tech-routes/)
**关键问题**：是否验证[LeCun](../04-characters/kol-top100-detailed.md)路线优于[GPT路线](../02-singularity/tech-routes/transformer-evolution.md)？
**叙事价值**：学术路线之争的终极验证

---

### 2028 —— 群体智能（Multi-Agent协作）（预测，置信度：中低）
**标志**：多个AI [Agent](../02-singularity/tech-routes/agent-architecture.md)协作完成复杂任务，涌现集体智能
**技术**：[多智能体系统](../02-singularity/tech-routes/agent-architecture.md)、协作协议、涌现行为
**关键问题**：群体智能是否有自我意识？
**可能是[AGI](../02-singularity/tech-routes/agi-technical-landscape.md)的最后一块拼图**

---

## 第四幕：AGI爆发（2030+）

### 2030 —— 技术奇点（预测，置信度：中，基于用户判断）
**标志**：[AGI](../02-singularity/tech-routes/agi-technical-landscape.md)系统全面超越人类智能
**用户判断的信号**：
- [Gemini 3](../02-singularity/tech-routes/agent-architecture.md) + [OpenClaw](../02-singularity/tech-routes/agent-architecture.md)（[Agent](../02-singularity/tech-routes/agent-architecture.md)临界点）已在此之前发生
- 经济系统因AI发生根本性重构

**核心问题**：
- 人类是否还能控制？
- 财富和权力如何分配？
- 什么是"人"的定义？

---

## 矛盾演进：多矛盾并存，显性化轮转

| 阶段 | 显性化主导矛盾 | 并存矛盾 |
|------|----------------|----------|
| 2012-2016 | 个人-系统（[Hinton](../04-characters/kol-top100-detailed.md)的坚持） | 研究 vs 应用 |
| 2016-2020 | 理想-商业（[DeepMind](../02-singularity/organizations/google-deepmind-story.md) Mission vs [Google](../02-singularity/organizations/)） | 个人-系统 |
| 2020-2022 | [开放-封闭](../02-singularity/east-west/open-vs-closed.md)（[开源](../02-singularity/east-west/open-source-movement.md)vs闭源争论） | 理想-商业 |
| 2022-2023 | 理想-商业（[OpenAI](../02-singularity/organizations/openai-internal-politics.md)使命变味） | 发展-风险 |
| 2023-2025 | 发展-风险 → 速度胜出 | 理想-商业 |
| 2025-2030 | **[东方-西方](../02-singularity/east-west/asia-ai-players.md)**（主矛盾显性化） | [开放-封闭](../02-singularity/east-west/open-vs-closed.md)、个人-系统 |
| 2030+ | 人类 vs AI（存在性） | - |

---

## 关键人物命运线（平衡视角）

| 人物 | 代表路线 | 2012-2022 | 2022-2025 | 2025-2030 | 象征意义 |
|------|----------|-----------|-----------|-----------|----------|
| **[Geoffrey Hinton](../04-characters/kol-top100-detailed.md)** | 学术奠基 | 深度学习复兴 | 安全警告者 | - | 先知与内疚 |
| **[Yann LeCun](../04-characters/kol-top100-detailed.md)** | [World Models](../02-singularity/tech-routes/) | CNN奠基 | 批评[GPT路线](../02-singularity/tech-routes/transformer-evolution.md) | 路线验证？ | 学术坚持 |
| **[Sam Altman](../04-characters/kol-top100-detailed.md)** | 商业现实 | 幕后推手 | 全球AI领袖 | IPO推动者 | 商业战胜理想 |
| **[Ilya Sutskever](../04-characters/ilya-sutskever-profile.md)** | 理想主义 | 技术天才 | 政变失败者 | SSI创始人 | 理想主义的代价 |
| **[Dario Amodei](../04-characters/dario-amodei-profile.md)** | 安全平衡 | [OpenAI](../02-singularity/organizations/openai-internal-politics.md)研究 | [Anthropic](../02-singularity/organizations/)创始人 | 安全路线证明 | 理想与商业兼得 |
| **[Satya Nadella](../04-characters/kol-top100-detailed.md)** | 平台战略 | [Azure](../02-singularity/organizations/)转型 | [OpenAI](../02-singularity/organizations/openai-internal-politics.md)最大金主 | AI平台霸主 | 战略耐心 |
| **[梁文锋](../04-characters/liang-wenfeng-profile.md)** | [东方](../02-singularity/east-west/asia-ai-players.md)突围 | 量化交易 | [DeepSeek](../02-singularity/organizations/deepseek-organization.md)破局 | ? | 算法战胜硬件 |
| **[李彦宏](../04-characters/kol-top100-detailed.md)** | 中国跟随 | - | [文心一言](../02-singularity/organizations/baidu-internal-struggle.md) | 被迫[开源](../02-singularity/east-west/open-source-movement.md) | 跟随者的困境 |
| **[张一鸣](../04-characters/kol-top100-detailed.md)** | 应用落地 | 推荐算法 | [字节](../02-singularity/organizations/bytedance-seed-story.md)AI布局 | [豆包](../02-singularity/organizations/bytedance-seed-story.md)规模化 | 数据飞轮 |
| **[黄仁勋](../04-characters/jensen-huang-profile.md)** | 算力霸权 | [CUDA](../02-singularity/tech-routes/inference-optimization.md)布局 | 左右为难 | ? | [地缘](../02-singularity/east-west/chip-war.md)夹缝中的商人 |
| **[Demis Hassabis](../04-characters/kol-top100-detailed.md)** | [科学AI](../02-singularity/organizations/google-deepmind-story.md) | [AlphaGo](../02-singularity/organizations/google-deepmind-story.md)/[AlphaFold](../02-singularity/organizations/google-deepmind-story.md) | 诺贝尔奖 | ? | 科学vs商业 |
| **[Mark Zuckerberg](../04-characters/kol-top100-detailed.md)** | [开源](../02-singularity/east-west/open-source-movement.md)对抗 | VR布局 | [Llama](../02-singularity/east-west/open-source-movement.md)开源 | ? | 用[开源](../02-singularity/east-west/open-source-movement.md)对抗垄断 |
| **[Arthur Mensch](../04-characters/kol-top100-detailed.md)** | [欧洲](../02-singularity/east-west/europe-ai-rising.md)突围 | - | [Mistral](../02-singularity/east-west/europe-ai-rising.md)创立 | ? | [欧洲AI](../02-singularity/east-west/europe-ai-rising.md)主权 |

---

## 技术维度：四条并行路线

| 路线 | 代表 | 关键节点 | 与[AGI](../02-singularity/tech-routes/agi-technical-landscape.md)关系 |
|------|------|----------|-----------|
| **[语言模型](../02-singularity/tech-routes/transformer-evolution.md)** | [OpenAI](../02-singularity/organizations/openai-internal-politics.md)、[Anthropic](../02-singularity/organizations/) | [GPT-4](../02-singularity/tech-routes/transformer-evolution.md)、Claude 3.5 | 当前主流 |
| **[多模态统一](../02-singularity/tech-routes/multimodal-architecture.md)** | [OpenAI](../02-singularity/organizations/openai-internal-politics.md)（[Sora](../02-singularity/tech-routes/multimodal-architecture.md)）、[Google](../02-singularity/organizations/) | [Sora](../02-singularity/tech-routes/multimodal-architecture.md)、[Gemini](../02-singularity/tech-routes/multimodal-architecture.md) | 感官能力 |
| **[具身智能](../02-singularity/tech-routes/)** | Tesla、[Figure AI](../02-singularity/organizations/) | Optimus、端到端机器人 | 物理交互 |
| **[科学AI](../02-singularity/tech-routes/)** | [DeepMind](../02-singularity/organizations/google-deepmind-story.md) | [AlphaFold](../02-singularity/organizations/google-deepmind-story.md)、材料发现 | 推理能力 |

**关键问题**：[AGI](../02-singularity/tech-routes/agi-technical-landscape.md)是四条路线的融合，还是某一条单一路线的终点？

---

## 预测置信度汇总

| 预测 | 时间 | 置信度 | 依据 |
|------|:----:|:------:|------|
| 上半场/下半场分界 | 2025.06 | 中 | 趋势外推（[DeepSeek](../02-singularity/organizations/deepseek-organization.md)后效率优先） |
| 记忆突破 | 2026 | 中高 | 趋势外推（上下文窗口持续增长） |
| Copilot→Autopilot | 2026 | 中 | 用户判断（[Gemini 3](../02-singularity/tech-routes/agent-architecture.md) + [OpenClaw](../02-singularity/tech-routes/agent-architecture.md)） |
| 具身智能实用化 | 2026-2027 | 中 | 技术进展（[VLA模型](../02-singularity/tech-routes/multimodal-architecture.md)成熟） |
| AI Coding专业级 | 2027 | 中高 | 趋势外推（Copilot能力持续提升） |
| 世界模型验证 | 2027 | 中 | 学术路线（[LeCun](../04-characters/kol-top100-detailed.md)长期推动） |
| 群体智能 | 2028 | 中低 | 推测（[Agent](../02-singularity/tech-routes/agent-architecture.md)协作趋势） |
| 奇点 | 2030 | 中 | 用户判断 + 综合趋势 |

---

## 信息来源

### 来源分级说明
- **[官方]**: 公司官方公告、论文、博客
- **[权威媒体]**: 知名科技媒体(Reuters, Bloomberg, CNBC, Nature等)
- **[多方交叉验证]**: 3个以上独立信源确认
- **[推测]**: 基于公开信息的合理推断

### 第一幕：史前时代

#### AlexNet (2012.10)
- [官方] 论文: "ImageNet Classification with Deep Convolutional Neural Networks" (NIPS 2012) - [Alex Krizhevsky](../04-characters/kol-top100-detailed.md), [Ilya Sutskever](../04-characters/ilya-sutskever-profile.md), [Geoffrey Hinton](../04-characters/kol-top100-detailed.md)
- [官方] ImageNet LSVRC-2012竞赛结果 (Top-5错误率15.3%，第二名26.2%)
- [权威媒体] Computer History Museum (2025年3月发布源代码)

#### AlphaGo (2016.03)
- [官方] [DeepMind](../02-singularity/organizations/google-deepmind-story.md)官方博客
- [权威媒体] Nature (2016-03-15)
- [权威媒体] The Verge (2016-03-09)

#### [Transformer](../02-singularity/tech-routes/transformer-evolution.md) (2017.06)
- [官方] [Google](../02-singularity/organizations/)论文: "Attention Is All You Need"
- [官方] 作者: [Ashish Vaswani](../04-characters/kol-top100-detailed.md)等8人([Google](../02-singularity/organizations/) Brain & Research)

#### [GPT-3](../02-singularity/tech-routes/transformer-evolution.md) (2020.05)
- [官方] [OpenAI](../02-singularity/organizations/openai-internal-politics.md)官方博客
- [官方] 参数量: 1750亿参数

#### [AlphaFold 2](../02-singularity/organizations/google-deepmind-story.md) (2021.07)
- [官方] [DeepMind](../02-singularity/organizations/google-deepmind-story.md)官方发布
- [官方] CASP14竞赛结果
- [权威媒体] 2024年诺贝尔化学奖([Hassabis](../04-characters/kol-top100-detailed.md)获奖)

#### Stable Diffusion (2022.08)
- [官方] Stability AI官方发布

### 第二幕：奇点临近

#### [ChatGPT](../02-singularity/tech-routes/transformer-evolution.md) (2022.11)
- [官方] [OpenAI](../02-singularity/organizations/openai-internal-politics.md)官方发布 (2022年11月30日)
- [权威媒体] Reuters: 5天用户破100万，2个月破1亿

#### [百度文心一言](../02-singularity/organizations/baidu-internal-struggle.md) (2023.02)
- [官方] [百度](../02-singularity/organizations/baidu-internal-struggle.md)官方发布

#### [GPT-4](../02-singularity/tech-routes/transformer-evolution.md) (2023.03)
- [官方] [OpenAI](../02-singularity/organizations/openai-internal-politics.md)官方发布
- [权威媒体] 澎湃新闻、科学网

#### [Llama 2](../02-singularity/east-west/open-source-movement.md)开源 (2023.07)
- [官方] [Meta](../02-singularity/organizations/)官方发布

#### [OpenAI](../02-singularity/organizations/openai-internal-politics.md)政变 (2023.11)
- [权威媒体] CNBC、Reuters、36氪
- [多方交叉验证] 时间线: 11月17日解雇，48小时后回归

#### [Mistral](../02-singularity/east-west/europe-ai-rising.md)融资 (2023.12)
- [权威媒体] Reuters, Bloomberg: B轮6.4亿美元，估值60亿美元

#### [Claude 3.5](../02-singularity/organizations/) (2024.06)
- [官方] [Anthropic](../02-singularity/organizations/)官方发布

#### [Qwen 2.5](../02-singularity/organizations/alibaba-qwen-story.md) (2024.09)
- [官方] [阿里](../02-singularity/organizations/alibaba-qwen-story.md)官方发布

#### [Sora](../02-singularity/tech-routes/multimodal-architecture.md) (2024.12)
- [官方] [OpenAI](../02-singularity/organizations/openai-internal-politics.md)官方发布

#### [DeepSeek-R1](../02-singularity/tech-routes/deepseek-technical-deep-dive.md) (2025.01)
- [官方] [DeepSeek](../02-singularity/organizations/deepseek-organization.md)官方发布
- [官方] [DeepSeek-V3](../02-singularity/tech-routes/deepseek-technical-deep-dive.md)技术报告
- [权威媒体] 36氪、新浪财经

### 第三幕：预测转折点

#### 预测置信度说明
| 置信度 | 含义 | 数量 |
|:------:|------|:----:|
| 中高 | 基于明确趋势外推 | 3 |
| 中 | 基于用户判断或技术进展 | 4 |
| 中低 | 基于推测和趋势 | 1 |

---

## 跨板块链接索引

### 人物链接 ([CharactersAgent](../04-characters/))
- [Ilya Sutskever](../04-characters/ilya-sutskever-profile.md) - OpenAI前首席科学家，政变发起者
- [Sam Altman](../04-characters/kol-top100-detailed.md) - OpenAI CEO
- [梁文锋](../04-characters/liang-wenfeng-profile.md) - DeepSeek创始人
- [黄仁勋](../04-characters/jensen-huang-profile.md) - NVIDIA CEO
- [李彦宏](../04-characters/kol-top100-detailed.md) - 百度创始人
- [张一鸣](../04-characters/kol-top100-detailed.md) - 字节跳动创始人
- [Dario Amodei](../04-characters/dario-amodei-profile.md) - Anthropic联合创始人
- [Demis Hassabis](../04-characters/kol-top100-detailed.md) - DeepMind CEO
- [Yann LeCun](../04-characters/kol-top100-detailed.md) - Meta首席AI科学家
- [Mark Zuckerberg](../04-characters/kol-top100-detailed.md) - Meta创始人
- [更多人物](../04-characters/kol-top100-detailed.md)

### 组织链接 ([OrgsAgent](../02-singularity/organizations/))
- [OpenAI](../02-singularity/organizations/openai-internal-politics.md) - ChatGPT/GPT-4开发者
- [DeepSeek](../02-singularity/organizations/deepseek-organization.md) - DeepSeek-R1开发者
- [百度](../02-singularity/organizations/baidu-internal-struggle.md) - 文心一言开发者
- [阿里](../02-singularity/organizations/alibaba-qwen-story.md) - Qwen开发者
- [腾讯](../02-singularity/organizations/tencent-hunyuan-story.md) - 混元开发者
- [字节跳动](../02-singularity/organizations/bytedance-seed-story.md) - Seed/豆包开发者
- [Google/DeepMind](../02-singularity/organizations/google-deepmind-story.md) - Transformer/AlphaGo开发者
- [更多组织对比](../02-singularity/organizations/org-structure-comparison.md)

### 技术链接 ([TechRoutesAgent](../02-singularity/tech-routes/))
- [Transformer架构](../02-singularity/tech-routes/transformer-evolution.md)
- [GPT系列](../02-singularity/tech-routes/transformer-evolution.md)
- [DeepSeek技术深度](../02-singularity/tech-routes/deepseek-technical-deep-dive.md)
- [MoE架构](../02-singularity/tech-routes/moe-architecture-deep-dive.md)
- [推理优化](../02-singularity/tech-routes/inference-optimization.md)
- [Agent架构](../02-singularity/tech-routes/agent-architecture.md)
- [多模态架构](../02-singularity/tech-routes/multimodal-architecture.md)
- [Scaling Laws](../02-singularity/tech-routes/scaling-laws.md)
- [AGI技术全景](../02-singularity/tech-routes/agi-technical-landscape.md)

### 地缘政治链接 ([GeoAgent](../02-singularity/east-west/))
- [芯片战争](../02-singularity/east-west/chip-war.md)
- [开源vs闭源](../02-singularity/east-west/open-vs-closed.md)
- [开源运动](../02-singularity/east-west/open-source-movement.md)
- [亚洲AI玩家](../02-singularity/east-west/asia-ai-players.md)
- [欧洲AI崛起](../02-singularity/east-west/europe-ai-rising.md)

---

*版本：v2.1（跨板块链接版）*
*更新时间：2026-03-13*
*链接添加：TimelineAgent*
