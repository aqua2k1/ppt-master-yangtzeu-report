---
deck_id: yangtzeu-report
kind: deck
category: brand
summary: 长江大学学术汇报通用模版,服务学术会议汇报、课堂汇报与组会汇报,帮助汇报人清晰呈现研究工作与计划
keywords: [高校, 学术汇报, 会议, 课堂, 组会]
primary_color: "#F07F09"
canvas_format: ppt43
canvas_width: 1024
canvas_height: 768
canvas_viewbox: "0 0 1024 768"
source_canvas_width: 960
source_canvas_height: 720
source_viewbox: "0 0 960 720"
replication_mode: mirror
native_structure_mode: structured
page_count: 14
---

# 长江大学通用学术汇报模板 — Design Specification

## I. Template Overview

| Application context | Definition |
|---|---|
| Recurring presentation family | 学术会议汇报、课堂汇报、组会(周报式)汇报等高校学术展示场景 |
| Intended audiences and outcomes | 汇报人为学生/教师/研究人员;受众为导师、评审专家、同学与课题组成员;帮助汇报人结构化呈现研究背景、方法、结果与计划 |
| Delivery and reading assumptions | 以现场宣讲为主,兼顾会后传阅;页面文字凝练,依赖讲解展开 |
| Representative narrative/page roles | 封面(题目/汇报人)→ 议程或内容页 → 章节过渡页 → 内容页 → 致谢结尾页;描述性参考,不约束未来项目取舍 |

- 设计基调:高校学术风格,浅色(白底)主题;一眼可辨的身份元素为左上校徽、顶部红色饰带与底部红橙渐变条及"长大 长新"校训。
- 模版不含任何个人信息:封面、章节、结尾页均为原生空占位符,由实际使用者(真人或 LLM)填写;校徽与校训为机构品牌元素,随模版保留。

## II. Color Scheme

| 角色 | HEX | 说明 |
|---|---|---|
| Primary | `#F07F09` | 橙色强调:议程编号/竖线、结尾页大字与分隔线 |
| Secondary | `#9F2936` | 深红:顶部饰带、底部渐变起始色 |
| Secondary | `#902430` | 深红(渐变端):底部渐变条 |
| Tint | `#FBC58E` / `#FCD9B4` | 橙金渐变中间/端色:底部渐变条、结尾页顶部渐变 |
| Ending band | `#261270` | 结尾页深紫蓝横幅底色 |
| Background | `#FFFFFF` | 页面底色 |
| Neutral tint | `#E3DED1` | 米白辅助色(lt2) |
| Text | `#000000` / `#323232` | 正文与深色文字 |

## III. Typography

- 标题/正文主题字体:`"华文中宋", sans-serif`(源主题 major/minor 字体均为华文中宋;Windows 环境通常未预装,需安装或回退到宋体类 serif)
- 校训文字:"楷体", "微软雅黑", sans-serif,加粗
- 正文字号基线约 24px(4:3 画布)

## IV. Signature Design Elements

- 母版页铬:左上角长江大学校徽(白色衬底压盖背景图原标识)、顶部红色饰带、底部红橙渐变条(`#902430`→`#FBC58E`→`#FCD9B4`)叠加纹理图、右下角"长大 长新"校训
- 结尾页:全幅校园背景图 + 白色半透明过渡、深紫蓝(`#261270`)横幅、橙色 80px 大字与橙色分隔线、顶部右侧校徽裁剪贴片
- 版式体系:单一母版下 13 个原生版式 —— 标题幻灯片、标题和内容、节标题、两栏内容、比较、仅标题、空白、内容与标题、图片与标题、标题和竖排文字、垂直排列标题与文本、自定义版式、2_自定义版式;正文区安全边距约 48–75px
- 图像行为:母版/结尾页使用全幅拉伸背景图(`preserveAspectRatio="none"`);结尾页校徽为 viewBox 裁剪贴片,裁切包装不可拍平

## V. Page Roster

