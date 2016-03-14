set nocompatible
if has("unix")
	set shell=/bin/bash
	if empty(glob("~/.vim/autoload/plug.vim"))
		execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
	endif
endif

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'edkolev/tmuxline.vim'
Plug 'airblade/vim-gitgutter'
if has("unix")
  Plug 'Valloric/YouCompleteMe'
  Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
  Plug 'jeaye/color_coded'
else
  Plug 'ervandew/supertab'
endif
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
set mat=3

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
set shiftwidth=2
set tabstop=2

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

function! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l,c)
endfun

"Keybindings
nnoremap ; :
nnoremap <F5> :wa<bar>make!<cr>

au BufWritePre *.h,*.c,*.cpp :call <SID>StripTrailingWhitespaces()
