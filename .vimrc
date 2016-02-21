set nocompatible
let mapleader = "\<space>"
"set autochdir
set autoread
set autoindent
set backspace=eol,start,indent
set nobackup
set incsearch
set hlsearch
set ruler rulerformat=%=%h%m%r%w\ c%(%c%V%)\ %l/%L
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
let g:html_indent_inctags = "html,body,head,tbody"
au BufNewFile,BufRead *.volt set filetype=html
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
noremap <C-j> <C-^>
nnoremap <leader>H <c-w>H
nnoremap <leader>N <c-w>J
nnoremap <leader>E <c-w>K
nnoremap <leader>I <c-w>L
nnoremap <silent> [b :bprevious<cr>
nnoremap <silent> ]b :bnext<cr>
nnoremap <silent> [a :first<cr>
nnoremap <silent> ]a :last<cr>
nnoremap <silent> [à :prev<cr>
nnoremap <silent> ]à :next<cr>
nnoremap <silent> [q :cprev<cr>
nnoremap <silent> ]q :cnext<cr>
nnoremap <silent> [Q :cfirst<cr>
nnoremap <silent> ]Q :clast<cr>
noremap ' `
noremap ` '
nmap <leader><cr> <C-]>
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
    set directory=~/vimfiles/swapfiles//
endif
if has("gui_running")
    set go-=m go-=T go-=r go-=L
    au GUIEnter * simalt ~x
endif
execute pathogen#infect()
noremap <leader>sq :DBResultsClose<cr>
nnoremap <leader>b :ls<cr>:e #
nnoremap <leader>bc :execute ':silent !chrome %'<cr>
nnoremap <leader>n <C-W>w
nnoremap <leader>e <C-W>W
set laststatus=2
