set encoding=utf-8
set number
set noswapfile
syntax on

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set fileformat=unix
filetype indent on
set clipboard+=unnamedplus
set colorcolumn=80

" Turn off search highlight
nnoremap ,<space> :nohlsearch<CR>


call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'  " Colorscheme gruvbox

Plug 'benekastah/neomake'
Plug 'janko-m/vim-test'

Plug 'neovimhaskell/haskell-vim',     {'for': 'haskell'}
Plug 'bitc/vim-hdevtools',            {'for': 'haskell'}
Plug 'eagletmt/ghcmod-vim',           {'for': 'haskell'}
Plug 'eagletmt/neco-ghc'
Plug 'Twinside/vim-hoogle',           {'for': 'haskell'}

Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'
call plug#end()

let g:gruvbox_termcolors=16
colorscheme gruvbox
set bg=dark

"Open NERDTree when nvim starts
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Toggle NERDTree with Ctrl-N
map <C-n> :NERDTreeToggle<CR>

"Show hidden files in NERDTree
let NERDTreeShowHidden=1

