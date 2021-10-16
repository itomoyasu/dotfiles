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
Plug 'posva/vim-vue'
Plug 'leafgarland/typescript-vim'
Plug 'ctrlpvim/ctrlp.vim'
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
call plug#end()



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
let mapleader = "\<Space>"

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
nmap <silent> ,f :<C-u>DeniteBufferDir file/rec<CR>
nmap <silent> ,g :<C-u>Denite grep<CR>
nmap <silent> ,G :<C-u>DeniteCursorWord grep<CR>
nmap <silent> ,b :<C-u>Denite buffer<CR>
nmap <silent> ,r :<C-u>Denite file_mru<CR>

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
