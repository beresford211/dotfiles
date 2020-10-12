syntax on

" No error bells if you exceed the line
set noerrorbells

" Try to indent automatically
set smartindent
set shiftwidth=4  " Set number of spaces per auto indentation

" incremental search
set incsearch

" Line numbering
set number
set relativenumber

" Cursor line hightlight
set cursorline

" Highlight matching brackets [{()}]
set showmatch

" No swap files
set noswapfile

set smartcase

set expandtab
set tabstop=4
set softtabstop=4

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:python3_host_prog = '/usr/local/bin/python3.9'

let g:coc_global_extensions = ['coc-explorer', 'coc-json', 'coc-tsserver', 'coc-import-cost', 'coc-eslint', 'coc-snippets', 'coc-template', 'coc-html', 'coc-css', 'coc-pyright', 'coc-git']

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'jaredgorski/spacecamp'
Plug 'dense-analysis/ale'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'


" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()

let g:ale_linters = {
      \   'python': ['flake8', 'pylint'],
      \   'javascript': ['eslint'],
      \}
