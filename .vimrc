set nocompatible

filetype plugin on
filetype indent on
syntax on

execute pathogen#infect()

"===== ctrlp =====
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"===== Auto-Completion & Wildcard-Expansion =====
" turn on omnicompletion
filetype plugin on
set omnifunc=syntaxcomplete#Complete
" wildcard-expansion: show matches for commands/files
set wildmenu
" wildcard-expansion: exclude certain files
set wildignore=*.o,*.pyc,*.aux,*.bbl,*.blg,*.fdb_latexmk,*.fls

"===== Save & Load =====
" do not create *.swp files
set noswapfile
" save file before :make or switching buffers
set autowrite
" load file when it is changed externally
set autoread

"===== Interface =====
" always show status line
set laststatus=2
set ruler
" show line-number
set number
" show number of lines selected in Visual mode
set showcmd
" highlight cursor-line
set cursorline
" enable vim-mouse
set mouse=a
" use visual bell instead of beeping
set visualbell
set t_vb=
" set solarized color scheme
set term=xterm-256color
se t_Co=256
set background=dark
let g:solarized_termcolers=256
colorscheme solarized

"===== Movement =====
" 'backspace' eats up: indent, eol, and start-of-insert
set backspace=indent,eol,start
" keys that wrap lines: 'backspace', 'space', 'left', 'right', 'h', 'l'
set whichwrap=b,s,<,>,h,l
" make behavior of 'Y' consistent with 'D'
nmap Y y$
" move up/down by one row in a soft-wrapped multirow line
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk

set so=10

"===== Search =====
" highlight search
set hlsearch
" incremental search
set incsearch
" case insensitive search 
set ignorecase 
set smartcase
" clear highlight
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR>
endi

"===== Indentation =====
" inherit indentation from previous line
set autoindent
" never use smartindent
set nosmartindent
" disable C-style indentation
set nocindent

"===== Wrapping =====
" hard-wrap: textwidth
set textwidth=80
" hard-wrap: disable hard-wrap based on distance from edge of the window
set wrapmargin=0
" soft-wrap: disable soft-wrap
set nowrap

"===== Tabs =====
" visually appearing length of the '\t' character
set tabstop=2
" length of the 'tab', 'backspace keys' (during insert mode)
set softtabstop=2
" length of the '>', '<' (during normal mode)
set shiftwidth=2
" visualize the lengths of softtabstop/shiftwidth using only ' ' characters
set expandtab
" for 'tab'/'backspace' at the beginning of a line, follow shiftwidth
set smarttab

"===== Formatting =====
" gq: join sentences with just a single space
set nojoinspaces
" gq: auto-wrap text using textwidth
set formatoptions+=t
" gq: disable automatic formatting
set formatoptions-=a

set updatetime=1000

"===== Spell-check =====
" spell check on
" set spell spelllang=en_us
" setlocal spell spelllang=en_us
" toggle spelling with 'F7'
nn <F7> :setlocal spell! spelllang=en_us<CR>
imap <F7> :setlocal spell! spelllang=en_us<CR>
" misspelled words
highlight SpellBad cterm=underline
highlight SpellCap cterm=underline
highlight SpellRare cterm=underline
highlight SpellLocal cterm=underline

