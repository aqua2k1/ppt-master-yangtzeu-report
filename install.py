#!/usr/bin/env python3
"""install.py — 跨平台安装 yangtzeu_report 模版到本机 ppt-master 模版库并注册全局索引。

支持 Windows / Linux / macOS(需要 Python 3,ppt-master 本身即依赖)。

用法:
    python3 install.py /path/to/ppt-master      # macOS / Linux
    py -3 install.py C:\\path\\to\\ppt-master   # Windows(或用 python)
"""
from __future__ import annotations

import shutil
import subprocess
import sys
from pathlib import Path

TEMPLATE_ID = "yangtzeu_report"

CANVAS_ANCHOR = """        'aspect_ratio': '4:3',
        'use_case': 'Traditional projectors'
    },"""
CANVAS_ENTRY = CANVAS_ANCHOR + """
    'ppt43_960': {
        'name': 'PPT 4:3 (960×720)',
        'dimensions': '960×720',
        'viewbox': '0 0 960 720',
        'width': 960,
        'height': 720,
        'aspect_ratio': '4:3',
        'use_case': 'Mirrored 4:3 PPTX sources at 96 DPI (10×7.5in); traditional projectors'
    },"""

MARGIN_ANCHOR = """        'content_width': 924,
        'content_height': 608
    },"""
MARGIN_ENTRY = MARGIN_ANCHOR + """
    'ppt43_960': {
        'top': 50,
        'right': 48,
        'bottom': 50,
        'left': 48,
        'content_width': 864,
        'content_height': 620
    },"""


def fail(msg: str) -> None:
    print(f"Error: {msg}", file=sys.stderr)
    sys.exit(1)


def copy_workspace(src_dir: Path, dest: Path) -> None:
    if dest.exists():
        fail(f"{dest} already exists; remove it first to reinstall.")
    dest.mkdir(parents=True)
    shutil.copytree(src_dir / "templates", dest / "templates")
    for optional in ("images", "icons"):
        if (src_dir / optional).is_dir():
            shutil.copytree(src_dir / optional, dest / optional)
    print(f"[1/3] Copied template workspace -> {dest}")


def apply_canvas_patch(config_py: Path) -> None:
    text = config_py.read_text(encoding="utf-8")
    if "'ppt43_960'" in text:
        print("[2/3] ppt43_960 canvas patch already present, skipped")
        return
    for anchor, entry, label in (
        (CANVAS_ANCHOR, CANVAS_ENTRY, "CANVAS_FORMATS"),
        (MARGIN_ANCHOR, MARGIN_ENTRY, "LAYOUT_MARGINS"),
    ):
        if anchor not in text:
            fail(
                f"cannot locate the {label} ppt43 anchor in {config_py}.\n"
                "Your ppt-master version may differ; apply the ppt43_960 patch "
                "manually as documented in README.md (「ppt43_960 画布补丁说明」)."
            )
        text = text.replace(anchor, entry, 1)
    config_py.write_text(text, encoding="utf-8")
    print("[2/3] Applied ppt43_960 canvas patch to config.py")


def ensure_pyyaml() -> None:
    """register_template.py 需要 PyYAML;缺失时尽力自动安装(仅影响注册步骤)。"""
    try:
        import yaml  # noqa: F401
        return
    except ImportError:
        pass
    print("[*] PyYAML not found; trying to install it for the registration step...")
    for extra in ([], ["--user"]):
        result = subprocess.run(
            [sys.executable, "-m", "pip", "install", *extra, "pyyaml"],
            capture_output=True,
        )
        if result.returncode == 0:
            return
    print(
        "[!] Could not auto-install PyYAML. If registration fails, install it "
        "manually (e.g. pip install pyyaml / uv pip install pyyaml) and rerun "
        "register_template.py.",
        file=sys.stderr,
    )


def main() -> None:
    if len(sys.argv) != 2:
        fail(f"Usage: {Path(sys.argv[0]).name} /path/to/ppt-master")

    repo = Path(sys.argv[1]).expanduser().resolve()
    skill_dir = repo / "skills" / "ppt-master"
    config_py = skill_dir / "scripts" / "config.py"
    src_dir = Path(__file__).resolve().parent

    if not config_py.is_file():
        fail(f"{config_py} not found — is '{repo}' the ppt-master repo root?")
    if not (src_dir / "templates").is_dir():
        fail("templates/ not found beside this installer.")

    copy_workspace(src_dir, skill_dir / "templates" / "decks" / TEMPLATE_ID)
    apply_canvas_patch(config_py)
    ensure_pyyaml()

    registrar = skill_dir / "scripts" / "register_template.py"
    subprocess.run(
        [sys.executable, str(registrar), TEMPLATE_ID, "--kind", "deck"],
        check=True,
    )
    print("[3/3] Registered in decks index. Done.")


if __name__ == "__main__":
    main()
