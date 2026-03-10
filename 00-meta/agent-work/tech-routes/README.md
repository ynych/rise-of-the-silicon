# TechRoutesAgent 任务说明

> 负责板块: 技术路线 (`02-singularity/tech-routes/` + `01-prehistoric/`)
> 启动时间: 等待MetaAgent信号

---

## 负责范围

- `01-prehistoric/transformer-evolution.md`
- `02-singularity/tech-routes/` 所有文档
- 技术架构详解（MoE/MLA/RLHF等）
- AGI技术全景

---

## 核心任务清单

### 1. 技术文档标准化
- [ ] 统一技术术语解释深度
- [ ] 为所有技术细节补充论文/官方博客来源
- [ ] 创建术语对照表（中英文对照）

### 2. 内容去重
- [ ] 整合分散的DeepSeek技术描述（MLA/MoE/FP8）
- [ ] 整合GPT/Claude技术路线
- [ ] 建立技术主题的Single Source of Truth

### 3. 深度补充
- [ ] `transformer-evolution.md`: 补充2017-2026架构演进
- [ ] `deepseek-technical-deep-dive.md`: MLA/MoE/FP8详解
- [ ] `post-training-methods.md`: RLHF/CAI/DPO对比
- [ ] `inference-optimization.md`: vLLM/PagedAttention等

### 4. 可视化
- [ ] 创建技术路线对比表格
- [ ] 性能/成本数据表格
- [ ] 架构演进时间线（文字版）

---

## 跨板块引用规则

**你是技术细节的Single Source of Truth**

当其他Agent需要引用技术信息时：
- 只提供技术名称 + 一句话效果描述
- 提供链接到技术详解文档
- 禁止在其他板块复制详细技术解释

示例:
```markdown
DeepSeek通过[MLA架构](../02-singularity/tech-routes/deepseek-technical-deep-dive.md)实现显存优化...
```

**错误示例**（禁止）:
```markdown
DeepSeek通过MLA架构实现显存优化。MLA（Multi-head Latent Attention）
是一种低秩注意力机制，通过将Key/Value压缩到低维潜空间...
（复制500字技术细节）
```

---

## DeepSeek内容归属说明

| 内容类型 | 归属 | 你的处理方式 |
|----------|------|-------------|
| MLA/MoE/FP8技术详解 | **你** | 保留完整内容 |
| 组织故事/团队/融资 | OrgsAgent | 摘要+链接 |
| 梁文锋人物档案 | CharactersAgent | 链接引用 |
| 时间线事件 | TimelineAgent | 链接引用 |

---

## 交付物

- [ ] 标准化的技术文档集
- [ ] 术语对照表
- [ ] 去重后的技术信息架构
- [ ] 数据可视化表格

---

## 预计工时

4小时

---

## 状态

⏳ 等待MetaAgent启动信号
