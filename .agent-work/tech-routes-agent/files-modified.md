# 修改文件清单

**Agent**: TechRoutesAgent  
**日期**: 2026-03-10  
**项目**: 硅基编年史 - 技术路线板块

---

## 文件列表

### 1. transformer-evolution.md
**路径**: `/root/apps/rise-of-the-silicon/01-prehistoric/transformer-evolution.md`

**修改内容**:
- ✅ 补充自注意力机制复杂度分析（时间O(n²×d)、空间O(n²)）
- ✅ 补充Q/K/V的详细解释（查询/键/值的直观含义）
- ✅ 扩展位置编码章节：
  - 添加Sinusoidal编码的详细公式说明
  - 创建位置编码演进对比表格（Sinusoidal → RoPE → ALiBi）
  - 补充RoPE和ALiBi的数学公式与优势分析
- ✅ 重写信息来源章节，添加完整论文引用列表（含arXiv编号）
- ✅ 添加术语对照表链接

**修改性质**: 内容补充与标准化

---

### 2. deepseek-technical-deep-dive.md
**路径**: `/root/apps/rise-of-the-silicon/02-singularity/tech-routes/deepseek-technical-deep-dive.md`

**修改内容**:
- ✅ 重写参考来源章节，分类整理：
  - 核心技术论文（DeepSeek-V2/V3/R1 Technical Reports）
  - MLA相关技术文档
  - MoE架构原始论文（Shazeer et al., 2017）
  - FP8训练相关论文（NVIDIA Whitepaper）
  - 推理优化论文（vLLM, FlashAttention）
  - 成本分析行业报告
- ✅ 添加术语对照表链接

**修改性质**: 参考文献标准化

---

### 3. post-training-methods.md
**路径**: `/root/apps/rise-of-the-silicon/02-singularity/tech-routes/post-training-methods.md`

**修改内容**:
- ✅ 重写参考来源章节，添加核心论文：
  - RLHF与PPO原始论文（Ouyang et al., 2022; Schulman et al., 2017）
  - Constitutional AI论文（Bai et al., 2022）
  - DPO论文（Rafailov et al., NeurIPS 2023）
  - DPO变体论文（IPO, SimPO, Step-DPO）
  - KTO论文（Ethayarajh et al., 2024）
  - GRPO与DeepSeek-R1论文（DeepSeek-AI, 2025）
  - Process Reward Model相关论文
- ✅ 添加术语对照表链接

**修改性质**: 参考文献标准化

---

### 4. inference-optimization.md
**路径**: `/root/apps/rise-of-the-silicon/02-singularity/tech-routes/inference-optimization.md`

**修改内容**:
- ✅ 重写参考来源章节，分类整理：
  - KV Cache与注意力优化论文（PagedAttention, FlashAttention, MQA/GQA, MLA）
  - KV Cache压缩论文（H2O, StreamingLLM, SnapKV）
  - 推测解码论文（Leviathan et al., 2022; Chen et al., 2023）
  - 量化技术论文（GPTQ, AWQ, SmoothQuant, FP8）
  - 系统优化文档（vLLM, TensorRT-LLM, llama.cpp）
  - 深度分析文章
- ✅ 添加术语对照表链接

**修改性质**: 参考文献标准化

---

### 5. moe-architecture-deep-dive.md
**路径**: `/root/apps/rise-of-the-silicon/02-singularity/tech-routes/moe-architecture-deep-dive.md`

**修改内容**:
- ✅ 重写信息来源章节，添加核心论文：
  - 原始MoE论文（Jacobs et al., 1991）
  - 稀疏门控MoE论文（Shazeer et al., ICLR 2017）
  - GShard论文（Lepikhin et al., ICLR 2021）
  - Switch Transformer论文（Fedus et al., JMLR 2022）
  - 现代MoE模型论文（DeepSeek-V2/V3, Mixtral）
- ✅ 添加工程实践资源（GitHub开源实现）
- ✅ 添加术语对照表链接

**修改性质**: 参考文献标准化

---

### 6. agi-technical-landscape.md
**路径**: `/root/apps/rise-of-the-silicon/02-singularity/tech-routes/agi-technical-landscape.md`

**修改内容**:
- ✅ 附录参考资料章节添加完整引用标注：
  - 关键文献添加[官方]标签和arXiv链接
  - 关键数据报告添加[权威报告]标签
  - 关键访谈添加[权威媒体]标签
  - 中文深度分析添加[权威媒体]标签
- ✅ 添加术语对照表链接

**修改性质**: 来源标注标准化

---

## 修改统计

| 类型 | 数量 |
|------|------|
| 内容补充 | 1个文件（transformer-evolution.md） |
| 参考文献标准化 | 6个文件 |
| 添加术语表链接 | 6个文件 |

**总计**: 6个文件被修改
