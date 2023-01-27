syntax on
 
" Plugin List
call plug#begin('~/.vim/plugged')
 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'miyase256/vim-ripgrep', {'branch': 'fix/remove-complete-from-RgRoot'}
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'machakann/vim-highlightedyank'
Plug 'Chiel92/vim-autoformat'
Plug 'ghifarit53/tokyonight-vim'
Plug 'pantharshit00/vim-prisma'
" 9000+ Snippets
call plug#end()
 
" No error bells if you exceed the line
set noerrorbells
 
" Try to indent automatically
set smartindent

" Set number of spaces per auto indentation
set shiftwidth=4  
set tabstop=4
set softtabstop=4
 
" incremental search
set incsearch
 
" Line numbering
set number

" RelativeLine number
set relativenumber
 
" For MacVim
set guifont=Monaco:h16
 
" Cursor line hightlight
set cursorline
 
" Highlight matching brackets [{()}]
set showmatch
 
" No swap files
set noswapfile
set smartcase
set expandtab

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html       setlocal shiftwidth=2 tabstop=2
autocmd FileType python     setlocal shiftwidth=4 softtabstop=4 expandtab

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
 
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <C-p> :Files<Cr>
 
let g:python3_host_prog = '/Users/timsteele/.pyenv/shims/python3'

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let b:ale_linters = ['eslint']
let b:ale_fixers = {'javascript': ['eslint']}
let g:coc_global_extensions = [
            \'coc-json',
            \'coc-tsserver',
            \'coc-eslint',
            \'coc-prettier',
            \'coc-snippets',
            \'coc-html',
            \'coc-go',
            \'coc-css',
            \'coc-pyright',
            \'coc-git' ]

 
" Should allow :Prettier to format things
" command! -nargs=0 Prettier :CocCommand prettier.formatFile
 
" NERDTree Settings
nmap <C-f> :NERDTreeToggle<CR>
 
" Color Scheme 
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight 
