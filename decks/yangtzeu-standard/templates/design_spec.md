---
deck_id: yangtzeu-standard
kind: deck
category: scenario
summary: 长江大学理工类院系标准蓝色学术汇报模板，服务院系学术汇报、项目答辩、课题进展与工作总结场景
keywords: [理工, 院系, 蓝色, 学术汇报, 答辩]
primary_color: "#1F4E79"
canvas_format: ppt169
canvas_width: 1280
canvas_height: 720
canvas_viewbox: "0 0 1280 720"
source_canvas_width: 1280
source_canvas_height: 720
source_viewbox: "0 0 1280 720"
replication_mode: fidelity
native_structure_mode: flat
page_count: 13
placeholders:
  08a_content_cards: ["{{SECTION_TITLE}}", "{{CARD_CONTENT}}"]
  08b_content_cards: ["{{SECTION_TITLE}}", "{{CARD_CONTENT}}"]
  08c_content_cards: ["{{SECTION_TITLE}}", "{{CARD_CONTENT}}"]
---

# 长江大学理工类院系标准蓝色模板 — Design Specification

## I. Template Overview

| Application context | Definition |
|---|---|
| Recurring presentation family | 理工类院系的学术汇报、项目答辩、课题进展报告、年度工作总结等正式演示场景 |
| Intended audiences and outcomes | 汇报人为院系师生/研究人员；受众为院系领导、评审专家、学术同行；帮助汇报人清晰呈现研究内容、数据与结论 |
| Delivery and reading assumptions | 以现场投影演示为主，兼顾会后电子版阅读；页面信息密度中等，图文并重 |
| Representative narrative/page roles | 封面(标题/副标题) → 目录 → 章节过渡页 → 多类型正文(双栏/大图/多图/编号/要点卡片) → 结束页；描述性参考，不约束未来项目取舍 |

- 设计基调：理工科专业风格，亮色(白底)主题配深蓝装饰；一眼可辨的元素为左上角校徽/标识、顶部蓝色细条、底部蓝色块状装饰及页间蓝色几何图形
- 模板不含实际内容：所有文字区域均为占位符，由实际使用者填写；校徽/标识为机构品牌元素，随模板保留

## II. Color Scheme

| 角色 | HEX | spec_lock key | 说明 |
|---|---|---|---|
| Primary | `#1F4E79` | `primary` | 深蓝主色：顶部饰带、装饰块、形状填充、标题底色 |
| Accent | `#5B9BD5` | `accent` | 中蓝辅色：三角形装饰、浅色面板、次要图形 |
| Accent-alt | `#0369A3` | `accent_alt` | 主题蓝(源自PPTX accent2)：链接色、备选强调 |
| Light bg | `#F4F5F7` | `light_bg` | 浅灰面板底色：卡片、内容区背景 |
| Background | `#FFFFFF` | `background` | 页面主底色 |
| Text-dark | `#3B3838` | `text_dark` | 正文深色文字 |
| Text-title | `#404040` | `text_title` | 标题深色文字（与 #3B3838 接近，用于标题强调） |
| Text-light | `#D0CECE` | `text_light` | 深色背景上的浅色正文 |
| Text-light-alt | `#F2F2F2` | `text_light_alt` | 深色背景上的浅色标题文字 |
| Text-black | `#000000` | `text_black` | 目录/编号页的纯黑强调文字（`02_toc`, `06_content_image_double`, `07_content_numbered`） |

> **spec_lock.md 用法**：在 `## colors` 段中声明以上所有颜色。key 列给出了推荐的 spec_lock key 名称。

## III. Typography

- 字体栈：`"微软雅黑", "Microsoft YaHei", sans-serif`
- 源主题字体为 Arial/等线；模板统一采用微软雅黑以获得一致的中文显示效果

### 字号角色表（模板 SVG 中全部使用的 font-size）

| 角色 | 字号(px) | spec_lock key | 使用场景与模板页 |
|---|---|---|---|
| Body | 18.67 | `body` | 正文段落、卡片描述文字（全部正文页） |
| Annotation | 26.67 | `annotation` | 图片标签、目录项副标题（`02_toc`, `06_content_image_double`） |
| Subtitle | 32 | `subtitle` | 目录主标题、章节副标题（`02_toc`, `03_chapter`） |
| Section-title | 37.33 | `section_title` | 封面副标题、TOC 章节编号（`01_cover`, `02_toc`） |
| Cover-title | 48 | `cover_title` | 封面主标题（`01_cover`） |
| Page-title | 53.33 | `page_title` | 正文页大标题（`04_content_text` 等） |
| Number-display | 80 | `number_display` | 大号数字（`07_content_numbered` 列表编号） |
| Chapter-number | 96 | `chapter_number` | 章节过渡页超大字（`03_chapter`） |

> **spec_lock.md 用法**：在 `## typography` 段中声明以上所有字号角色。key 列给出了推荐的 spec_lock key 名称。直接复制为 `- <key>: <字号>` 格式即可。
>
> 示例：
> ```markdown
> ## typography
> - font_family: "微软雅黑", "Microsoft YaHei", sans-serif
> - body: 18.67
> - annotation: 26.67
> - subtitle: 32
> - section_title: 37.33
> - cover_title: 48
> - page_title: 53.33
> - number_display: 80
> - chapter_number: 96
> ```

