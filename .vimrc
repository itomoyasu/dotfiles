set nocompatible
set noswapfile
filetype off

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/AutoComplPop'
Plug 'nvie/vim-flake8'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/ctrlp-matchfuzzy'
Plug 'ryanoasis/vim-devicons'

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-lsp-icons'
Plug 'mattn/vim-goimports'

Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

Plug 'vim-airline/vim-airline'

""color setting
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

call plug#end()

filetype plugin on
filetype indent on

syntax enable
filetype on

set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp
set fileformats=unix,dos,mac
" colorscheme catppuccin

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


let mapleader = "\<Space>"

" for tabview
set wildmenu

" white space
set list
set listchars=tab:>-,extends:<,trail:-
highlight SpecialKey term=underline ctermfg=darkgray guifg=darkgray


" goimport
let g:goimports = 1
let g:goimports_simplify = 1

" coc
set statusline^=%{coc#status()}

" ctrlp
nmap <silent> ,r :<C-u>CtrlPMRUFiles<CR>
nmap <silent> ,d :<C-u>CtrlPDir<CR>
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:15'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_func = {'match': 'ctrlp_matchfuzzy#matcher'}

" vim-lsp
nmap <silent> gd :LspDefinition<CR>
nmap <silent> <f2> :LspRename<CR>
nmap <silent> <Leader>d :LspTypeDefinition<CR>
nmap <silent> <Leader>r :LspReferences<CR>
nmap <silent> <Leader>i :LspImplementation<CR>
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:asyncomplete_popup_delay = 200
let g:lsp_text_edit_enabled = 0
