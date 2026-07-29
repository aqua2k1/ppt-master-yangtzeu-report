# ppt-master-yangtzeu-report — 长江大学 PPT 模板集合

本仓库收集 [ppt-master](https://github.com/hugohe3/ppt-master) 可用的独立 Deck 模板。

## 目录结构

```text
ppt-master-yangtzeu-report/
├── decks/                     # 独立 Deck 模板（每个子目录是一个 workspace root）
│   ├── yangtzeu-report/       # 长江大学通用学术汇报（4:3 红橙）
│   └── yangtzeu-standard/     # 长江大学理工类院系标准蓝色（16:9）
├── brands/                    # 预留：共享品牌身份
├── layouts/                   # 预留：共享版式结构
└── README.md                  # 本文件
```

## 使用方式

本仓库模板无需安装脚本——clone 即用。在 ppt-master 对话中提供**显式工作空间根路径**（含 `templates/design_spec.md` 的目录）即可触发模板应用。

### 方式一：Clone 到当前工作空间（推荐）

```bash
git clone https://github.com/aqua2k1/ppt-master-yangtzeu-report
```

在 ppt-master 对话中：

> 使用模版 ./ppt-master-yangtzeu-report/decks/yangtzeu-standard 生成一份关于〈主题〉的汇报 PPT

用后可直接删除，不影响已生成的 PPTX。

### 方式二：安装到 ppt-master 模版库

在 ppt-master 对话中：

> 将 https://github.com/aqua2k1/ppt-master-yangtzeu-report 安装到 ppt-master 的 decks 模版库

AI 会自动定位 `templates/decks/` 目录、clone 仓库并完成注册，之后可按模版名直接引用。

---

## 模板一：yangtzeu-report — 长江大学通用学术汇报

| 项目       | 内容                                                              |
|------------|-------------------------------------------------------------------|
| 适用场景   | 学术会议汇报、课堂汇报、组会（周报式）汇报                         |
| 画布       | 1024×768（4:3，`ppt43`）                                           |
| 主色       | `#F07F09`（橙）+ `#9F2936`（红）                                    |
| 结构       | 1 Master，14 Layouts（13 原生 + 1 新增 layout_toc），6 页原型 + 9 个 definition-only 版式 |
| 路径       | `decks/yangtzeu-report/`                                          |

### 页面原型（6 页）

<table>
  <tr>
    <td align="center"><img src="decks/yangtzeu-report/previews/001_cover.png"    width="320"><br><b>封面</b></td>
    <td align="center"><img src="decks/yangtzeu-report/previews/002_content.png"  width="320"><br><b>内容页</b></td>
    <td align="center"><img src="decks/yangtzeu-report/previews/003_chapter.png"  width="320"><br><b>章节页</b></td>
  </tr>
  <tr>
    <td align="center"><img src="decks/yangtzeu-report/previews/004_content.png"  width="320"><br><b>内容页</b></td>
    <td align="center"><img src="decks/yangtzeu-report/previews/005_ending.png"   width="320"><br><b>致谢结尾页</b></td>
    <td align="center"><img src="decks/yangtzeu-report/previews/006_toc.png"      width="320"><br><b>目录</b></td>
  </tr>
</table>

### 版式定义（9 个，definition-only）

<table>
  <tr>
    <td align="center"><img src="decks/yangtzeu-report/previews/layout_layout_02.png" width="280"><br><b>标题和内容</b></td>
    <td align="center"><img src="decks/yangtzeu-report/previews/layout_layout_04.png" width="280"><br><b>两栏内容</b></td>
    <td align="center"><img src="decks/yangtzeu-report/previews/layout_layout_05.png" width="280"><br><b>比较</b></td>
  </tr>
  <tr>
    <td align="center"><img src="decks/yangtzeu-report/previews/layout_layout_06.png" width="280"><br><b>仅标题</b></td>
    <td align="center"><img src="decks/yangtzeu-report/previews/layout_layout_08.png" width="280"><br><b>内容与标题</b></td>
    <td align="center"><img src="decks/yangtzeu-report/previews/layout_layout_09.png" width="280"><br><b>图片与标题</b></td>
  </tr>
  <tr>
    <td align="center"><img src="decks/yangtzeu-report/previews/layout_layout_10.png" width="280"><br><b>标题和竖排文字</b></td>
    <td align="center"><img src="decks/yangtzeu-report/previews/layout_layout_11.png" width="280"><br><b>垂直排列标题与文本</b></td>
    <td align="center"><img src="decks/yangtzeu-report/previews/layout_layout_12.png" width="280"><br><b>自定义版式</b></td>
  </tr>
</table>

---

## 模板二：yangtzeu-standard — 长江大学理工类院系标准蓝色

| 项目       | 内容                                                              |
|------------|-------------------------------------------------------------------|
| 适用场景   | 院系学术汇报、项目答辩、课题进展、年度工作总结                     |
| 画布       | 1280×720（16:9，`ppt169`）                                         |
| 主色       | `#1F4E79`（深蓝）+ `#5B9BD5`（中蓝）                                |
| 结构       | 1 Master，11 Layouts，13 页原型                                     |
| 路径       | `decks/yangtzeu-standard/`                                        |

### 页面原型（13 页）

<table>
  <tr>
    <td align="center"><img src="decks/yangtzeu-standard/previews/01_cover.png"                width="320"><br><b>封面</b></td>
    <td align="center"><img src="decks/yangtzeu-standard/previews/02_toc.png"                  width="320"><br><b>目录</b></td>
    <td align="center"><img src="decks/yangtzeu-standard/previews/03_chapter.png"              width="320"><br><b>章节过渡</b></td>
  </tr>
  <tr>
    <td align="center"><img src="decks/yangtzeu-standard/previews/04_content_text.png"         width="320"><br><b>正文 · 双栏</b></td>
    <td align="center"><img src="decks/yangtzeu-standard/previews/05_content_image_large.png"  width="320"><br><b>正文 · 大图</b></td>
    <td align="center"><img src="decks/yangtzeu-standard/previews/06_content_image_double.png" width="320"><br><b>正文 · 双图</b></td>
  </tr>
  <tr>
    <td align="center"><img src="decks/yangtzeu-standard/previews/07_content_numbered.png"     width="320"><br><b>正文 · 编号列表</b></td>
    <td align="center"><img src="decks/yangtzeu-standard/previews/08a_content_cards.png"       width="320"><br><b>要点卡片 A</b></td>
    <td align="center"><img src="decks/yangtzeu-standard/previews/08b_content_cards.png"       width="320"><br><b>要点卡片 B</b></td>
  </tr>
  <tr>
    <td align="center"><img src="decks/yangtzeu-standard/previews/08c_content_cards.png"       width="320"><br><b>要点卡片 C</b></td>
    <td align="center"><img src="decks/yangtzeu-standard/previews/09a_content_images.png"      width="320"><br><b>方形图片集</b></td>
    <td align="center"><img src="decks/yangtzeu-standard/previews/09b_content_images.png"      width="320"><br><b>竖形图片集</b></td>
  </tr>
  <tr>
    <td align="center"><img src="decks/yangtzeu-standard/previews/10_ending.png"               width="320"><br><b>结束页</b></td>
    <td></td>
    <td></td>
  </tr>
</table>

---

## 添加新模板

1. 在 `decks/` 下新建 `<deck_id>/` 目录
2. 确保内部结构符合 ppt-master workspace 合同：
   ```
   <deck_id>/
   ├── templates/          # design_spec.md + SVG 原型
   ├── images/             # 位图资产
   ├── icons/              # 矢量图标（可选）
   └── previews/           # 预览图（可选）
   ```
3. 更新本 README 的模板列表与预览展示

模板之间相互独立，无依赖关系。

## 授权与使用注意

`decks/yangtzeu-report/` 包含长江大学校徽图案与"长大 长新"校训文字。**仅限长江大学校内学习、教学与学术交流使用**；请勿用于商业用途或暗示学校官方背书。
