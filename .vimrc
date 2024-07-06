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
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/dev-icons'
call plug#end()

set nocompatible

" Sets auto indent when moving to next line
filetype plugin indent on

" Color Scheme
colo gruvbox
set background=dark

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

" Sets UTF encoding for devicons
set encoding=UTF-8

" Auto inserts closing brace and indents when entering opening brace
inoremap {<Cr> {<Cr>}<Esc>ko

" Sets tab for autocompletion (within file)
inoremap <Tab> <C-n>

" Lightline settings for statusline
set laststatus=2

" Gruvbox color scheme settings
nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

" NERDTree Configs
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | wincmd p | endif
set guifont=FiraCode_Nerd_Font:h11

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
