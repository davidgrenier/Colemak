let mapleader = "\<space>"
map <Tab> <C-W>w
map <S-Tab> <C-W>W
set autochdir
set autoread
set nocompatible
set autoindent
set backspace=eol,start,indent
set nobackup
set incsearch
set hlsearch
set ruler rulerformat=%=%h%m%r%w\ %(%c%V%),%l/%L\ %P
set scrolloff=3
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set splitbelow
set history=100
set nofoldenable
nmap <Leader>/ :nohl<CR>
syntax enable
filetype plugin indent on
nnoremap <leader>b :ls<cr>:e #
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
noremap U <C-R>
vmap v <C-V>
inoremap <S-Tab> <C-D>
imap <C-BS> <C-W>
if has("autocmd")
	au BufReadPost *.rkt,*.rktl set filetype=racket
	au filetype racket set lisp
	au filetype racket set autoindent
endif
if has("win32")
  cd /Projects
  set guifont=Consolas:h11
  "set shell=\Program\ Files\Git\bin\bash
endif
execute pathogen#infect()
noremap <leader>sq :DBResultsClose<cr>
nnoremap <leader>bc :execute ':silent !chrome %'<cr>
