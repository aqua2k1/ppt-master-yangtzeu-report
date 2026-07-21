# install-remote.ps1 — yangtzeu_report 模版一行安装引导(Windows PowerShell)。
#
#   powershell -c "irm https://raw.githubusercontent.com/aqua2k1/ppt-master-yangtzeu-report/main/install-remote.ps1 | iex"
#
# 行为:下载模版仓库归档 -> 解压到临时目录 -> 运行 install.py -> 自动清理。
# 环境变量(均可选,执行前设置):
#   $env:PPT_MASTER          ppt-master 仓库路径(默认:pi 技能标准位置 $HOME\.pi\agent\git\github.com\hugohe3\ppt-master)
#   $env:YANGTZEU_REPO_URL   仓库地址(https://github.com/aqua2k1/ppt-master-yangtzeu-report)或完整的 .zip 归档地址
#   $env:YANGTZEU_REPO_REF   分支/标签(默认:main)
$ErrorActionPreference = 'Stop'

$RepoUrl   = if ($env:YANGTZEU_REPO_URL) { $env:YANGTZEU_REPO_URL } else { 'https://github.com/aqua2k1/ppt-master-yangtzeu-report' }
$Ref       = if ($env:YANGTZEU_REPO_REF) { $env:YANGTZEU_REPO_REF } else { 'main' }
$PptMaster = if ($env:PPT_MASTER)        { $env:PPT_MASTER }        else { Join-Path $HOME '.pi\agent\git\github.com\hugohe3\ppt-master' }

if ($RepoUrl -match '\.zip$') {
    $ArchiveUrl = $RepoUrl
} elseif ($RepoUrl -match 'github\.com') {
    $slug = ($RepoUrl -replace '.*github\.com[:/]', '' -replace '\.git$', '' -replace '/$', '')
    $ArchiveUrl = "https://codeload.github.com/$slug/zip/refs/heads/$Ref"
} else {
    Write-Error 'YANGTZEU_REPO_URL must be a GitHub repo URL or a direct .zip archive URL.'
    exit 1
}

Write-Host ">> Downloading $ArchiveUrl"
$Tmp = New-Item -ItemType Directory -Path (Join-Path ([System.IO.Path]::GetTempPath()) ([System.Guid]::NewGuid().ToString()))
try {
    $ZipPath = Join-Path $Tmp.FullName 'repo.zip'
    Invoke-WebRequest -Uri $ArchiveUrl -OutFile $ZipPath -UseBasicParsing
    Expand-Archive -Path $ZipPath -DestinationPath $Tmp.FullName

    $SrcDir = Get-ChildItem $Tmp.FullName -Directory | Select-Object -First 1
    if (-not $SrcDir -or -not (Test-Path (Join-Path $SrcDir.FullName 'templates'))) {
        Write-Error 'Archive does not contain the template workspace.'
        exit 1
    }

    Write-Host ">> Installing into $PptMaster"
    $InstallPy = Join-Path $SrcDir.FullName 'install.py'
    if (Get-Command py -ErrorAction SilentlyContinue) {
        & py -3 $InstallPy $PptMaster
    } else {
        & python $InstallPy $PptMaster
    }
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
    Write-Host '>> Done.'
} finally {
    Remove-Item -Recurse -Force $Tmp.FullName -ErrorAction SilentlyContinue
}
