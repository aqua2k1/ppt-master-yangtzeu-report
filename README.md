# ppt-master-yangtzeu-report — 长江大学 PPT 模板集合

本仓库收集[ppt-master](https://github.com/hugohe3/ppt-master) 可用的独立 Deck 模板。每个模板是一个自包含的工作空间——clone 即用，无需安装脚本。

## 目录结构

```text
ppt-master-yangtzeu-report/
├── decks/                     # 独立 Deck 模板（每个子目录是一个 workspace root）
│   ├── yangtzeu_report/       # 长江大学通用学术汇报（4:3 红橙）
│   └── yangtzeu-standard/     # 长江大学理工类院系标准蓝色（16:9）
├── brands/                    # 预留：共享品牌身份
├── layouts/                   # 预留：共享版式结构
└── README.md                  # 本文件
```

## 可用模板

| 模板 | 路径 | 适用场景 | 画布 | 主色 | 结构 |
|---|---|---|---|---|---|
| 长江大学通用学术汇报 | `decks/yangtzeu_report/` | 学术会议汇报、课堂汇报、组会汇报 | 1024×768 (4:3) | `#F07F09` | 1 Master, 13 Layouts, 5 页原型 |
| 长江大学理工类院系标准蓝色 | `decks/yangtzeu-standard/` | 院系学术汇报、项目答辩、课题进展、工作总结 | 1280×720 (16:9) | `#1F4E79` | 1 Master, 11 Layouts, 13 页原型 |

## 使用方式

本仓库模板无需安装脚本——clone 即用。在 ppt-master 对话中提供**显式工作空间根路径**（含 `templates/design_spec.md` 的目录）即可触发模板应用。

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
3. 更新本 README 的模板列表

模板之间相互独立，无依赖关系。

## 授权与使用注意

`decks/yangtzeu_report/` 包含长江大学校徽图案与"长大 长新"校训文字。**仅限长江大学校内学习、教学与学术交流使用**；请勿用于商业用途或暗示学校官方背书。
