@echo off
REM install.bat — Windows 安装入口(macOS / Linux 请用 install.sh)。
REM 用法: install.bat C:\path\to\ppt-master
setlocal
where py >nul 2>nul
if %errorlevel%==0 (
  py -3 "%~dp0install.py" %*
) else (
  python "%~dp0install.py" %*
)
endlocal
