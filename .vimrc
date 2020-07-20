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
noremap h <NOP>
noremap j <NOP>
noremap k <NOP>
noremap l <NOP>


call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'jaredgorski/spacecamp'
Plug 'dense-analysis/ale'
Plug 'machakann/vim-highlightedyank'

call plug#end()


