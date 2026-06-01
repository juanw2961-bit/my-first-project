$ErrorActionPreference = "Stop"

$readme = Join-Path $PSScriptRoot "..\README.md"
if (-not (Test-Path $readme)) {
  throw "README.md is missing"
}

$content = Get-Content $readme -Raw
if ($content -notmatch "我的第一个项目") {
  throw "README.md must include the Chinese project title"
}

Write-Host "Project check passed"
