# yangtzeu_report — 长江大学通用学术汇报模板

[ppt-master](https://github.com/hugohe3/ppt-master) Create Deck 模版，从真实 4:3 学术汇报 PPTX 原样（mirror）提取的可复用 deck 模版。

- **适用场景**：学术会议汇报、课堂汇报、组会（周报式）汇报
- **画布**：960×720（4:3，`ppt43_960`）
- **主题**：浅色白底；主色 `#F07F09`（橙）+ `#9F2936` / `#902430`（红）；华文中宋
- **结构**：1 个母版 + 13 个原生 PowerPoint 版式（标题幻灯片、标题和内容、节标题、两栏内容、比较、仅标题、空白、内容与标题、图片与标题、标题和竖排文字、垂直排列标题与文本、自定义版式、2_自定义版式）
- **页面原型**：封面 / 内容页×2（空白版式）/ 章节页 / 致谢结尾页，共 5 页原型 + 9 个 definition-only 版式定义
- **无个人信息**：封面、章节、结尾页均为原生空占位符，由使用者填写；不含姓名、日期、作者等任何个人元数据

## 目录结构

```text
templates/            # design_spec.md + 14 个 SVG 原型/版式定义
images/               # 母版与版式引用的位图资产（校徽、背景、渐变条等）
```

## 使用方式

本模版无需安装脚本——clone 即用。在 ppt-master 对话中提供**显式工作空间根路径**（含 `templates/design_spec.md` 的目录）即可触发模版应用。

### 方式一：Clone 到当前工作空间（推荐）

将仓库 clone 到当前工作目录，然后在 ppt-master 对话中以相对路径引用：

```bash
git clone https://github.com/aqua2k1/ppt-master-yangtzeu-report
```

在 ppt-master 对话中：

> 使用模版 ./ppt-master-yangtzeu-report 生成一份关于〈主题〉的汇报 PPT

用后可直接删除，不影响已生成的 PPTX。

### 方式二：安装到 ppt-master 模版库

如需将模版安装到 ppt-master 的集中模版库以便长期复用，在 ppt-master 对话中直接告知 AI 即可：

> 将 https://github.com/aqua2k1/ppt-master-yangtzeu-report 安装到 ppt-master 的 decks 模版库

AI 会自动定位 ppt-master 的 `templates/decks/` 目录、clone 仓库、补充画布配置（如需要）并完成注册。

## ppt43_960 画布说明

ppt-master 内置 `ppt43` 为 1024×768，而本模版忠实保留源 PPTX 原生几何，使用 **960×720**（10×7.5 英寸 @ 96 DPI，真实 4:3 PPTX 常见尺寸）。

- **方式一使用时无需关心**——ppt-master 直接读取 SVG 的 viewBox 和 design_spec.md 中的声明，不依赖全局配置。
- **方式二安装时**，AI 会自动检测并在 `config.py` 中补充 `ppt43_960` 条目（纯数据扩展，向后兼容，不影响已有功能）。

## 授权与使用注意

本模版包含长江大学校徽图案与"长大 长新"校训文字，属于学校标识资产。**仅限长江大学校内学习、教学与学术交流使用**；请勿用于商业用途或暗示学校官方背书。发布与转发时请保留本说明。
