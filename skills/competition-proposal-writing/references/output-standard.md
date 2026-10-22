# 成稿输出与交付规范

> 本文件只定义输出模式、文件命名、图表交付和章节完成检查。
> Review 流程、文风和章节篇幅分别以对应专用文件为准，不在此重复。

## 一、两种输出模式

| 模式 | 适用场景 | 格式 |
|---|---|---|
| 分析稿 | Review、数据核验、结构讨论、图表清单 | 可结构化，结论先行 |
| 成稿 | 正式计划书/申报书正文 | 连续正文，自然过渡，少用分点 |

正式稿中不出现写作过程、meta 说明、诊断词汇和下面/接下来/本节用于等提示语。具体文风见 `tone-guide.md`。

## 二、章节文件

默认文件命名：

```text
chapter-{两位序号}-{英文简称}.md
```

默认 12 章示例：

```text
chapter-01-executive-summary.md
chapter-02-background.md
chapter-03-product.md
chapter-04-market.md
chapter-05-business-model.md
chapter-06-marketing.md
chapter-07-team.md
chapter-08-operations.md
chapter-09-financial.md
chapter-10-risk.md
chapter-11-social-value.md
chapter-12-appendix.md
```

若赛事或学校模板已有命名，优先使用模板命名。目录结构按项目实际需要创建，不强制增加空目录。

## 三、两阶段图表流程

### 阶段一：正文先行

正文中使用图位：

```text
图4-1【待生成】：市场规模三层筛选模型
```

同时输出可视化清单：

| 位置 | 建议作图 | 类型 | 优先级 | 核心信息 |
|---|---|---|---|---|
| 4.2 | TAM/SAM/SOM 漏斗 | Python | 必做 | 市场从潜在到可获得的筛选 |
| 4.3 | 竞品能力对比 | Python/HTML | 建议做 | 解释差异化定位 |

优先级仅使用：`必做`、`建议做`、`可选`。只有确实缺失会削弱核心判断的图才标必做。

### 阶段二：生成与回填

用户确认后批量生成图表，并把占位符替换为：

```text
图4-1：市场规模三层筛选模型（来源：assets/charts/market/market-funnel-v1.png）
```

## 四、图表目录与命名

```text
assets/
|-- charts/
|   |-- market/
|   |-- product/
|   |-- competitors/
|   |-- operation/
|   |-- financial/
|   |-- team/
|   `-- risk/
`-- images/
```

文件命名：`{主题}-{版本}.{ext}`。数据图同时保留生成脚本；结构图保留 HTML 源文件。具体视觉要求见 `chart-style.md`、`visualquality-guide.md` 和 `html-prompt.md`。

## 五、章节完成检查

- [ ] 章节符合比赛模板和 `framework-generation.md` 的编号。
- [ ] 正文引用的数据、术语和口径与主档一致。
- [ ] 正文中的图位均有清单项，图号连续。
- [ ] 成稿无诊断词汇、meta 说明和无意义重复。
- [ ] 图表已生成时，路径、图注和正文引用一致。
- [ ] 文件保存位置和命名稳定，便于增量修改。

未生成图表前，不把图位占位符误写成已完成交付；交付包规范见 `delivery-package-spec.md`。
