# 图片搜索与素材获取指南

## 搜索方法（工具无关）

当需要为 PPT 或计划书配图时：

- 如当前环境有网络权限：用 Python（urllib/requests）或 PowerShell 直接访问图片搜索页或免费图库 API；无网络权限时请用户提供素材。
- 关键词格式：`[具体场景] free stock photo CC0`，英文关键词命中率更高。
- 每个素材必须记录来源 URL 与访问日期，写入 `research/image-sources/image-credits-[日期].md`。

### 推荐的免费图片搜索关键词

#### 通用场景
| 用途 | 英文关键词 | 中文说明 |
|------|------------|----------|
| 商务人士 | business meeting, professional | 会议、讨论 |
| 创业团队 | startup team, cofounders | 团队合影 |
| 市场分析 | market analysis, data chart | 数据图表 |
| 产品展示 | product showcase, demo | 产品图 |
| 用户画像 | user persona, target audience | 用户群体 |
| 科技创新 | technology, innovation | 科技创新 |
| 发展趋势 | growth, trend, upward | 增长趋势 |

#### 按行业分类
| 行业 | 推荐关键词 |
|------|------------|
| AI/互联网 | artificial intelligence, machine learning, app interface, software |
| 教育 | education, online learning, classroom, students |
| 医疗健康 | healthcare, medical, telemedicine, health tech |
| 农业 | agriculture, farming, smart farm, harvest |
| 环保 | sustainability, green energy, eco-friendly |
| 金融 | fintech, mobile payment, banking |
| 电商 | e-commerce, online shopping, delivery |
| 旅游 | travel, tourism, hospitality |

### CC0 免费图片网站

以下网站图片可免费商用，无需署名：

| 网站 | 网址 | 搜索方式 |
|------|------|----------|
| Unsplash | unsplash.com | 英文关键词搜索 |
| Pexels | pexels.com | 英文关键词搜索 |
| Pixabay | pixabay.com | 中英文均可 |
| Gratisography | gratisography.com | 创意趣味图片 |
| Life of Pix | www.lifeofpix.com | 高质量摄影 |

## 图片使用规范

### 合规检查清单
- [ ] 图片是否有版权限制
- [ ] 是否需要注明出处
- [ ] 商业用途是否允许
- [ ] 图片是否需要修改后使用

### 推荐署名格式
```
图片来源: Unsplash / Pexels / Pixabay
```

## 获取图片的具体步骤

1. 确定图片类型：背景图、配图、图表、图标。
2. 用关键词搜索免费图片，下载到 `assets/images/[分类]/`。
3. 格式优先 PNG/JPG，PPT 用 1920x1080 或更高分辨率，文件名为描述性名称。
4. 将来源记录写入 `research/image-sources/`。

## AI 生成配图

难以找到真实图片的场景，可尝试可用的图片生成工具；注意查看各平台商业使用条款，并在文档中标注"AI 生成示意图"。

## 格式调整指南

### PPT 格式调整

1. 裁剪：统一为 16:9 或 4:3 比例。
2. 调色：使用 PPT 自带的色彩校正。
3. 抠图：移除背景，输出 PNG 透明背景。
4. 压缩：PPT 内图片建议压缩至 150dpi。

常见问题：
| 问题 | 解决方法 |
|------|----------|
| 图片模糊 | 替换为更高分辨率版本 |
| 比例失调 | 统一裁剪为同一比例 |
| 风格不统一 | 统一添加滤镜或调整色调 |
| 遮挡文字 | 调整图片位置或添加半透明遮罩 |

### Word 计划书格式

| 项目 | 要求 |
|------|------|
| 页边距 | 上下 2.54cm，左右 3.17cm |
| 正文字体 | 宋体/Times New Roman，12pt |
| 标题字体 | 黑体，16-22pt |
| 行距 | 1.5 倍或固定 20pt |
| 页码 | 底部居中 |

使用 Word 内置标题样式生成目录，图表使用自动题注与交叉引用。
