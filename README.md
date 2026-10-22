# 大学生创新创业大赛 Skill 包

面向 **大创、挑战杯、互联网+（中国国际大学生创新大赛）、三创赛、创青春** 的 AI 写作工作流技能包。

[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

## 这是什么

`competition-proposal-writing` 是一个可安装到 Codex、Claude Code 等支持 `SKILL.md` 的客户端的技能，负责把「项目素材」变成「能提交、能答辩」的竞赛材料：

- 大创申报书（创新训练 / 创业训练 / 创业实践）
- 挑战杯课外学术科技作品报告 / 创业计划书
- 互联网+ 商业计划书与路演材料
- 三创赛、创青春等创新创业商赛计划书

它不是「一键套模板」，而是一套**事实驱动**的写作流程：先建项目主档，再补公开证据，再分章成稿，最后按评审视角复核。

## 包含内容

| 路径 | 说明 |
|---|---|
| `skills/competition-proposal-writing/SKILL.md` | 技能入口：六阶段流程、角色系统、12 章口径 |
| `skills/competition-proposal-writing/references/` | 32 份按需加载的规范文件（框架、深度、文风、图表、评审、交付） |
| `skills/competition-proposal-writing/agents/openai.yaml` | 客户端展示名称与默认提示词 |
| `install.ps1` / `install.sh` | 一键安装到本地 skills 目录 |

## 核心能力

- **六阶段工作流**：项目主档 → Research 补证 → 分析稿 → 成稿 → Review 定向改写 → 统稿可视化。
- **12 章统一框架**：执行摘要、背景痛点、解决方案、市场、商业模式、营销、团队、运营、财务、风险、社会价值、附录。
- **六个角色视角**：主编、商业分析师、产品架构师、财务顾问、政策评审、路演顾问，按章节切换而不改变文风。
- **赛事适配矩阵**：针对大创三类项目、挑战杯学术/创业、互联网+、三创赛、创青春分别调整评审侧重与材料清单。
- **事实管理**：主档是唯一事实源；公开证据走 Research，团队履历、用户数据、融资等私有事实必须向用户确认，禁止推断编造。
- **评审式复核**：严格自检 + 定向改写协议，按「数据有来源、论证无漏洞、措辞不绝对、与主档不冲突」逐条检查。
- **交付包规范**：正文、一页纸摘要、路演稿、答辩 Q&A、附录材料清单一次配齐。
- **可视化分流**：数据图用 Python 生成，结构图用单文件 HTML，概念图优先调用图片工具，文字讲得清就不配图。

## 目录结构

```text
.
├── README.md
├── LICENSE
├── install.ps1
├── install.sh
└── skills/
    └── competition-proposal-writing/
        ├── SKILL.md
        ├── LICENSE
        ├── agents/
        │   └── openai.yaml
        └── references/
            ├── competition-matrix.md          # 赛事适配矩阵
            ├── project-master.md              # 项目主档模板
            ├── research-rules.md              # Research 补证规则
            ├── framework-generation.md        # 12 章框架
            ├── chapter-depth-guide.md         # 各章深度与字数
            ├── chapter-prompts.md             # 单章深写提示
            ├── long-form-writing.md           # 成稿写法
            ├── tone-guide.md                  # 文风口径
            ├── table-usage-rules.md           # 表格使用规则
            ├── chart-style.md                 # 图表分流
            ├── html-prompt.md                 # HTML 结构图规范
            ├── visualquality-guide.md         # 视觉质量标准
            ├── ppt-support.md                 # PPT 支持
            ├── ppt-design-guide.md            # PPT 设计
            ├── presentation-design-guide.md   # 答辩视觉设计
            ├── image-search-guide.md          # 图片素材检索
            ├── citation-and-naming-guide.md   # 图号与引用规范
            ├── review-rewrite-protocol.md     # Review 流程
            ├── rewrite-execution-protocol.md  # 定向改写
            ├── strict-review.md               # 严格自检
            ├── unification.md                 # 统稿校对
            ├── output-standard.md             # 输出与文件规范
            ├── delivery-package-spec.md       # 交付包规范
            ├── submission-checklist.md        # 提交前检查
            ├── template-sources.md            # 模板来源
            ├── editor-in-chief.md             # 主编
            ├── role-commercial.md             # 商业分析师
            ├── role-product.md                # 产品架构师
            ├── role-finance.md                # 财务顾问
            ├── role-policy.md                 # 政策评审
            ├── role-pitch.md                  # 路演顾问
            └── light-skill-routing.md         # 配套科研技能路由
```

## 安装

### 方式一：安装脚本

Windows PowerShell：

```powershell
git clone https://github.com/Celineqwq/-skill.git
cd ./-skill
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

macOS / Linux：

```bash
git clone https://github.com/Celineqwq/-skill.git
cd ./-skill
bash install.sh
```

默认安装到 `~/.codex/skills/`；已设置 `CODEX_HOME` 时安装到 `$CODEX_HOME/skills/`。

### 方式二：手动复制

```powershell
Copy-Item -Recurse .\skills\* "$HOME\.codex\skills\"
```

Claude Code 用户可复制到 `~/.claude/skills/`。

### 验证

```powershell
Get-ChildItem "$HOME\.codex\skills\competition-proposal-writing"
```

新开一个会话，输入 `Use $competition-proposal-writing ...` 即可触发。

## 快速开始

**完整商业计划书**

```text
Use $competition-proposal-writing 帮我写一份互联网+主赛道的完整商业计划书，
项目是做校园二手教材循环的平台，已有 3 所高校试点数据。
```

**单章深写**

```text
Use $competition-proposal-writing 只写第 4 章市场分析，
目标赛事是大创创业训练项目，按学校模板的栏目顺序来。
```

**评审与改写**

```text
Use $competition-proposal-writing 按挑战杯创业计划评审标准审一遍这份稿子，
指出最可能被扣分的 5 个问题，并给出定向改写方案。
```

**路演材料**

```text
Use $competition-proposal-writing 基于现有计划书，出一版 8 分钟路演稿、
对应 PPT 大纲和 25 个答辩问题。
```

## 工作流与产物

| 阶段 | 动作 | 主要产物 |
|---|---|---|
| 0 项目主档 | 确认赛事、项目类型、团队、数据、模板 | `.project-config.md` |
| 1 Research | 只补公开可验证信息，记录来源与访问日期 | `research/` |
| 2 分析稿 | 按章节输出结构、判断、数据点、缺口 | `analysis/` |
| 3 成稿 | 连续正文，图位先用占位符 | `drafts/` |
| 4 Review | 完整诊断一次，按问题定向改写 | 修订稿 + 问题清单 |
| 5 统稿 | 术语口径统一、图表批量生成、交付包 | `deliverables/` |

赛事或学校提供模板时，模板优先级高于默认 12 章结构。

## 写作原则

- **事实源唯一**：所有章节内容从项目主档提取，引用标注 `📌 主档-字段名`。
- **缺失信息分流**：公开数据可以检索；团队履历、合作协议、用户数据、融资进展、核心技术秘密必须问用户。
- **不写宣传腔**：禁用「颠覆」「革命性」「绝对领先」「最优秀」等无法证实的表述。
- **数据可追溯**：市场数据、政策文件、竞品信息带来源、文号和访问日期。
- **图表服务论证**：不为凑版面配图，一张图只回答一个问题。
- **复核一次**：同一版本只做一次完整 Review，避免反复重写引入口径漂移。

## 赛事覆盖

| 赛事 | 材料形态 | 评审侧重 |
|---|---|---|
| 大创 · 创新训练 | 申报书 | 创新性、可行性、研究方案、预期成果 |
| 大创 · 创业训练/实践 | 申报书 + 商业计划 | 市场需求、商业模式、落地可行性 |
| 挑战杯 · 学术科技作品 | 学术论文/作品报告 | 研究方法、原创性、学术规范 |
| 挑战杯 · 创业计划 | 商业计划书 | 社会价值、商业逻辑、实践验证 |
| 互联网+ / 中国国际大学生创新大赛 | 商业计划书 + 路演 | 教育、创新、团队、商业、社会价值 |
| 三创赛 | 商业计划书 | 商业模式创新、运营数据 |
| 创青春 | 创业计划书 | 市场、财务、落地 |

详细口径见 [`references/competition-matrix.md`](skills/competition-proposal-writing/references/competition-matrix.md)。

## 配套技能（可选，不随本仓库分发）

技能内置了按需调用其他技能的路由，只有任务确实需要时才触发：

| 场景 | 可配合技能 |
|---|---|
| 文献调研与查新 | `light-literature-search` |
| 选题生成与新颖性审查 | `light-idea-generation` / `light-idea-critique` |
| 实验设计与数据分析 | `light-research-plan` / `light-experiment-coding` / `light-result-analysis` |
| 数据图与出版级图表 | `light-figure` |
| 专利交底书、软件著作权 | `light-patent-disclosure` / `light-software-copyright` |
| 路演 PPT | `beautiful-ppt-skill` |
| 申报表填写 | `fill-form` |

普通章节写作、材料整编和格式整理不会为了「流程完整」而调用这些技能。

## 常见问题

**需要联网吗？**
Research 阶段需要联网检索公开数据。无网络时会保留「待核查」标记并请你提供资料，不会编造数据。

**会直接套模板吗？**
不会。学校或赛事模板优先，但内容仍从项目主档推导；没有模板时使用默认 12 章结构。

**支持哪些输出格式？**
Markdown 草稿、DOCX、PDF、PPTX。缺依赖时先安装，安装失败则交付 Markdown 并说明。

**可以直接提交吗？**
建议把它当作高强度初稿和评审工具。提交前请按 `references/submission-checklist.md` 核对赛事当年通知、格式要求和事实数据。

## 兼容性

- Codex（`~/.codex/skills/`）
- Claude Code（`~/.claude/skills/`）
- 其他读取 `SKILL.md` frontmatter 的 Agent 客户端

## 许可

[MIT](LICENSE)
