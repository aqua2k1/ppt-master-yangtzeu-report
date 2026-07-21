# yangtzeu_report — 长江大学通用学术汇报模板

[ppt-master](https://github.com/hugohe3/ppt-master) Create Deck 模版,从真实 4:3 学术汇报 PPTX 原样(mirror)提取的可复用 deck 模版。

- **适用场景**:学术会议汇报、课堂汇报、组会(周报式)汇报
- **画布**:960×720(4:3,`ppt43_960`)
- **主题**:浅色白底;主色 `#F07F09`(橙)+ `#9F2936`/`#902430`(红);华文中宋
- **结构**:1 个母版 + 13 个原生 PowerPoint 版式(标题幻灯片、标题和内容、节标题、两栏内容、比较、仅标题、空白、内容与标题、图片与标题、标题和竖排文字、垂直排列标题与文本、自定义版式、2_自定义版式)
- **页面原型**:封面 / 内容页×2(空白版式)/ 章节页 / 致谢结尾页,共 5 页原型 + 9 个 definition-only 版式定义
- **无个人信息**:封面、章节、结尾页均为原生空占位符,由使用者(真人或 LLM)填写;不含姓名、日期、作者等任何个人元数据

## 目录结构

```text
templates/            # design_spec.md + 14 个 SVG 原型/版式定义
images/               # 母版与版式引用的位图资产(校徽、背景、渐变条等)
exports/              # 审查用 PPTX(派生证据,不参与模版应用;git 忽略)
```

## 使用方式

**方式一:直接使用(推荐)** — 无需安装。在 ppt-master 对话中把本仓库路径作为显式 workspace root 传给 Generate PPTX Step 3:

```text
使用模版 <本仓库路径> 生成一份关于……的汇报 PPT
```

**方式二:安装到本机 ppt-master 模版库** — 运行安装脚本(Windows / Linux / macOS 均可),脚本会:

1. 把 `templates/` 与 `images/` 拷贝到 `<ppt-master>/skills/ppt-master/templates/decks/yangtzeu_report/`
2. 幂等地为 `<ppt-master>/skills/ppt-master/scripts/config.py` 打上 `ppt43_960` 画布补丁(见下)
3. 运行 `register_template.py yangtzeu_report --kind deck` 注册到全局发现索引

```bash
# macOS / Linux
./install.sh /path/to/ppt-master

# Windows(CMD / PowerShell)
install.bat C:\path\to\ppt-master

# 三平台通用(直接调用跨平台实现;Windows 上也可用 py -3 或 python)
python3 install.py /path/to/ppt-master
```

> Windows 上也可以使用 Git Bash / WSL 运行 `install.sh`。三个入口调用同一个 `install.py`,行为完全一致。

## ppt43_960 画布补丁说明

ppt-master 的全局注册器要求 `canvas_format` 必须是 `config.py` `CANVAS_FORMATS` 表中的已知键,且其像素尺寸与每个 SVG 的根 `width`/`height`/`viewBox` 完全一致。内置的 `ppt43` 为 1024×768,而本模版为忠实保留源 PPTX 的原生几何,使用 960×720(10×7.5 英寸 @ 96 DPI,真实 4:3 PPTX 的常见像素尺寸)。

补丁是纯数据表扩展(不修改任何逻辑,所有消费方均为 `.get()` 查询,向后兼容):

- `CANVAS_FORMATS['ppt43_960']`:960×720, viewBox `0 0 960 720`
- `LAYOUT_MARGINS['ppt43_960']`:按源母版正文区(左右 48px)

不注册索引、仅按方式一使用时**无需补丁**。

## 授权与使用注意

本模版包含长江大学校徽图案与"长大 长新"校训文字,属于学校标识资产。**仅限长江大学校内学习、教学与学术交流使用**;请勿用于商业用途或暗示学校官方背书。发布与转发时请保留本说明。
