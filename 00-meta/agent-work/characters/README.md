# CharactersAgent 任务说明

> 负责板块: 人物 (`04-characters/`)
> 启动时间: 等待MetaAgent信号

---

## 负责范围

- `04-characters/` 目录下所有内容
- 100位KOL档案 + 深度心理档案
- 人物关系网络 (`character-relationship-map.md`)

---

## 核心任务清单

### 1. 档案标准化 ✅ ⏳ 🔴
- [ ] 检查所有100人档案格式统一
- [ ] 补充缺失字段（教育背景、关键时间线、金句）
- [ ] 添加[官方]/[权威媒体]/[推测]标签

### 2. 内容补充
- [ ] 统计当前女性人物数量，补充至至少15位
- [ ] 添加3-5位"失败者"档案（如Stability AI的Emad Mostaque）
- [ ] 完善Ilya/Dario/黄仁勋心理档案

### 3. 去重整合
- [ ] 整合 `kol-top100.md` 与 `kol-top100-detailed.md` 的重复
- [ ] 明确 `deep-profiles-complete.md` 只保留5人深度心理
- [ ] 其他内容移至对应人物档案或删除

### 4. 关系图谱
- [ ] 更新 `character-relationship-map.md`
- [ ] 增加联盟/对抗/复杂关系的可视化描述

---

## 跨板块引用规则

**你是人物信息的Single Source of Truth**

当其他Agent需要引用人物时：
- 只提供名字 + 职位
- 提供链接到人物档案
- 禁止在其他板块复制完整人物介绍

示例:
```markdown
OpenAI首席科学家[Ilya Sutskever](../../04-characters/ilya-sutskever-profile.md)...
```

---

## 交付物

- [ ] 标准化的人物档案集
- [ ] 补充的10+位新人物档案
- [ ] 去重执行报告
- [ ] 更新后的人物关系图谱

---

## 预计工时

4小时

---

## 状态

⏳ 等待MetaAgent启动信号
