syntax on

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set encoding=utf-8

set updatetime=300
set shortmess+=c

set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

set guicursor=
set nohlsearch
set hidden
set noerrorbells

set relativenumber
set nu
set nowrap

set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir 
set undofile

set incsearch
set scrolloff=15
set cmdheight=2

set colorcolumn=120
highlight Normal guibg=none

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'jiangmiao/auto-pairs'
Plug 'mbbill/undotree'
call plug#end()

colorscheme gruvbox

let mapleader = " "

inoremap jj <ESC>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>ps :Buffers<CR>
nnoremap <leader>e :GFiles<CR>

nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>
vnoremap <S-Up> :m '<-2<CR>gv=gv
vnoremap <S-Down> :m '>+1<CR>gv=gv

"autocmd BufNewFile *.cpp 0r ~/.config/nvim/templates/toto.cpp

