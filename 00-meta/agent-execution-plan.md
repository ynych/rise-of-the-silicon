# 硅基编年史 - 全Agent协作执行计划

## 执行概览

**方案**: D - 全都要（7个业务Agent并行）
**启动时间**: 2026-03-10
**协调者**: MetaAgent
**执行模式**: 各Agent独立负责板块，MetaAgent统筹协调

---

## Agent分工矩阵

| Agent | 负责目录 | 主要文件 | 核心交付物 | 预计工时 |
|-------|---------|---------|-----------|---------|
| CharactersAgent | `04-characters/` | kol-top100*.md, deep-profiles*.md, character-relationship-map.md | 标准化100人档案 + 补充10人 + 去重整合 | 4h |
| TimelineAgent | `00-meta/` | timeline-v2-iteration2.md, unified-timeline.md | 版本清理 + 30节点来源标注 + 预测置信度 | 3h |
| OrgsAgent | `02-singularity/organizations/` | baidu*.md, tencent*.md, huawei*.md, zhipu*.md, org-structure-comparison.md | 8-10大厂完整视角 + DeepSeek去重 | 5h |
| TechRoutesAgent | `02-singularity/tech-routes/` + `01-prehistoric/` | transformer-evolution.md, agi-technical-landscape.md, *-methods.md | 技术文档标准化 + 术语表 + 去重 | 4h |
| GeoAgent | `02-singularity/east-west/` | europe*.md, asia*.md, middle-east*.md, india*.md, chip-war*.md | 全球AI格局完整化 + 芯片战争深化 | 4h |
| AGIEraAgent | `03-agi-era/` | future-scenarios.md, predictions.md, *-transformation.md | AGI内容扩充 + 预测置信度 + 来源标注 | 3h |
| MetaAgent | `00-meta/` (框架) + 全局 | index.md, writing-standards.md, 所有跨板块协调 | 导航重构 + 规范执行 + 自动化 + 验收 | 4h |

**总预计**: 27小时（并行执行约6-8小时完成）

---

## 执行顺序与依赖

### Phase 1: 基础设施（MetaAgent先启动，0.5h）
```
MetaAgent
├── 创建agent工作目录
├── 制定跨板块重复内容仲裁规则
├── 建立进度追踪看板
└── 为其他Agent准备任务包
```

### Phase 2: 核心内容并行（4-5h）
```
CharactersAgent ──┐
TimelineAgent ────┤
OrgsAgent ────────┤
TechRoutesAgent ──┤── 并行执行，独立修改各自文件
GeoAgent ─────────┤
AGIEraAgent ──────┘
```

**跨板块依赖处理**:
- DeepSeek相关内容：由MetaAgent仲裁，归属TechRoutesAgent为Single Source of Truth
- 人物信息：CharactersAgent为主，其他Agent通过链接引用
- 时间节点：TimelineAgent为准，其他Agent不得重复时间线内容

### Phase 3: 整合验收（MetaAgent主导，1-2h）
```
MetaAgent
├── 收集各Agent交付物
├── 检查跨板块一致性
├── 修复断裂链接
├── 更新导航索引
└── 生成最终验收报告
```

---

## 跨板块重复内容仲裁规则

### 高频重复主题归属

| 主题 | 归属Agent | 其他Agent处理方式 |
|------|----------|------------------|
| DeepSeek技术细节 | TechRoutesAgent | 摘要+链接引用 |
| DeepSeek组织故事 | OrgsAgent | 摘要+链接引用 |
| GPT/Claude技术演进 | TechRoutesAgent | 摘要+链接引用 |
| OpenAI/Anthropic组织 | OrgsAgent | 各自公司独立文档 |
| 100位人物基础信息 | CharactersAgent | 其他Agent只引用名字+职位 |
| 30个转折点 | TimelineAgent | 其他Agent只引用事件名称+日期 |
| 芯片战争 | GeoAgent | OrgsAgent涉及华为部分链接引用 |

### 链接格式标准
```markdown
# 正确示例
DeepSeek通过MoE架构实现了训练效率优化
→ 详见 [DeepSeek技术深度解析](../02-singularity/tech-routes/deepseek-technical-deep-dive.md)

# 错误示例（禁止）
DeepSeek通过MoE架构实现了训练效率优化。MoE全称Mixture of Experts，
是一种稀疏激活的神经网络架构...（重复500字技术细节）
```

---

## 各Agent任务详情

