# yangtzeu_standard — 长江大学理工类院系标准蓝色学术汇报模板

[ppt-master](https://github.com/hugohe3/ppt-master) Create Deck 模版，从真实 16:9 理工类院系标准蓝色 PPT 原样（mirror）提取的可复用 deck 模版。

- **适用场景**：院系学术汇报、项目答辩、课题进展报告、年度工作总结等正式演示场景
- **画布**：1280×720（16:9，`ppt169`）
- **主题**：浅色白底；主色 `#1F4E79`（深蓝）+ `#5B9BD5`（中蓝）；微软雅黑
- **结构**：1 个母版 + 11 个原生 PowerPoint 版式，落地为 13 页原型
- **页面原型**：封面 / 目录 / 章节过渡 / 正文×5（双栏、大图、双图、编号、要点卡片×3）/ 图片集×2 / 结束页，共 13 页原型
- **无个人信息**：所有文字区域均为占位符（`{{PAGE_TITLE}}`、`{{CONTENT_AREA}}` 等），由使用者填写；不含姓名、日期、作者等任何个人元数据

## 目录结构

```text
templates/            # design_spec.md + 13 个 SVG 原型
images/               # 母版与版式引用的位图资产（校徽 image4.png 等）
icons/                # 版式引用的矢量图标资产（要点卡片图标等）
previews/             # 13 个原型的 PNG 预览图（README 展示用，按源 PPT 验收）
exports/              # 源 PPT 原档（理科院系16X9 蓝色 无动画版.ppt），预览验收基准
```

## 原型展示

> 下表预览图由源 PPT（`exports/理科院系16X9 蓝色 无动画版.ppt`）逐页渲染而来，与源版式一一对应，作为模版保真度的验收基准。源 PPT 的页面顺序与下方原型排列不同（08b/08c 卡片变体在源中位于 09a/09b 图片集之后），此处按模版叙事顺序重新归并展示。

<table>
  <tr>
    <td align="center"><img src="previews/01_cover.png"                width="280"><br><b>封面</b><br><sub>cover</sub></td>
    <td align="center"><img src="previews/02_toc.png"                  width="280"><br><b>目录</b><br><sub>toc</sub></td>
    <td align="center"><img src="previews/03_chapter.png"              width="280"><br><b>章节过渡</b><br><sub>chapter</sub></td>
  </tr>
  <tr>
    <td align="center"><img src="previews/04_content_text.png"         width="280"><br><b>正文 · 双栏</b><br><sub>content_text</sub></td>
    <td align="center"><img src="previews/05_content_image_large.png"  width="280"><br><b>正文 · 大图</b><br><sub>content_image_large</sub></td>
    <td align="center"><img src="previews/06_content_image_double.png" width="280"><br><b>正文 · 双图</b><br><sub>content_image_double</sub></td>
  </tr>
  <tr>
    <td align="center"><img src="previews/07_content_numbered.png"     width="280"><br><b>正文 · 编号列表</b><br><sub>content_numbered</sub></td>
    <td align="center"><img src="previews/08a_content_cards.png"       width="280"><br><b>要点卡片 A</b><br><sub>content_cards</sub></td>
    <td align="center"><img src="previews/08b_content_cards.png"       width="280"><br><b>要点卡片 B</b><br><sub>content_cards</sub></td>
  </tr>
  <tr>
    <td align="center"><img src="previews/08c_content_cards.png"       width="280"><br><b>要点卡片 C</b><br><sub>content_cards</sub></td>
    <td align="center"><img src="previews/09a_content_images.png"      width="280"><br><b>方形图片集</b><br><sub>content_images</sub></td>
    <td align="center"><img src="previews/09b_content_images.png"      width="280"><br><b>竖形图片集</b><br><sub>content_images</sub></td>
  </tr>
  <tr>
    <td align="center"><img src="previews/10_ending.png"               width="280"><br><b>结束页</b><br><sub>ending</sub></td>
    <td></td>
    <td></td>
  </tr>
</table>

## 使用方式

本模版无需安装脚本——clone 即用。在 ppt-master 对话中提供**显式工作空间根路径**（含 `templates/design_spec.md` 的目录）即可触发模版应用。

### 方式一：Clone 到当前工作空间（推荐）

将仓库 clone 到当前工作目录，然后在 ppt-master 对话中以相对路径引用：

```bash
git clone https://github.com/aqua2k1/ppt-master-yangtzeu-report
```

在 ppt-master 对话中：

> 使用模版 ./ppt-master-yangtzeu-report/decks/yangtzeu-standard 生成一份关于〈主题〉的汇报 PPT

用后可直接删除，不影响已生成的 PPTX。

### 方式二：安装到 ppt-master 模版库

如需将模版安装到 ppt-master 的集中模版库以便长期复用，在 ppt-master 对话中直接告知 AI 即可：

> 将 https://github.com/aqua2k1/ppt-master-yangtzeu-report 安装到 ppt-master 的 decks 模版库

AI 会自动定位 ppt-master 的 `templates/decks/` 目录、clone 仓库、补充画布配置（如需要）并完成注册。

## 画布说明

本模版原生画布即为 **1280×720**（16:9），与 ppt-master 内置 `ppt169` 格式一致，无需额外注册自定义画布。

- **方式一使用时无需关心**——ppt-master 直接读取 SVG 的 viewBox 和 design_spec.md 中的声明。
- **方式二安装时**同样无需额外配置——`ppt169` 为内置格式，开箱即用。

## 授权与使用注意

本模版包含长江大学校徽图案与院系标识，属于学校标识资产。**仅限长江大学校内学习、教学与学术交流使用**；请勿用于商业用途或暗示学校官方背书。发布与转发时请保留本说明。
