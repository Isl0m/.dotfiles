" General
set nocompatible
set relativenumber
set nobackup
set noswapfile
colorscheme murphy
" set wildmode=longest,list,full

" Text and Indent
filetype plugin indent on
syntax on
set autoindent
set smartindent
set textwidth=80
set colorcolumn=80
set shiftwidth=4
set tabstop=4
set expandtab
set expandtab
set nowrap

" Search

" Mappings
nnoremap <SPACE> <Nop>

let mapleader = " "
nnoremap <Leader>n :noh<CR>
nnoremap <Leader>ss :w<CR>:source %<CR>

inoremap jj <Esc>

" Exmaple of creating snippents

set matchpairs+=<:>