### CharactersAgent 任务包
```yaml
target: 04-characters/
tasks:
  1. 档案标准化:
     - 检查所有100人档案格式统一
     - 补充缺失字段（教育背景、关键时间线、金句）
     - 添加[官方]/[权威媒体]/[推测]标签
  
  2. 内容补充:
     - 统计当前女性人物数量，补充至至少15位
     - 添加3-5位"失败者"档案（如Stability AI的Emad Mostaque）
     - 完善Ilya/Dario/黄仁勋心理档案
  
  3. 去重整合:
     - 整合 kol-top100.md 与 kol-top100-detailed.md 的重复
     - 明确 deep-profiles-complete.md 只保留5人深度心理
     - 其他内容移至对应人物档案或删除
  
  4. 关系图谱:
     - 更新 character-relationship-map.md
     - 增加联盟/对抗/复杂关系的可视化描述

deliverables:
  - 标准化的人物档案集
  - 补充的10+位新人物档案
  - 去重执行报告
  - 更新后的人物关系图谱
```

### TimelineAgent 任务包
```yaml
target: 00-meta/timeline*
tasks:
  1. 版本清理:
     - 将 timeline-v1-iteration1.md 标记为 [DEPRECATED]
     - 添加指向 v2 的链接
     - 检查所有文档中的时间线引用，确保指向 v2
  
  2. 来源补充:
     - 为30个已确认转折点补充[官方]/[权威媒体]来源
     - 为8个预测添加置信度标注（高/中/低）+ 依据
     - 区分"已发生事实"vs"基于当前信息的预测"
  
  3. 结构优化:
     - 检查"史前/奇点/AGI"三部分比重
     - 为重大事件添加"被忽视的重要性"解读
     - 优化因果链描述
  
  4. 数据一致性:
     - 核对所有日期（政变、发布等）
     - 统一事件在不同文档中的描述

deliverables:
  - 清理后的时间线版本
  - 完整来源标注的30+8节点
  - 数据一致性检查报告
```

### OrgsAgent 任务包
```yaml
target: 02-singularity/organizations/
tasks:
  1. 现有文档完善:
     - baidu-internal-struggle.md: 补充来源标注，核实细节
     - tencent-hunyuan-story.md: 补充来源标注，核实细节
     - huawei-ascend-inside.md: 补充来源标注，核实细节
     - zhipu-ipo-story.md: 补充来源标注，核实细节
  
  2. 新增大厂文档（每篇3000-5000字）:
     - alitongyi-story.md: 林俊旸离职后的通义团队
     - bytedance-seed-story.md: 吴永辉改革后的Seed现状
     - moonshot-kimi-story.md: 月之暗面创业到Kimi
     - minimax-story.md: MiniMax技术路线与商业化
     - openai-internal-politics.md: OpenAI政治演变（从政变到IPO）
  
  3. 去重整合:
     - 整合分散的DeepSeek组织相关内容
     - 确保每个大厂只有一个权威文档
  
  4. 对比分析:
     - 更新 org-structure-comparison.md
     - 增加安全优先级、人才策略等维度

deliverables:
  - 8-10个大厂的完整内部视角文档
  - 去重执行报告
  - 深化的组织架构对比分析
  - 小说素材提取（冲突场景/人物原型）
```

### TechRoutesAgent 任务包
```yaml
target: 
  - 02-singularity/tech-routes/
  - 01-prehistoric/transformer-evolution.md
tasks:
  1. 技术文档标准化:
     - 统一技术术语解释深度
     - 为所有技术细节补充论文/官方博客来源
     - 创建术语对照表（中英文对照）
  
  2. 内容去重:
     - 整合分散的DeepSeek技术描述（MLA/MoE/FP8）
     - 整合GPT/Claude技术路线
     - 建立技术主题的Single Source of Truth
  
  3. 深度补充:
     - transformer-evolution.md: 补充2017-2026架构演进
     - deepseek-technical-deep-dive.md: MLA/MoE/FP8详解
     - post-training-methods.md: RLHF/CAI/DPO对比
     - inference-optimization.md: vLLM/PagedAttention等
  
  4. 可视化:
     - 创建技术路线对比表格
     - 性能/成本数据表格
     - 架构演进时间线（文字版）

deliverables:
  - 标准化的技术文档集
  - 术语对照表
  - 去重后的技术信息架构
  - 数据可视化表格
```

