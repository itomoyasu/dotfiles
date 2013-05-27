" vundle setting
set nocompatible
filetype off

if has ('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))
 
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'gmarik/vundle'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'JavaScript-syntax'
NeoBundle 'vim-scripts/AutoComplPop'
" NeoBundle 'hallettj/jslint.vim'
NeoBundle 'jsx/jsx.vim'
NeoBundle 'nvie/vim-pep8'
NeoBundle 'mitechie/pyflakes-pathogen'
NeoBundle 'sudo.vim'
NeoBundle 'hotchpotch/perldoc-vim'
NeoBundle 'petdance/vim-perl'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'scrooloose/nerdtree.git'

NeoBundleCheck

filetype plugin on
filetype indent on

syntax enable
filetype on

set encoding=utf-8
set fileencodings=utf8,iso-2022-jp,cp932,euc-jp

""search setting
set wrapscan
set hlsearch
nmap <Esc><Esc> : nohlsearch<CR><Esc>

""edit setting
set number
set showmatch
set laststatus=2
set statusline=%f\[%{&fenc==''?&enc:&fenc}][%{&ff}]%=%8l:%c%8P
set showcmd
set smartindent
set incsearch

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start

""perl setting
autocmd! BufNewFile,BufRead *.psgi setf filetype=perl
autocmd! BufNewFile,BufRead *.t setf filetype=perl

""color setting
colorscheme darkblue

""neocomplcache
let g:neocomplcache_enable_at_startup = 1
 
let g:neocomplcache_ctags_arguments_list = {
  \ 'perl' : '-R -h ".pm"'
  \ }
let g:neocomplcache_snippets_dir = "~/.vim/snippets"

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
            \ 'default'    : '',
            \ 'perl'       : $HOME . '/.vim/dict/perl.dict'
            \ }
" for snippets
imap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-n>"
smap <C-k> <Plug>(neocomplcache_snippets_expand)

" for nerdtree
map <C-n> :NERDTreeToggle<CR>

