set nocompatible

" Sets auto indent when moving to next line
filetype plugin indent on

" Color Scheme
colo torte

syntax on

" Tab settings
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab

" Sets line number for visibility
set number

" Auto inserts closing brace and indents when entering opening brace
inoremap {<Cr> {<Cr>}<Esc>ko
