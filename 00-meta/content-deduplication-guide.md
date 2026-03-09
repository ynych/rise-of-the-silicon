# 内容重复检查与去重指南

> 维护日期：2026-03-09
> 目的：解决S2问题（内容重复），建立single source of truth

---

## 🔍 已识别的重复内容

### 高优先级去重

| 主题 | 主要文档 | 重复位置 | 处理状态 |
|------|---------|---------|:--------:|
| DeepSeek技术细节 | [agi-technical-landscape.md](../02-singularity/tech-routes/agi-technical-landscape.md) | organizations/bytedance-seed-story.md | ⏳ 待处理 |
| DeepSeek成本数据 | agi-technical-landscape.md | multiple docs | ⏳ 待处理 |
| GPT-5发布时间 | [timeline-v2-iteration2.md](timeline-v2-iteration2.md) | predictions.md | ⏳ 待处理 |
| Scaling Law边界 | agi-technical-landscape.md | scaling-law-debate.md | ⏳ 待处理 |
| 芯片禁令影响 | [chip-war-comprehensive.md](../02-singularity/east-west/chip-war-comprehensive.md) | multiple docs | ⏳ 待处理 |

### 中优先级去重

| 主题 | 主要文档 | 重复位置 | 处理状态 |
|------|---------|---------|:--------:|
| Claude 5预告 | timeline-v2-iteration2.md | agi-technical-landscape.md | ⏳ 待处理 |
| MiniMax上市 | zhipu-ipo-story.md | east-west/ | ⏳ 待处理 |
| Ilya离职SSI | ilya-sutskever-profile.md | timeline-v2-iteration2.md | ⏳ 待处理 |

---

## ✅ 去重处理规范

### 原则1：Single Source of Truth

每个事实只有一个权威来源文档，其他文档通过链接引用。

```markdown
# ✅ 正确示例
DeepSeek V3的训练成本约为557.6万美元
→ 详见 [AGI技术路线全景](../02-singularity/tech-routes/agi-technical-landscape.md#scaling-law边界)

# ❌ 错误示例
DeepSeek V3的训练成本约为557.6万美元（重复完整段落）
```

### 原则2：摘要+链接

如果必须在其他文档提及，写2-3句摘要，然后链接到完整文档。

```markdown
# ✅ 正确示例
DeepSeek通过MoE架构和MLA机制实现了训练效率的极致优化，
在2048块H800上完成训练，成本仅为GPT-4的1/10。
→ [完整技术分析](../02-singularity/tech-routes/agi-technical-landscape.md)

# ❌ 错误示例
（重复500字技术细节）
```

### 原则3：版本控制

如果某主题需要多版本（如时间线v1/v2），明确标注并说明关系。

```markdown
# timeline-v1-iteration1.md
[DEPRECATED] 已合并到 timeline-v2-iteration2.md

# timeline-v2-iteration2.md
当前版本，包含22个已确认节点+8个预测节点
```

---

## 📝 主题归属表（Single Source of Truth）

| 主题类别 | 权威文档 | 其他文档引用方式 |
|---------|---------|----------------|
| AI转折点 | timeline-v2-iteration2.md | 链接到具体节点 |
| 人物档案 | kol-top100-detailed.md / 个人profile | 链接到人物 |
| 技术路线对比 | agi-technical-landscape.md | 链接到章节 |
| 大厂内部 | organizations/ 对应文档 | 链接到公司故事 |
| 国际视角 | east-west/ 对应文档 | 链接到地区 |
| 成本/性能数据 | agi-technical-landscape.md | 链接到数据表格 |
| AGI预测 | predictions.md | 链接到预测表格 |

---

## 🔧 自动化检查建议

### 手动检查清单（每次更新前）

- [ ] 新添加的内容是否已在其他文档存在？
- [ ] 是否可以通过链接引用而非复制？
- [ ] 数据/事实是否有唯一来源？
- [ ] 废弃内容是否已标注或移动？

### 关键词监控

以下关键词出现频率高，需重点检查重复：
- DeepSeek
- GPT-5 / Claude 5
- Scaling Law
- 芯片禁令 / H100
- 557.6万美元（DeepSeek成本）
- 2026年 / AGI时间预测

---

## 📊 重复内容统计

| 检查日期 | 发现重复数 | 已解决 | 待处理 |
|---------|:----------:|:------:|:------:|
| 2026-03-09 | 5 | 0 | 5 |

---

## 🎯 下一步行动计划

1. **高优先级**：统一DeepSeek技术描述，以agi-technical-landscape.md为准
2. **中优先级**：整合Scaling Law相关内容
3. **长期**：建立自动化重复检测脚本（基于关键词匹配）

---

*维护者：Kimi Claw*
*更新：2026-03-09*
