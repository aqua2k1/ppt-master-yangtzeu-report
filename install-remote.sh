#!/bin/sh
# install-remote.sh — yangtzeu_report 模版一行安装引导(macOS / Linux)。
#
#   curl -fsSL https://raw.githubusercontent.com/<USER>/<REPO>/main/install-remote.sh | sh
#
# 行为:下载模版仓库归档 -> 解压到临时目录 -> 运行 install.py -> 自动清理。
# 环境变量(均可选):
#   PPT_MASTER          ppt-master 仓库路径(默认:pi 技能标准位置 ~/.pi/agent/git/github.com/hugohe3/ppt-master)
#   YANGTZEU_REPO_URL   仓库地址(https://github.com/<USER>/<REPO>)或完整的 .tar.gz 归档地址
#   YANGTZEU_REPO_REF   分支/标签(默认:main)
set -eu

REPO_URL="${YANGTZEU_REPO_URL:-https://github.com/<USER>/<REPO>}"
REF="${YANGTZEU_REPO_REF:-main}"
PPT_MASTER="${PPT_MASTER:-$HOME/.pi/agent/git/github.com/hugohe3/ppt-master}"

case "$REPO_URL" in
  *.tar.gz|*.tgz) ARCHIVE_URL="$REPO_URL" ;;
  *github.com*)  ARCHIVE_URL="https://codeload.github.com/$(echo "$REPO_URL" | sed -E 's#.*github\.com[:/]##; s#\.git$##; s#/$##')/tar.gz/refs/heads/$REF" ;;
  *) echo "Error: YANGTZEU_REPO_URL must be a GitHub repo URL or a direct .tar.gz archive URL." >&2; exit 1 ;;
esac

echo ">> Downloading $ARCHIVE_URL"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT INT TERM

if command -v curl >/dev/null 2>&1; then
  curl -fsSL "$ARCHIVE_URL" -o "$TMP/repo.tar.gz"
elif command -v wget >/dev/null 2>&1; then
  wget -q "$ARCHIVE_URL" -O "$TMP/repo.tar.gz"
else
  echo "Error: curl or wget is required." >&2; exit 1
fi

tar -xzf "$TMP/repo.tar.gz" -C "$TMP"
SRC_DIR="$(find "$TMP" -mindepth 1 -maxdepth 1 -type d | head -n 1)"
[ -n "$SRC_DIR" ] && [ -d "$SRC_DIR/templates" ] || { echo "Error: archive does not contain the template workspace." >&2; exit 1; }

if command -v python3 >/dev/null 2>&1; then PY=python3; else PY=python; fi
echo ">> Installing into $PPT_MASTER"
"$PY" "$SRC_DIR/install.py" "$PPT_MASTER"
echo ">> Done."
