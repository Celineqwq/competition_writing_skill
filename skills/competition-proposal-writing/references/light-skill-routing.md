# 配套技能路由（Light-skills）

本技能负责比赛材料写作。Light 技能只在当前任务确实需要其专业能力时调用；普通章节写作、已有材料整合、简单计算、排版和格式调整不得为了流程完整而触发。

## 路由表

| 任务 | 只在以下情况调用 | 回流 |
|---|---|---|
| 查新/文献综述 | 需要系统检索公开文献并形成证据地图 | `$light-literature-search` -> `research/cases/` 或主档现状 |
| 选题生成/批判 | 需要新 idea 或正式新颖性审查 | `$light-idea-generation` / `$light-idea-critique` -> 立项依据与风险 |
| 研究方案/实验 | 项目包含可验证实验或研究设计 | `$light-research-plan` / `$light-experiment-coding` -> 技术路线/附录 |
| 数据处理/统计 | 有真实数据需要清洗、检验或分析 | `$light-data-engineering` / `$light-result-analysis` -> 验证结果 |
| 科研图表 | 需要程序化生成数据图或出版级图 | `$light-figure` -> `assets/charts/` |
| 论文/引用 | 需要技术报告、论文或正式引用审计 | `$light-paper-writing` / `$light-citation` -> 附录/参考文献 |
| 系统/前端 | 需要架构设计或可运行 demo | `$light-system-design` / `$light-frontend-design` -> 产品技术章节/演示 |
| 专利/软著 | 需要交底书或登记材料 | `$light-patent-disclosure` / `$light-software-copyright` -> 附录 |
| 一致性/伦理 | 多材料终审或涉及真实数据/引用 | `$light-consistency` / `$light-research-ethics` -> 统稿/合规 |
| 项目台账 | 需要跨会话恢复、版本或决策追踪 | `$light-memory-pm` -> `.light/` |
| 排版/投稿 | 明确要求 LaTeX、投稿或 PDF 合规 | `$light-typesetting` / `$light-venue-matching` -> 最终交付 |

## 调用纪律

1. **先本地，后外接**：主档、research 和本技能参考文件能解决的，不调用 Light。
2. **一次只激活当前需要的技能**：不预加载、不链式触发无关技能。
3. **按需读取**：只读取被调用技能的 `SKILL.md` 和其明确要求的必要资源，不扫描整套技能库。
4. **同一产物复用**：Light 输出先落盘，再由主流程读取结果；不反复在对话中重算。
5. **事实不降级**：Light 返回 `UNKNOWN/待核查` 时，正文保持同等状态，不补造。
6. **冲突处理**：项目私有事实以主档为准，公开证据以已归档来源为准；无法判定时暂停相关结论。

默认不要为一个普通比赛计划书同时调用 `light-literature-search`、`light-idea-generation`、`light-idea-critique`、`light-research-plan` 等整条科研链。只有项目本身需要进行原创研究、实验或成果转化时才按实际缺口选择最少技能。
