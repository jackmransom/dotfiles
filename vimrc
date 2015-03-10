set shell=/bin/bash
set nocompatible

filetype off

if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'edkolev/tmuxline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'rust-lang/rust.vim'
call plug#end()


filetype plugin indent on
set history=700
set autoread

set so=7

set wildmenu

set laststatus=2
set number
set numberwidth=5
set ruler

set hid

set backspace=eol,start,indent

set ignorecase
set smartcase

set hlsearch
set incsearch

set lazyredraw

set magic

set showmatch
set mat=22

set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax enable

colorscheme solarized
set background=dark
set encoding=utf8
set t_Co=16
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set lbr
set tw=500

set ai
set si
set wrap

"Airline stuff
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_theme='solarized'

"Syntastic
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

"Keybindings
nnoremap ; :
