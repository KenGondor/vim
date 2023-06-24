Set-Alias vim code
Set-Alias omp oh-my-posh.exe

# Run Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Import-Module Terminal-Icons

# Run Install-Module -Name z -Force

# Sets PSReadLine
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/easy-term.omp.json" | Invoke-Expression
