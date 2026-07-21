#!/usr/bin/env bash
# install.sh — macOS / Linux 安装入口(Windows 请用 install.bat)。
# 跨平台实现见 install.py;Windows 上也可在 Git Bash / WSL 中运行本脚本。
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if command -v python3 >/dev/null 2>&1; then
  PY=python3
else
  PY=python
fi
exec "$PY" "$DIR/install.py" "$@"
