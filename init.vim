call plug#begin('C:/Users/kengo/AppData/Local/nvim/plugged')
" below are some vim plugins for demonstration purpose.
" add the plugin you want to use here.
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'

" IDE
Plug 'neoclide/coc.nvim'

" nvim configs add-ons
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" tabline/breadcrumbs
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" file explorer
Plug 'ryanoasis/vim-devicons'

" file search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

" enable theming support
if (has("termguicolors"))
  set termguicolors
endif

" Theming
syntax enable
set nu
set expandtab
set tabstop=4
set shiftwidth=4
set list
colorscheme onedark


" NERDTree Configs
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | wincmd p | endif
set guifont=FiraCode_Nerd_Font:h11

" vim-airline
let g:airline_powerline_fonts=1

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
