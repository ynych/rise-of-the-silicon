# 硅基编年史协作Agent设计方案

## Agent角色总览

针对《硅基编年史》的问题清单，设计以下 **5个专业Agent** 供挑选：

| Agent | 核心职责 | 适合解决的问题 | 输出物 |
|-------|---------|---------------|--------|
| **FactChecker** | 事实核查与来源标注 | Q1, Q4, Q5 | 来源补充报告、数据一致性清单 |
| **ContentArchitect** | 内容结构与去重 | S1-S5, M3 | 去重执行方案、结构调整建议 |
| **NavDesigner** | 导航与可发现性 | D1-D5 | 新索引结构、链接修复清单 |
| **AutoMaintainer** | 自动化与维护 | M1, M2, M4, M5 | 自动化脚本、维护工作流 |
| **Editor** | 编辑与受众优化 | A1-A4, C1-C5 | 编辑建议书、受众适配方案 |

---

## Agent 1: FactChecker（事实核查员）

### 职责
- 为所有文档补充完整的来源标注
- 交叉核对数据一致性
- 标注推测内容与事实边界
- 验证预测置信度

### 工作方式
```
输入：项目目录
↓
扫描所有.md文件 → 识别缺少来源的段落
↓
对关键数据（DeepSeek成本、GPT-5时间等）进行交叉核对
↓
为[推测]内容添加边界说明
↓
输出：来源补充报告 + 数据一致性清单
```

### 交付物
1. `reports/source-audit-YYYY-MM-DD.md` - 来源缺失清单
2. `reports/data-consistency-check.md` - 数据冲突报告
3. 直接修改文档，添加来源标注

### 适合场景
- 你需要确保内容的可信度
- 准备对外发布或引用
- 需要建立可验证的研究标准

---

## Agent 2: ContentArchitect（内容架构师）

### 职责
- 执行内容去重（Single Source of Truth）
- 重新组织分散的内容（DeepSeek/GPT等）
- 平衡技术深度与故事深度
- 补充失败者视角

### 工作方式
```
输入：项目目录 + 去重指南
↓
识别DeepSeek/GPT等高频主题的重复内容
↓
确定Single Source of Truth归属
↓
将重复内容改写为摘要+链接
↓
检查AGI时代内容与奇点阶段的内容平衡
↓
输出：去重执行报告 + 结构调整建议
```

### 交付物
1. `reports/dedup-execution-report.md` - 去重执行记录
2. `reports/structure-rebalance-proposal.md` - 结构平衡建议
3. 直接修改文档，整合重复内容

### 适合场景
- 内容已经庞大，需要整理
- 准备扩展更多主题
- 需要为写作者提供清晰素材

---

## Agent 3: NavDesigner（导航设计师）

### 职责
- 设计清晰的信息架构
- 修复断裂的交叉引用链接
- 创建多路径导航（研究者/写作者/从业者）
- 优化索引页信息密度

### 工作方式
```
输入：项目目录 + 当前索引
↓
分析index.md与project-overview.md的重叠
↓
设计针对不同受众的阅读路径
↓
检查并修复所有内部链接
↓
提出搜索/检索方案
↓
输出：新导航结构 + 链接修复清单
```

### 交付物
1. `reports/nav-redesign-proposal.md` - 导航重设计提案
2. `reports/broken-links-fix.md` - 断链修复清单
3. 重构后的00-meta/index.md
4. 可选：简单的全文搜索脚本

### 适合场景
- 内容使用者反馈找不到信息
- 准备对外发布
- 需要支持不同使用场景

---

## Agent 4: AutoMaintainer（自动化维护员）

### 职责
- 设计更新触发机制
- 创建进度追踪自动化
- 规范化Git提交
- 建立维护工作流

### 工作方式
```
输入：项目目录 + 维护需求
↓
设计重大AI事件的自动检测/提醒机制
↓
创建进度追踪模板或脚本
↓
制定Git提交规范
↓
输出：自动化脚本 + 维护工作流文档
```

### 交付物
1. `tools/ai-news-monitor.sh` - AI新闻监控脚本（可选）
2. `tools/progress-tracker.md` - 进度追踪模板
3. `CONTRIBUTING.md` - 贡献规范（含Git提交规范）
4. `reports/maintenance-workflow.md` - 维护工作流文档

### 适合场景
- 项目需要长期维护
- 多人协作
- 需要减少手动维护成本

---

## Agent 5: Editor（编辑）

### 职责
- 优化受众体验（研究者/写作者/从业者）
- 统一术语和语言风格
- 补充缺失的视角（女性、失败者、非中美）
- 增加数据可视化

### 工作方式
```
输入：项目目录 + 受众分析
↓
分析三类受众的需求差异
↓
检查术语门槛一致性
↓
识别缺失的视角和案例
↓
提出数据可视化建议
↓
输出：编辑建议书 + 内容补充清单
```

### 交付物
1. `reports/editorial-review.md` - 编辑审查报告
2. `reports/audience-adaptation-plan.md` - 受众适配方案
3. `reports/content-gaps-analysis.md` - 内容缺口分析
4. 术语对照表、风格指南更新

### 适合场景
- 准备正式发布
- 需要提升内容质量
- 需要覆盖更全面的视角

---

## Agent组合建议

### 方案A：快速修复（选2个）
> **FactChecker + ContentArchitect**
> 
> 优先解决内容质量问题，适合即将对外发布的场景

### 方案B：用户体验优先（选2个）
> **NavDesigner + Editor**
> 
> 优先解决可发现性和受众体验，适合已有用户反馈的场景

### 方案C：长期维护（选2个）
> **AutoMaintainer + ContentArchitect**
> 
> 建立维护体系 + 整理现有内容，适合长期项目

### 方案D：全面翻新（选3-4个）
> **FactChecker + ContentArchitect + NavDesigner + Editor**
> 
> 全方位提升，适合重要里程碑前的全面整理

### 方案E：全都要（5个协作）
> 所有Agent并行工作，各自负责专业领域
> 需要我协调分工和依赖关系

---

## 执行顺序建议

如果选多个Agent，建议按以下顺序：

```
Phase 1: ContentArchitect（去重/结构调整）
    ↓
Phase 2: FactChecker（在整理好的基础上补充来源）
    ↓
Phase 3: NavDesigner（在内容稳定后设计导航）
    ↓
Phase 4: Editor（最后打磨体验）
    ↓
Phase 5: AutoMaintainer（建立长期机制）
```

---

## 请选择

请告诉我：

1. **选择哪个/哪些Agent？**（可以是A/B/C/D/E方案，或自定义组合如"1+3+5"）

2. **优先级？**（如果有多个Agent，哪个先执行）

3. **特殊要求？**（如某Agent只需检查不修改、或只关注特定文档等）

我会根据你的选择立即开始执行。
