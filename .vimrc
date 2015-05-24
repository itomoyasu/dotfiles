" vundle setting
set nocompatible
set noswapfile
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

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler.git'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'c9s/cpan.vim'

NeoBundleCheck

filetype plugin on
filetype indent on

syntax enable
filetype on

set encoding=utf-8
set fileencodings=japan
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

" for neosnippets
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory="~/.vim/snippets"

" for nerdtree
map <C-n> :NERDTreeToggle<CR>

" for unite.vim
let g:unite_enable_start_insert=1
nnoremap <silent> ,b :<C-u>Unite buffer<CR>
nnoremap <silent> ,f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,r :<C-u>Unite file_mru<CR>

au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q

" for tabview
set wildmenu

" white space
set list
set listchars=tab:>-,extends:<,trail:-
highlight SpecialKey term=underline ctermfg=darkgray guifg=darkgray