| 文件 | 角色 | 保留的源 Master/Layout | 说明 |
|---|---|---|---|
| `001_cover.svg` | 封面原型 | master_01 / layout_01(标题幻灯片) | 居中主标题(ctrTitle)+ 副标题(subTitle)原生空占位符,待填写 |
| `002_content.svg` | 内容页原型(空白版式) | master_01 / layout_07(空白) | 纯版式演示页;源页的议程示例内容已按用户决定清空,仅保留版式框架 |
| `003_chapter.svg` | 章节页原型 | master_01 / layout_03(节标题) | 中部大号章节标题(title)+ 描述文本(body)原生空占位符 |
| `004_content.svg` | 内容页原型(空白版式) | master_01 / layout_07(空白) | 源空白页;纯版式演示(文件名由 chapter 修正为 content,见保存图) |
| `005_ending.svg` | 结尾页原型 | master_01 / layout_13(2_自定义版式) | 深紫蓝横幅致谢页,两处 body 原生空占位符 |
| `layout_layout_02.svg` | 版式定义(definition-only) | master_01 / layout_02(标题和内容) | 未被源页引用;标题 + 正文占位契约 |
| `layout_layout_04.svg` | 版式定义(definition-only) | master_01 / layout_04(两栏内容) | 未被源页引用 |
| `layout_layout_05.svg` | 版式定义(definition-only) | master_01 / layout_05(比较) | 未被源页引用 |
| `layout_layout_06.svg` | 版式定义(definition-only) | master_01 / layout_06(仅标题) | 未被源页引用 |
| `layout_layout_08.svg` | 版式定义(definition-only) | master_01 / layout_08(内容与标题) | 未被源页引用 |
| `layout_layout_09.svg` | 版式定义(definition-only) | master_01 / layout_09(图片与标题) | 未被源页引用 |
| `layout_layout_10.svg` | 版式定义(definition-only) | master_01 / layout_10(标题和竖排文字) | 未被源页引用 |
| `layout_layout_11.svg` | 版式定义(definition-only) | master_01 / layout_11(垂直排列标题与文本) | 未被源页引用 |
| `layout_layout_12.svg` | 版式定义(definition-only) | master_01 / layout_12(自定义版式) | 未被源页引用 |

### Source Preservation Map

| Source slide | Source Master | Source Layout | Output SVG | Preservation status |
|---|---|---|---|---|
| slide 1 | slideMaster1 | slideLayout1(标题幻灯片) | `001_cover.svg` | 完整保留(空占位符) |
| slide 2 | slideMaster1 | slideLayout7(空白) | `002_content.svg` | 版式结构保留;slide-local 议程示例内容(文本/装饰线/配图)按用户决定清空 |
| slide 3 | slideMaster1 | slideLayout3(节标题) | `003_chapter.svg` | 完整保留(空占位符) |
| slide 4 | slideMaster1 | slideLayout7(空白) | `004_content.svg` | 完整保留;页型文件名由导入启发式 chapter 修正为 content(空白内容页) |
| slide 5 | slideMaster1 | slideLayout13(2_自定义版式) | `005_ending.svg` | 完整保留;装饰矢量组(layout:22)由提取资产回Inline为原生形状,视觉等价 |
| —(未被引用) | slideMaster1 | slideLayout2/4/5/6/8/9/10/11/12 | `layout_layout_02/04/05/06/08/09/10/11/12.svg` | definition-only 版式定义,父母版 slideMaster1 |

## VI. Assets

| 文件 | 用途 |
|---|---|
| `images/image1.jpeg` | 母版全幅背景图(白底 + 红色饰带基调) |
| `images/image2.jpeg` | 长江大学校徽(左上,母版) |
| `images/image3.png` | 母版底部渐变条纹理 |
| `images/image4.jpeg` | 结尾页全幅校园背景 |
| `images/image5.png` | 结尾页白色半透明覆盖层 |
| `images/image6.png` | 结尾页顶部校徽裁剪贴片(雪碧式 viewBox 裁剪) |
