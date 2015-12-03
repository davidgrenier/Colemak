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
set scrolloff=3
syntax enable
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
noremap n j
noremap e k
noremap L I
noremap i l
noremap l i
noremap f e
noremap t f
noremap T F
noremap k n
noremap K N
vmap v <C-V>
noremap U <C-R>
inoremap <S-Tab> <C-D>
imap <C-BS> <C-W>
if has("autocmd")
	au BufReadPost *.rkt,*.rktl set filetype=racket
	au filetype racket set lisp
	au filetype racket set autoindent
endif
if has("win32")
  cd ~\Desktop
  set guifont=Consolas:h11
endif
