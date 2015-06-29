syntax enable

set nocompatible

filetype on
filetype plugin on
filetype indent on

execute pathogen#infect()
set omnifunc=syntaxcomplete#Complete

set showcmd

set hlsearch

" case insensitive search 
set ignorecase 
set smartcase

set encoding=utf-8

set so=7

set wildmenu

set showmatch

set tabstop=2
set shiftwidth=2
set expandtab

set number

set incsearch

set autoindent
"set cindent

set foldmethod=manual

set cursorline

set mouse=a

set textwidth=80
set so=10

set title

set updatetime=1000

set term=xterm-256color
se t_Co=256
set background=dark
let g:solarized_termcolers=256
colorscheme solarized
