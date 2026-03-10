# OrgsAgent 任务说明

> 负责板块: 组织架构 (`02-singularity/organizations/`)
> 启动时间: 等待MetaAgent信号

---

## 负责范围

- `02-singularity/organizations/` 所有文档
- 中美大厂内部视角（百度/腾讯/华为/智谱/阿里/字节等）
- 组织架构对比分析 (`org-structure-comparison.md`)

---

## 核心任务清单

### 1. 现有文档完善
- [ ] `baidu-internal-struggle.md`: 补充来源标注，核实细节
- [ ] `tencent-hunyuan-story.md`: 补充来源标注，核实细节
- [ ] `huawei-ascend-inside.md`: 补充来源标注，核实细节
- [ ] `zhipu-ipo-story.md`: 补充来源标注，核实细节

### 2. 新增大厂文档（每篇3000-5000字）
- [ ] `alitongyi-story.md`: 林俊旸离职后的通义团队
- [ ] `bytedance-seed-story.md`: 吴永辉改革后的Seed现状
- [ ] `moonshot-kimi-story.md`: 月之暗面创业到Kimi
- [ ] `minimax-story.md`: MiniMax技术路线与商业化
- [ ] `openai-internal-politics.md`: OpenAI政治演变（从政变到IPO）

### 3. 去重整合
- [ ] 整合分散的DeepSeek组织相关内容
- [ ] 确保每个大厂只有一个权威文档

### 4. 对比分析
- [ ] 更新 `org-structure-comparison.md`
- [ ] 增加安全优先级、人才策略等维度

---

## 跨板块引用规则

**你是组织故事的Single Source of Truth**

当其他Agent需要引用组织信息时：
- DeepSeek技术细节 → 链接到TechRoutesAgent
- DeepSeek人物 → 链接到CharactersAgent
- 时间节点 → 链接到TimelineAgent

示例:
```markdown
百度AI团队经历了复杂的内部斗争
→ 详见 [百度内部视角](../02-singularity/organizations/baidu-internal-struggle.md)

技术细节请参考 [DeepSeek技术解析](../02-singularity/tech-routes/deepseek-technical-deep-dive.md)
```

---

## DeepSeek内容归属说明

| 内容类型 | 归属Agent | 你的处理方式 |
|----------|----------|-------------|
| MLA/MoE/FP8技术详解 | TechRoutesAgent | 摘要+链接 |
| 组织故事/团队/融资 | **你** | 保留完整内容 |
| 梁文锋人物档案 | CharactersAgent | 链接引用 |

---

## 交付物

- [ ] 8-10个大厂的完整内部视角文档
- [ ] 去重执行报告
- [ ] 深化的组织架构对比分析
- [ ] 小说素材提取（冲突场景/人物原型）

---

## 预计工时

5小时

---

## 状态

⏳ 等待MetaAgent启动信号
