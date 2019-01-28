let mapleader = "\<space>"
let maplocalleader = "\<space>"
set nocompatible
set autoread
set autoindent
set backspace=eol,start,indent
set nobackup
set incsearch hlsearch
set ruler rulerformat=%=%h%m%r%w\ %(%c%V%)\ @\ %l/%L
set scrolloff=3 tabstop=4 shiftwidth=4
set expandtab
set nowrap
set splitbelow
set history=100
set nofoldenable
nmap <Leader>/ :nohl<CR>
syntax enable
filetype plugin indent on
let g:html_indent_inctags = "html,body,head,tbody,p,li"
au BufNewFile,BufRead *.tex set filetype=tex
au BufNewFile,BufRead *.ly set filetype=ly syntax=tex
au FileType ly setlocal commentstring=%\ %s
au FileType r setlocal commentstring=#\ %s
au FileType matlab setlocal commentstring=%\ %s
au FileType fsharp setlocal commentstring=//\ %s
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
nnoremap U <C-R>
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
cabbrev E Explore
nmap <leader><cr> <C-]>
vmap v <C-V>
inoremap <S-Tab> <C-D>
if has("autocmd")
	au BufReadPost *.rkt,*.rktl set filetype=racket
	au filetype racket set lisp
	au filetype racket set autoindent
endif
if has("win32")
    nnoremap <C-j> <C-^>
    cd /projects
    set directory=~/vimfiles/swapfiles//
else
    nnoremap <C-n> <C-^>
    nnoremap <C-y> <C-o>
    nnoremap <C-l> <C-i>
    cd ~/projects
    set directory=~/.vim/swapfiles//
endif
if has("gui_running")
    imap <C-BS> <C-W>
    set go-=m go-=T go-=r go-=L
    if has("win32")
        au GUIEnter * simalt ~x
    endif
else
    noremap! <C-BS> <C-w>
    noremap! <C-h> <C-w>
endif
execute pathogen#infect()
noremap <leader>sq :DBResultsClose<cr>
noremap <leader>ssp :silent !net stop MySQL57<cr>
noremap <leader>sst :silent !net start MySQL57<cr>
nnoremap <leader>bc :silent !chrome %<cr>
nnoremap <leader>n <C-W>w
nnoremap <leader>e <C-W>W
noremap <silent> <expr> ' "'".toupper(nr2char(getchar()))
noremap <silent> <expr> m "m".toupper(nr2char(getchar()))
sunmap '
sunmap m
set laststatus=2
set previewheight=20
let g:dbext_default_buffer_lines = 20
let g:dbext_default_SQLSRV_bin = "sqlcmd"
let g:dbext_default_SQLSRV_cmd_options = '-w 10000'
let g:dbext_default_history_file = 'c:\Users\dgrenier\vimfiles\dbext_sql_history.txt'
set shortmess+=I
set encoding=utf-8
set diffopt+=iwhite
set errorformat=\ %#%f(%l\\\,%c):\ %m
hi MatchParen cterm=underline ctermbg=none ctermfg=none
vmap <C-e> :<C-u>@*<CR>
colorscheme apprentice
set fillchars+=vert:\ 
hi VertSplit ctermfg=8
set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m
