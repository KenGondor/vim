# Ensure neovim is installed, and oh my posh is installed
# Run: 
# winget install --id Git.Git -e --source winget
# winget install Neovim.Neovim
# winget install JanDeDobbeleer.OhMyPosh -s winget

# Shortcuts for this profile
Set-Alias vim nvim
Set-Alias omp oh-my-posh.exe

# Run:
# Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Import-Module Terminal-Icons

# Run:
# Install-Module -Name z -Force

# Sets PSReadLine
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Utilities
function which ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue |
      Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/easy-term.omp.json" | Invoke-Expression
