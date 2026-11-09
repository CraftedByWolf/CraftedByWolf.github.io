# Copies wallpaper/ (plan.js, index.html) into Lively's library and reloads it.
# Run after editing wallpaper/plan.js:  right-click -> Run with PowerShell
$src = Join-Path $PSScriptRoot "wallpaper\*"
$dst = "$env:LOCALAPPDATA\Lively Wallpaper\Library\wallpapers\suriya-roadmap"
New-Item -ItemType Directory -Force $dst | Out-Null
Copy-Item $src $dst -Force
& "C:\Program Files\Lively Wallpaper\Lively.exe" setwp --file $dst
Write-Host "Wallpaper updated."
