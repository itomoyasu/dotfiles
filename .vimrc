set nocompatible
set noswapfile
filetype off

call plug#begin('~/.vim/plugged')

Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/denite.nvim'
Plug 'Shougo/defx.nvim'
Plug 'Shougo/neomru.vim'

Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'mattn/zencoding-vim'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/AutoComplPop'
Plug 'nvie/vim-pep8'
Plug 'fatih/vim-go'
Plug 'posva/vim-vue'
Plug 'zchee/vim-flatbuffers'
Plug 'leafgarland/typescript-vim'

call plug#end()

filetype plugin on
filetype indent on

syntax enable
filetype on

set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp
set fileformats=unix,dos,mac

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

""color setting
colorscheme darkblue

let g:deoplete#enable_at_startup = 1

" for tabview
set wildmenu

" white space
set list
set listchars=tab:>-,extends:<,trail:-
highlight SpecialKey term=underline ctermfg=darkgray guifg=darkgray

" js indentation
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" TypeScript
autocmd BufRead,BufNewFile *.ts set filetype=typescript

" denite.vim mappings
nmap <silent> ,f :<C-u>Denite file/rec<CR>
nmap <silent> ,g :<C-u>Denite grep<CR>
nmap <silent> ,b :<C-u>Denite buffer<CR>
nmap <silent> ,r :<C-u>Denite file_mru<CR>

" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
        \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
        \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
        \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
        \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
        \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
        \ denite#do_map('toggle_select').'j'
endfunction
