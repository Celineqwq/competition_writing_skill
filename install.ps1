#Requires -Version 5.1
$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$skillsDir = if ($env:CODEX_HOME) { Join-Path $env:CODEX_HOME 'skills' } else { Join-Path $HOME '.codex\skills' }

New-Item -ItemType Directory -Force -Path $skillsDir | Out-Null

Get-ChildItem -LiteralPath (Join-Path $root 'skills') -Directory | ForEach-Object {
    $dest = Join-Path $skillsDir $_.Name
    if (Test-Path -LiteralPath $dest) {
        Write-Host "更新已有技能: $($_.Name)"
        Copy-Item -Path (Join-Path $_.FullName '*') -Destination $dest -Recurse -Force
    } else {
        Write-Host "安装技能: $($_.Name)"
        Copy-Item -LiteralPath $_.FullName -Destination $dest -Recurse -Force
    }
}

Write-Host "完成，已安装到 $skillsDir"
