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
native_structure_mode: structured
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

| 角色 | HEX | 说明 |
|---|---|---|
| Primary | `#1F4E79` | 深蓝主色：顶部饰带、装饰块、形状填充、标题底色 |
| Accent | `#5B9BD5` | 中蓝辅色：三角形装饰、浅色面板、次要图形 |
| Accent | `#0369A3` | 主题蓝(源自PPTX accent2)：链接色、备选强调 |
| Light bg | `#F4F5F7` | 浅灰面板底色：卡片、内容区背景 |
| Background | `#FFFFFF` | 页面主底色 |
| Text-dark | `#3B3838` | 正文深色文字 |
| Text-light | `#D0CECE` | 深色背景上的浅色正文 |
| Text-light-alt | `#F2F2F2` | 深色背景上的浅色标题文字 |

## III. Typography

- 标题/正文字体栈：`"微软雅黑", "Microsoft YaHei", sans-serif`
- 源主题字体为 Arial/等线；模板统一采用微软雅黑以获得一致的中文显示效果
- 正文字号基线约 18.67px(16:9 画布)

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
| `images/image4.png` | 校徽/院系标识(左上角，母版层) |
| `icons/imported/layered_slide_04_ill01.svg` | 章节页装饰矢量(三角形组合) |
| `icons/imported/layered_slide_06_ill01.svg` | 双图页装饰矢量 |
| `icons/imported/layered_slide_08_ill01~04.svg` | 要点卡片页图标(4个) |
| `icons/imported/layered_slide_11_ill01~04.svg` | 卡片变体页图标(4个) |
| `icons/imported/layered_slide_12_ill01~05.svg` | 卡片变体页图标(5个) |
