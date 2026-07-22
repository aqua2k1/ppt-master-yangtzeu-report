# ppt-master 模板集合

本仓库收集 [ppt-master](https://github.com/hugohe3/ppt-master) 可用的独立 Deck 模板。每个模板是一个自包含的工作空间——clone 即用，无需安装脚本。

## 目录结构

```text
ppt-master-yangtzeu-report/
├── decks/                  # 独立 Deck 模板（每个子目录是一个 workspace root）
│   └── yangtzeu_report/    # 示例：长江大学学术汇报
├── brands/                 # 预留：共享品牌身份
├── layouts/                # 预留：共享版式结构
└── README.md               # 本文件
```

## 可用模板

| 模板 | 路径 | 适用场景 | 画布 |
|---|---|---|---|
| 长江大学通用学术汇报 | `decks/yangtzeu_report/` | 学术会议汇报、课堂汇报、组会汇报 | 1024×768 (4:3) |

## 使用方式

在 ppt-master 对话中提供工作空间根路径即可触发模板：

```text
使用模板 ./decks/yangtzeu_report 生成一份关于〈主题〉的 PPT
```

也可以 clone 单个模板目录后单独使用。

## 添加新模板

1. 在 `decks/` 下新建 `<deck_id>/` 目录
2. 确保内部结构符合 ppt-master workspace 合同：
   ```
   <deck_id>/
   ├── templates/          # design_spec.md + SVG 原型
   ├── images/             # 位图资产
   └── previews/           # 预览图（可选）
   ```
3. 更新本 README 的模板列表

模板之间相互独立，无依赖关系。
