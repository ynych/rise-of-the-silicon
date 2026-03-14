# 跨板块内容仲裁规则

> 版本: v1.0  
> 制定者: MetaAgent  
> 生效日期: 2026-03-10

---

## 核心原则

### 1. Single Source of Truth (SSOT)
每个主题有且只有一个权威归属Agent，其他Agent只能通过链接引用，禁止复制内容。

### 2. 归属判定标准
- **技术细节** → TechRoutesAgent
- **组织故事/内部政治** → OrgsAgent  
- **人物信息** → CharactersAgent
- **时间节点/事件序列** → TimelineAgent
- **地缘政治/国际视角** → GeoAgent
- **AGI预测/未来推演** → AGIEraAgent
- **导航/规范/元数据** → MetaAgent

---

## 高频重复主题归属表

| 主题 | 归属Agent | 其他Agent处理方式 | 链接示例 |
|------|----------|------------------|----------|
| DeepSeek技术细节 (MLA/MoE/FP8) | TechRoutesAgent | 摘要+链接引用 | `[DeepSeek技术深度解析](../02-singularity/tech-routes/deepseek-technical-deep-dive.md)` |
| DeepSeek组织故事/梁文锋 | OrgsAgent | 摘要+链接引用 | `[DeepSeek组织故事](../02-singularity/organizations/deepseek-org-story.md)` |
| DeepSeek人物档案 | CharactersAgent | 链接引用 | `[梁文锋档案](../04-characters/liang-wenfeng-profile.md)` |
| GPT/Claude技术演进 | TechRoutesAgent | 摘要+链接引用 | `[GPT技术演进](../02-singularity/tech-routes/gpt-evolution.md)` |
| OpenAI/Anthropic组织政治 | OrgsAgent | 各自公司独立文档 | `[OpenAI政治演变](../02-singularity/organizations/openai-internal-politics.md)` |
| 100位KOL基础信息 | CharactersAgent | 只引用名字+职位 | `[Ilya Sutskever](../04-characters/ilya-sutskever-profile.md)` |
| 30个转折点 | TimelineAgent | 只引用事件名称+日期 | `[OpenAI政变事件](../00-meta/timeline-v2-iteration2.md#2023-11-17)` |
| 芯片战争 | GeoAgent | 摘要+链接引用 | `[芯片战争全景](../02-singularity/east-west/chip-war-comprehensive.md)` |
| 各国AI战略 | GeoAgent | 链接引用 | `[欧洲AI格局](../02-singularity/east-west/europe-ai-rising.md)` |
| AGI预测/情景推演 | AGIEraAgent | 链接引用 | `[AGI情景推演](../03-agi-era/future-scenarios.md)` |

---

## 链接格式标准

### ✅ 正确示例

```markdown
# 技术引用
DeepSeek通过MoE架构实现了训练效率优化
→ 详见 [DeepSeek技术深度解析](../02-singularity/tech-routes/deepseek-technical-deep-dive.md)

# 人物引用
OpenAI首席科学家Ilya Sutskever在政变中扮演了关键角色
→ 人物档案: [Ilya Sutskever](../04-characters/ilya-sutskever-profile.md)

# 时间引用
2023年11月17日的OpenAI政变震惊了硅谷
→ 详见 [时间线](../00-meta/timeline-v2-iteration2.md#2023-11-17)

# 组织引用
字节跳动Seed团队在经历了吴永辉改革后...
→ 详见 [字节Seed故事](../02-singularity/organizations/bytedance-seed-story.md)
```

### ❌ 错误示例（禁止）

```markdown
# 错误：复制技术细节
DeepSeek通过MoE架构实现了训练效率优化。MoE全称Mixture of Experts，
是一种稀疏激活的神经网络架构，由多个专家子网络和一个门控网络组成...
（复制500字技术细节）

# 错误：复制人物背景
Ilya Sutskever，1986年出生于俄罗斯，五岁时移民以色列，在多伦多大学...
（复制完整人物介绍）

# 错误：复制时间线
2023年11月17日，OpenAI董事会突然宣布解雇Sam Altman...
（复制完整事件描述）
```

---

## 仲裁流程

### 当Agent发现跨板块重复内容时：

1. **标记问题** - 在进度看板记录发现的重复内容
2. **查询归属** - 查看本规则表确定归属Agent
3. **协商处理** - 如涉及争议，由MetaAgent仲裁
4. **执行整合** - 归属Agent保留完整内容，其他Agent改为链接引用
5. **验证修复** - MetaAgent检查修复结果

---

## 特殊情况处理

### DeepSeek相关内容（当前项目最大重复源）

DeepSeek内容分散在多个板块，统一仲裁如下：

| 内容类型 | 归属 | 位置 |
|----------|------|------|
| MLA/MoE/FP8技术详解 | TechRoutesAgent | `02-singularity/tech-routes/deepseek-technical-deep-dive.md` |
| 组织故事/团队/融资 | OrgsAgent | `02-singularity/organizations/deepseek-org-story.md` |
| 梁文锋人物档案 | CharactersAgent | `04-characters/liang-wenfeng-profile.md` |
| 时间线事件 | TimelineAgent | `00-meta/timeline-v2-iteration2.md` |
| 地缘政治影响 | GeoAgent | `02-singularity/east-west/china-ai-impact.md` |

### 技术路线相关内容

| 内容类型 | 归属 | 位置 |
|----------|------|------|
| Transformer架构演进 | TechRoutesAgent | `01-prehistoric/transformer-evolution.md` |
| GPT系列技术路线 | TechRoutesAgent | `02-singularity/tech-routes/gpt-evolution.md` |
| Claude技术路线 | TechRoutesAgent | `02-singularity/tech-routes/claude-evolution.md` |
| 后训练技术(RLHF等) | TechRoutesAgent | `02-singularity/tech-routes/post-training-methods.md` |
| 推理优化(vLLM等) | TechRoutesAgent | `02-singularity/tech-routes/inference-optimization.md` |

---

## 仲裁记录

| 日期 | 争议内容 | 仲裁结果 | 相关Agent |
|------|----------|----------|-----------|
| 2026-03-10 | DeepSeek技术细节归属 | TechRoutesAgent为SSOT | TechRoutesAgent, OrgsAgent, CharactersAgent |
| 2026-03-10 | 人物信息引用规则 | CharactersAgent为准 | 全体 |
| 2026-03-10 | 时间节点引用规则 | TimelineAgent为准 | 全体 |

---

## 规则更新

- 本规则由MetaAgent维护
- 新增争议经仲裁后更新到本文件
- 所有Agent有责任遵守并反馈问题
