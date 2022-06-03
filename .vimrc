set nocompatible

" Sets auto indent when moving to next line
filetype plugin indent on

" Color Scheme
colo elflord

syntax on

" Tab settings
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab

" Accessibility settings
set number
set cc=120
highlight ColorColumn ctermbg=lightgrey

" Auto inserts closing brace and indents when entering opening brace
inoremap {<Cr> {<Cr>}<Esc>ko

" Sets tab for autocompletion (within file)
inoremap <Tab> <C-n>
