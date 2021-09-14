syntax on

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

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
set undodir=~/.vim/undodir
set undofile

set signcolumn=yes
set incsearch
set scrolloff=15
set cmdheight=2

set colorcolumn=100
highlight Normal guibg=none

let mapleader = " "

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf.vim'
Plug 'ycm-core/YouCompleteMe'
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
nnoremap <leader>e :GFiles<CR>

nnoremap <leader>gD :GoDef<Enter>
nnoremap <silent><leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent><leader>gf :YcmCompleter FixIt<CR>

autocmd BufNewFile *.py 0r ~/.config/nvim/templates/skeleton.py
autocmd BufNewFile *.cpp 0r ~/.config/nvim/templates/basic.cpp

let g:ycm_python_interpreter_path = '/usr/local/bin/python3.9'
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
            \ 'g:ycm_python_interpreter_path',
            \ 'g:ycm_python_sys_path'
            \]
let g:ycm_global_ycm_extra_conf = '~/.global_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = '1'


