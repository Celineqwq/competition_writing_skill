---
name: competition-proposal-writing
description: |
  撰写、完善或评审大创、挑战杯、互联网+、创青春、三创赛等创新创业比赛的计划书/申报书；覆盖项目主档、Research、分析稿、成稿、Review、统稿、路演PPT与答辩Q&A。
---

# 比赛计划书写作助手

面向中国大学生创新创业类竞赛的专业计划书写作流程。核心原则：真实、自洽、贴合评审。所有内容必须基于项目主档与可验证来源，禁止编造事实。

## 执行范围与上下文协议

先判断任务属于哪一种，只加载完成当前任务所需的参考文件：

1. **完整项目**：执行六阶段流程。
2. **单章 / 局部写作**：只读取项目主档、目标章节资料、写作规范和对应角色，不执行其他章节流程。
3. **评审 / 修订**：按诊断定向改写复核执行，不重写未涉及章节。

上下文使用规则：

- 同一阶段首次读取所需文件后直接复用，不因章节切换重复读取同一文件。
- 仅当文件内容发生变化或当前上下文已丢失时重新读取。
- 不预加载全部 `references/`，不读取与当前任务无关的角色、图表或交付规范。
- 续接任务先读取 `.project-config.md` 和最近一次产出；没有必要时不重新扫描全部历史文件。
- 输出稳定的文件顺序和章节编号，避免同一材料因重复重排造成无效改动。

## 工作流（六阶段）

1. **阶段0 项目主档**：读取 `references/project-master.md`，建立 `.project-config.md`，作为唯一项目事实源。
2. **阶段1 Research 补证据**：读取 `references/research-rules.md`，只补公开可验证信息，结果进入 `research/`，不直接混入正文。
3. **阶段2 分析稿**：读取 `references/framework-generation.md` (single chapter: target section only) 和目标章节的 `references/chapter-depth-guide.md`，输出结构、判断、数据点、缺失项和可视化建议。
4. **阶段3 成稿**：读取 `references/long-form-writing.md` 与目标角色文件，输出连续正式正文。
5. **阶段4 Review 修订**：首次需要时读取 `references/review-rewrite-protocol.md` 和 `references/rewrite-execution-protocol.md`；完成 Material Review 后按问题定向改写。
6. **阶段5 统稿可视化**：读取 `references/unification.md`、`references/output-standard.md`、`references/chart-style.md`、`references/delivery-package-spec.md`，完成术语口径统一和交付包。

默认两阶段输出：正文先行（图位用 `图X-Y【待生成】：说明` 占位），用户确认可视化清单后批量生成图表。仅做局部写作时不强制进入阶段4、5。

## 角色系统

角色只决定分析视角，不改变正式文稿风格。按章节读取对应角色，不预加载全部角色文件。

| 角色 | 文件 | 负责内容 |
|---|---|---|
| 主编 | `references/editor-in-chief.md` | 总控、分配、协调、统稿 |
| 商业分析师 | `references/role-commercial.md` | 市场/商业/营销章节 |
| 产品架构师 | `references/role-product.md` | 产品/技术方案 |
| 财务顾问 | `references/role-finance.md` | 财务分析、收入模型、财务图表 |
| 政策评审 | `references/role-policy.md` | 政策背景、风险、社会价值 |
| 路演顾问 | `references/role-pitch.md` | PPT、路演稿、答辩 Q&A |

## 章节框架（12章，唯一口径）

章节顺序、一级/二级/三级结构和每章 PPT 提炼以 `references/framework-generation.md` 为唯一事实源。其他文件只定义写作深度、风格或输出格式，不得另列不同章节编号。

| 章 | 内容 | 主责角色 |
|---|---|---|
| 1 | 执行摘要 | 主编 |
| 2 | 项目背景与痛点分析 | 政策评审 |
| 3 | 解决方案与产品介绍 | 产品架构师 |
| 4 | 市场分析 | 商业分析师 |
| 5 | 商业模式 | 商业分析师+财务顾问 |
| 6 | 营销策略 | 商业分析师 |
| 7 | 团队介绍 | 主编 |
| 8 | 运营现状与未来规划 | 商业分析师 |
| 9 | 财务分析 | 财务顾问 |
| 10 | 风险分析 | 政策评审 |
| 11 | 社会价值 | 政策评审 |
| 12 | 附录 | 各角色 |

## 赛事适配

写作前确认目标赛事，再按 `references/competition-matrix.md` 调整评审侧重与材料清单：

- 大创（创新训练/创业训练/创业实践）：重申报书格式、创新性、可行性和工作量。
- 挑战杯：学术类重研究方法，创业类重社会价值与商业逻辑。
- 互联网+/中国国际大学生创新大赛：重教育、创新、产业价值、团队、社会价值五个评审维度。
- 三创赛、创青春、各类商赛：重商业模式完整性与数据支撑。
- 若学校或赛事提供模板，模板优先级高于默认 12 章结构。