### GeoAgent 任务包
```yaml
target: 02-singularity/east-west/
tasks:
  1. 现有文档完善:
     - europe-ai-rising.md: 补充来源标注
     - asia-ai-players.md: 补充来源标注
     - middle-east-ai-investment.md: 补充来源标注
     - india-ai-ecosystem.md: 补充来源标注
  
  2. 内容深化:
     - chip-war-comprehensive.md: 补充H100禁令最新进展
     - 各国AI政策影响的具体案例
  
  3. 视角平衡:
     - 检查非中美内容的比重
     - 补充欧洲/日韩/中东/印度的本土玩家
     - 增加各国AI战略的差异化分析
  
  4. 去重整合:
     - 整合分散的国际视角内容
     - 确保各国只有一个权威描述

deliverables:
  - 完整的全球AI格局文档集
  - 深化的芯片战争分析
  - 平衡的国际视角内容
  - 地缘政治冲突素材（小说用）
```

### AGIEraAgent 任务包
```yaml
target: 03-agi-era/
tasks:
  1. 内容扩充:
     - future-scenarios.md: 4种情景详细展开（每种1500字）
     - economic-transformation.md: 增加具体行业案例
     - social-transformation.md: 增加社会现象案例
     - agi-impact-scenarios.md: 整合并优化
  
  2. 预测管理:
     - 为predictions.md所有预测添加置信度
     - 建立预测验证框架
     - 区分"已确认趋势"vs"推测情景"
  
  3. 来源补充:
     - 补充专家访谈、研究报告来源
     - 明确[推测]内容的边界
  
  4. 平衡性检查:
     - 对比03-agi-era与02-singularity的文档数量和深度
     - 优化从"奇点临近"到"AGI时代"的叙事过渡

deliverables:
  - 扩充后的AGI时代文档集（目标+15,000字）
  - 带置信度的预测体系
  - 完整的来源标注
  - 内容平衡性报告
```

### MetaAgent 任务包
```yaml
target: 
  - 00-meta/ (框架文档)
  - 全局协调
tasks:
  1. 基础设施:
     - 创建各Agent工作目录
     - 建立进度追踪看板
     - 准备任务包分发
  
  2. 导航重构:
     - 重构index.md（解决与project-overview重叠）
     - 设计多受众阅读路径
     - 创建快速查找表
  
  3. 规范执行:
     - 检查所有文档的writing-standards遵循情况
     - 统一版本标记（kebab-case.md）
     - 规范化文件名
  
  4. 链接修复:
     - 扫描所有内部链接
     - 修复断裂链接
     - 更新引用到新版本
  
  5. 自动化:
     - 创建更新触发机制文档
     - 设计内容重复检测脚本
     - 制定Git提交规范
  
  6. 整合验收:
     - 收集各Agent交付物
     - 检查跨板块一致性
     - 生成最终验收报告

deliverables:
  - 重构后的导航系统
  - 规范的元数据结构
  - 修复后的内部链接
  - 自动化脚本/模板
  - 维护工作流文档
  - 最终验收报告
```

---

## 进度追踪

### 实时看板

| Agent | 状态 | 进度 | 阻塞项 | 预计完成 |
|-------|------|------|--------|---------|
| MetaAgent | 🟡 进行中 | 10% | 无 | 1h |
| CharactersAgent | ⏳ 等待启动 | 0% | MetaAgent基础设施 | - |
| TimelineAgent | ⏳ 等待启动 | 0% | MetaAgent基础设施 | - |
| OrgsAgent | ⏳ 等待启动 | 0% | MetaAgent基础设施 | - |
| TechRoutesAgent | ⏳ 等待启动 | 0% | MetaAgent基础设施 | - |
| GeoAgent | ⏳ 等待启动 | 0% | MetaAgent基础设施 | - |
| AGIEraAgent | ⏳ 等待启动 | 0% | MetaAgent基础设施 | - |

### 里程碑

- [ ] M1: MetaAgent完成基础设施（0.5h）
- [ ] M2: 所有Agent启动并行工作（0.5h）
- [ ] M3: 各Agent完成核心任务（4-5h）
- [ ] M4: MetaAgent完成整合验收（1-2h）
- [ ] M5: 最终交付与验收（0.5h）

**预计总耗时**: 6-8小时

---

## 立即执行

MetaAgent已启动，准备基础设施。

其他Agent等待启动指令...

*更新: 2026-03-10*
