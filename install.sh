#!/usr/bin/env bash
# install.sh — 将 yangtzeu_report 模版安装到本机 ppt-master 模版库并注册全局索引。
# 用法: ./install.sh /path/to/ppt-master
set -euo pipefail

REPO="${1:-}"
if [[ -z "$REPO" ]]; then
  echo "Usage: $0 /path/to/ppt-master" >&2
  exit 1
fi

SKILL_DIR="$REPO/skills/ppt-master"
CONFIG_PY="$SKILL_DIR/scripts/config.py"
DEST="$SKILL_DIR/templates/decks/yangtzeu_report"
SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

[[ -f "$CONFIG_PY" ]] || { echo "Error: $CONFIG_PY not found — is '$REPO' the ppt-master repo root?" >&2; exit 1; }
[[ -d "$SRC_DIR/templates" ]] || { echo "Error: run this script from the yangtzeu_report workspace root." >&2; exit 1; }

# 1. 拷贝模版 workspace(仅模版资产;exports/ 为审查证据,不安装)
if [[ -e "$DEST" ]]; then
  echo "Error: $DEST already exists; remove it first to reinstall." >&2
  exit 1
fi
mkdir -p "$DEST"
cp -R "$SRC_DIR/templates" "$DEST/templates"
[[ -d "$SRC_DIR/images" ]] && cp -R "$SRC_DIR/images" "$DEST/images"
[[ -d "$SRC_DIR/icons" ]] && cp -R "$SRC_DIR/icons" "$DEST/icons"
echo "[1/3] Copied template workspace -> $DEST"

# 2. 幂等打 ppt43_960 画布补丁(纯数据表扩展;详见 README「ppt43_960 画布补丁说明」)
if grep -q "'ppt43_960'" "$CONFIG_PY"; then
  echo "[2/3] ppt43_960 canvas patch already present, skipped"
else
  python3 - "$CONFIG_PY" <<'PYEOF'
import pathlib, sys

path = pathlib.Path(sys.argv[1])
text = path.read_text()

canvas_anchor = """        'aspect_ratio': '4:3',
        'use_case': 'Traditional projectors'
    },"""
canvas_entry = canvas_anchor + """
    'ppt43_960': {
        'name': 'PPT 4:3 (960×720)',
        'dimensions': '960×720',
        'viewbox': '0 0 960 720',
        'width': 960,
        'height': 720,
        'aspect_ratio': '4:3',
        'use_case': 'Mirrored 4:3 PPTX sources at 96 DPI (10×7.5in); traditional projectors'
    },"""

margin_anchor = """        'content_width': 924,
        'content_height': 608
    },"""
margin_entry = margin_anchor + """
    'ppt43_960': {
        'top': 50,
        'right': 48,
        'bottom': 50,
        'left': 48,
        'content_width': 864,
        'content_height': 620
    },"""

for anchor, entry, label in [
    (canvas_anchor, canvas_entry, "CANVAS_FORMATS"),
    (margin_anchor, margin_entry, "LAYOUT_MARGINS"),
]:
    if anchor not in text:
        sys.exit(
            f"Error: cannot locate the {label} ppt43 anchor in {path}.\n"
            "Your ppt-master version may differ; apply the ppt43_960 patch manually "
            "as documented in README.md (「ppt43_960 画布补丁说明」)."
        )
    text = text.replace(anchor, entry, 1)

path.write_text(text)
print("[2/3] Applied ppt43_960 canvas patch to config.py")
PYEOF
fi

# 3. 注册全局发现索引
python3 "$SKILL_DIR/scripts/register_template.py" yangtzeu_report --kind deck
echo "[3/3] Registered in decks index. Done."
