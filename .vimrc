set nocompatible
set autoindent
set backspace=eol,start,indent
set nobackup
set incsearch
set hlsearch
let mapleader = "\\"
set ruler
set rulerformat=%=%h%m%r%w\ %(%c%V%),%l/%L\ %P
nmap <Leader>/ :nohl<CR>
set ts=4
set so=3
syntax enable
:noremap n j
:noremap e k
:noremap i l
:noremap l i
:noremap f e
:noremap t f
:noremap T F
:noremap k n
:noremap K N
nmap H gT
nmap I gt
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>