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

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Plugins Installations
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
call plug#end()

" Lightline settings for statusline
set laststatus=2
