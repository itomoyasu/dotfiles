" vundle setting
set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()
 
Bundle 'gmarik/vundle'
Bundle 'Shougo/neocomplcache'
Bundle 'mattn/zencoding-vim'
Bundle 'pangloss/vim-javascript'
Bundle 'JavaScript-syntax'
Bundle 'vim-scripts/AutoComplPop'
" Bundle 'hallettj/jslint.vim'
Bundle 'git://github.com/jsx/jsx.vim.git'
Bundle 'mitechie/pyflakes-pathogen'

filetype plugin on
filetype indent on

syntax enable
filetype on

set encoding=utf-8

""search setting
set wrapscan
set hlsearch
nmap <Esc><Esc> : nohlsearch<CR><Esc>

""edit setting
set number
set showmatch
set laststatus=2
set showcmd
set smartindent
set incsearch

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start

colorscheme darkblue

let g:neocomplcache_enable_at_startup = 1

