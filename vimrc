set background=dark
" 256 colors color schemes
let &t_Co=256
colorscheme rainbo

set wildmenu
set wildmode=longest,list,full
"set mouse=a

" Intuitive backspacing in insert mode
set backspace=indent,eol,start

" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
syntax on

" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.
set ignorecase
set smartcase
"set nowrap " lange zeilen nicht umbrechen
set linebreak
set scrolloff=2

" Automatische Einrückung (Globale Konfiguration)
set autoindent
set smartindent
set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set modeline

" UTF-8 als Default-Encoding
set enc=utf-8

" to have , instead of \ as leader key
let mapleader = ","

" key bindings
"
" taglist toggle
nnoremap <silent> <F8> :TlistToggle<CR>

" more than 20 commands and search patterns in history
set history=1000

" manage multiple buffers effectively
set hidden

" make /-style searches case-sensitive only if there is a capital letter in
" the search expression
set ignorecase
set smartcase

" set the terminal title
set title

" limited line numbering
set ruler

" make the bell visual
set visualbell

" line numbering on
set number

autocmd BufEnter *.{c,cpp,h} setl cindent
autocmd Filetype text setl textwidth=80 " Editor bricht nach 80 Zeichen automatisch um

" ############
" ## VUNDLE ##
" ############
set nocompatible
filetype off " required for vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
" original repos on github
Bundle 'gmarik/vundle'
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'elzr/vim-json'
Bundle 'git://fedorapeople.org/home/fedora/wwoods/public_git/vim-scripts.git'

filetype plugin indent on " required for vundle

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

