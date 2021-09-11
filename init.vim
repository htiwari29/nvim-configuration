syntax on

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set guicursor=
set nohlsearch
set hidden
set noerrorbells

set relativenumber
set nu
set nowrap

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set signcolumn=yes
set incsearch
set scrolloff=20
set cmdheight=2

set colorcolumn=80
highlight Normal guibg=none

let mapleader = " "
let g:python3_host_prog="/usr/local/opt/python@3.9/bin/python3"

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf.vim'

call plug#end()

if executable('rg')
    let g:rg_derive_root='true'
endif

colorscheme gruvbox

inoremap jj <ESC>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>ps :Buffers<CR>
nnoremap <leader>g :GFiles<CR>

autocmd BufNewFile *.cpp 0r ~/.config/nvim/templates/skeleton.cpp
autocmd BufNewFile *.py 0r ~/.config/nvim/templates/skeleton.py