## 核心规则

1. **信息源唯一**：所有章节内容从项目主档提取；research 只补充证据；引用格式使用 `📌 主档-[字段名]`。
2. **缺失信息分流**：市场规模、政策、竞品等公开证据可先 Research；团队履历、合作协议、用户数据、融资进展、核心技术秘密等私有事实必须向用户确认，不得推断。
3. **Research 范围**：可检索市场规模、政策文件、竞品公开信息、公开案例和免费可商用图片；记录来源、访问日期和可信度。
4. **文风克制**：专业、简洁、数据驱动；统一术语；禁止颠覆/革命性/绝对领先/最优秀等宣传腔。
5. **表格克制**：少表格多论证，表格只放真正需要对比或量化的内容，具体见 `references/table-usage-rules.md`。
6. **申报书与申报表区分**：没有空白申报表且用户未明确要求填表时，默认只产出申报书/计划书，不强行套用表格栏目。
7. **复核一次原则**：材料完成后运行一次完整 Review；文字级微调仅检查受影响段落，不重复启动全章诊断。

## 严格自检

每完成一个章节或一份材料，按 `references/strict-review.md` 执行挑剔式自检：数据有来源、论证无漏洞、措辞不绝对、与主档不冲突、无重复内容。Review 不是可选项，但同一版本只做一次完整 Review。

## 可视化

图表必须服务正文，禁止堆图。默认三路分流：

- 数据型（规模/占比/趋势/预测）→ Python matplotlib 生成 PNG；环境无 Python 时改用表格或示意。
- 结构型（架构/流程/闭环/路线）→ 单文件 HTML。
- 概念型/场景型（mockup、场景图）→ 优先使用可用的图片生成工具；不可用时请用户提供素材或保留文字说明。
- 文字已清晰表达时不做图。

分流规则见 `references/chart-style.md`，视觉标准见 `references/visualquality-guide.md`，HTML 规范见 `references/html-prompt.md`。

## 工具说明（Codex 环境）

- 需要用户私有信息时直接在对话中提问，不猜测。
- 网络可用时优先检索官方来源；不可用时请用户提供资料，并保留待核查标记。
- 文档生成优先使用 python-docx/reportlab/python-pptx；缺依赖时先安装，失败则交付 Markdown 草稿。
- 图片素材优先免费可商用来源并记录出处，见 `references/image-search-guide.md`。

## 配套技能（Light-skills）

只有任务确实需要科研检索、实验、软著、专利、前端或系统设计时才按 `references/light-skill-routing.md` 调用对应 `$light-*` 技能，并把产出回写本项目后再继续写作。普通章节写作、已有材料整编、简单计算和格式整理不得为了流程完整调用 Light 技能。

## 参考文件索引

按需读取；同一阶段不要重复读取。

| 文件 | 何时读取 |
|---|---|
| `references/competition-matrix.md` | 确认赛事评审侧重 |
| `references/project-master.md` | 阶段0 建立主档 |
| `references/research-rules.md` | 阶段1 Research |
| `references/framework-generation.md` (single chapter: target section only) | 需要 12 章框架模板 |
| `references/chapter-depth-guide.md` | 阶段2/3 各章维度与字数 |
| `references/chapter-prompts.md` | 单章深写 |
| `references/long-form-writing.md` | 成稿阶段 |
| `references/editor-in-chief.md` | 主编协调与统稿 |
| `references/review-rewrite-protocol.md` | Review 流程 |
| `references/rewrite-execution-protocol.md` | 定向改写 |
| `references/tone-guide.md` | 文风统一 |
| `references/table-usage-rules.md` | 表格使用 |
| `references/chart-style.md` | 可视化分流 |
| `references/html-prompt.md` | HTML 结构图 |
| `references/visualquality-guide.md` | 图表质量标准 |
| `references/presentation-design-guide.md` | 答辩视觉设计 |
| `references/ppt-support.md`、`references/ppt-design-guide.md` | PPT 支持 |
| `references/image-search-guide.md` | 图片素材 |
| `references/output-standard.md` | 成稿输出与文件规范 |
| `references/delivery-package-spec.md` | 章节交付包 |
| `references/citation-and-naming-guide.md` | 图号/引用规范 |
| `references/unification.md` | 统稿校对 |
| `references/strict-review.md` | 严格自检 |
| `references/submission-checklist.md` | 提交前检查 |
| `references/template-sources.md` | 用户要求使用现有/公开申报模板 |
| `references/light-skill-routing.md` | 明确需要配套科研或成果转化技能 |