## IV. Signature Design Elements

- 母版页铬：白色背景 + 顶部 `#1F4E79` 蓝色细条(高约 11.6px) + 左上角校徽/标识(`image4.png`)
- 蓝色几何装饰语言：`#5B9BD5` 三角形(旋转角度)、`#1F4E79` 矩形分隔条、侧面竖线装饰
- 图像行为：支持全幅拉伸背景图(`preserveAspectRatio="none"`)、viewBox 裁切雪碧图、普通嵌入图；版面图片区域用占位框标示
- 版面布局语法：
  - 正文安全边距约 88px，标题区在左上或居中
  - 图像常用右侧大图或底部横幅排列
  - 要点卡片使用圆角矩形 + 矢量图标 + 标题/描述文字
  - 编号列表使用大号数字 + 文字说明
- 页面密度节奏：封面/章节页为视觉主导型(大图+大字)，正文页信息密度中高(标题+多栏+图)，结束页简洁收束

## V. Page Roster

| 文件 | 角色 | Layout Key | 说明 |
|---|---|---|---|
| `01_cover.svg` | 封面原型 | `cover` | 全幅背景图 + 底部深蓝覆盖 + 主标题/副标题；左上校徽 |
| `02_toc.svg` | 目录原型 | `toc` | 左侧大号"目录"+ 右侧3组编号标题/描述；左侧斜向方形装饰 |
| `03_chapter.svg` | 章节过渡原型 | `chapter` | 右侧半幅大图 + 左侧深蓝覆盖 + 章节标题与描述文字 |
| `04_content_text.svg` | 正文-双栏原型 | `content_text` | 顶部蓝条 + 标题 + 左右双栏文字 + 底部大图 |
| `05_content_image_large.svg` | 正文-大图原型 | `content_image_large` | 左侧大图或底图 + 标题与正文 |
| `06_content_image_double.svg` | 正文-双图原型 | `content_image_double` | 标题 + 两个配图区 + 对应文字说明 |
| `07_content_numbered.svg` | 正文-编号原型 | `content_numbered` | 大号编号列表 + 配图 |
| `08a_content_cards.svg` | 正文-要点卡片原型A | `content_cards` | 标题横条 + 4个圆角矩形卡片 + 图标 + 重点标签 + 说明文字 |
| `08b_content_cards.svg` | 正文-要点卡片原型B | `content_cards` | 同卡片布局，变体B |
| `08c_content_cards.svg` | 正文-要点卡片原型C | `content_cards` | 同卡片布局，变体C |
| `09a_content_images.svg` | 正文-方形图片原型 | `content_images` | 方形图片 + 标题标签 |
| `09b_content_images.svg` | 正文-竖形图片原型 | `content_images` | 竖形图片 + 标题标签 |
| `10_ending.svg` | 结束页原型 | `ending` | 2×2 深蓝/浅灰面板 + 标题 + 描述文字 + 右侧大图 |

## VI. Assets

| 文件 | 用途 |
|---|---|
| `images/image4.png` | 校徽/院系标识(左上角，母版层；另作 toc/章节/结束页右上角标识) |
| `images/image1.png` | 封面全幅背景图(`01_cover` slot-cover-3) |
| `images/image3.jpeg` | 目录页右侧配图(`02_toc` slot-toc-3) |
| `images/image5.jpeg` | 正文双栏页底部横幅图(`04_content_text` slot-content_text-3) |
| `images/image6.jpeg` | 章节过渡页右半幅图(`03_chapter` slot-chapter-3) |
| `images/image7.jpeg` | 正文大图页全幅背景(`05_content_image_large` slot-image_large-1) |
| `images/image8.jpeg` | 正文双图页上图(`06_content_image_double` slot-image_double-1) |
| `images/image9.jpeg` | 正文双图页下图(`06_content_image_double` slot-image_double-2) |
| `images/image10.png` | 正文编号页顶部横幅图(`07_content_numbered` slot-numbered-1) |
| `images/image11.jpeg` | 方形图片集右图(`09a_content_images` slot-images-2) |
| `images/image12.jpeg` | 方形图片集左图(`09a_content_images` slot-images-1) |
| `images/image13.png` | 竖形图片集右图(`09b_content_images` slot-images-pic3) |
| `images/image14.png` | 竖形图片集中图(`09b_content_images` slot-images-pic2) |
| `images/image15.png` | 竖形图片集左图(`09b_content_images` slot-images-pic1) |
| `images/image16.jpeg` | 结束页右侧配图(`10_ending` slot-ending-3) |
| `icons/imported/layered_slide_04_ill01.svg` | 章节页装饰矢量(三角形组合) |
| `icons/imported/layered_slide_06_ill01.svg` | 双图页装饰矢量 |
| `icons/imported/layered_slide_08_ill01~04.svg` | 要点卡片页图标(4个) |
| `icons/imported/layered_slide_11_ill01~04.svg` | 卡片变体页图标(4个) |
| `icons/imported/layered_slide_12_ill01~05.svg` | 卡片变体页图标(5个) |
