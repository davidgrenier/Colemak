let no_racket_maps = 1
let mapleader = "\<space>"
let maplocalleader = "\<space>"
set nocompatible
set autoread
set autoindent
set backspace=eol,start,indent
set incsearch hlsearch
set nobackup
set ruler rulerformat=%=%h%m%r%w\ %(%c%V%)\ @\ %l/%L
set scrolloff=3 tabstop=4 shiftwidth=4 expandtab
set tw=90
set nowrap
set splitbelow
set history=100
set nofoldenable
" set noesckeys
set ttimeoutlen=100
nmap <Leader>/ :nohl<CR>
syntax enable
filetype plugin indent on
let g:html_indent_inctags = "html,body,head,tbody,p,li"
au BufNewFile,BufRead *.tex set filetype=tex
au BufNewFile,BufRead *.ly set filetype=ly syntax=tex
au BufNewFile,BufRead *.idr set filetype=idris
au BufNewFile,BufRead *.jl set filetype=julia
au BufNewFile,BufRead *.wl set filetype=mathematica
au BufNewFile,BufRead *.prolog set filetype=prolog
au BufNewFile,BufRead *.fs,*.fsx set filetype=fsharp
au FileType prolog,ly,matlab setlocal commentstring=%\ %s
au FileType r,julia setlocal commentstring=#\ %s
au FileType c,fsharp,cpp setlocal commentstring=//\ %s
au FileType idris setlocal commentstring=--\ %s
au FileType mathematica,sml setlocal commentstring=(*\ %s\ *)
noremap n j
noremap e k
" noremap <c-n> <c-f>
" noremap <c-e> <c-b>
noremap L I
noremap i l
noremap l i
noremap f e
noremap t f
noremap T F
noremap k n
noremap K N
noremap N K
nnoremap U <C-R>
nnoremap <leader>H <c-w>H
nnoremap <leader>h <c-w>h
nnoremap <leader>N <c-w>J
nnoremap <leader>n <c-w>j
nnoremap <leader>E <c-w>K
nnoremap <leader>e <c-w>k
nnoremap <leader>I <c-w>L
nnoremap <leader>i <c-w>l
tnoremap <c-w>N <c-w>J
tnoremap <c-w>n <c-w>j
tnoremap <c-w>E <c-w>K
tnoremap <c-w>e <c-w>k
tnoremap <c-w>I <c-w>L
tnoremap <c-w>i <c-w>l
nnoremap <leader>lt :UndotreeToggle<cr>
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
noremap <leader>sq :DBResultsClose<cr>
noremap <leader>ssp :silent !net stop MySQL57<cr>
noremap <leader>sst :silent !net start MySQL57<cr>
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
set efm=\ %#%f(%l\\\,%c):\ %m
hi MatchParen cterm=underline ctermbg=none ctermfg=none
vmap <C-e> :<C-u>@*<CR>
colorscheme apprentice
set fillchars+=vert:\ 
hi VertSplit ctermfg=8
set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m
au CursorHold,CursorHoldI,FocusGained * silent! checktime
" au BufEnter * checktime if mode() != 'c' | checktime | endif
let g:netrw_keepdir = 0
let g:netrw_localcopydircmd = 'cp -r'
let g:http_client_json_escape_utf=0
let g:http_client_result_vsplit=0
let http_client_focus_output_window=0
let g:undotree_WindowLayout = 2
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_DiffAutoOpen = 0
set undofile
set undodir^=~/.vim/undo//
nnoremap <leader>lo :hide edit <cfile><cr>
nnoremap <leader>on <c-]>
runtime ftplugin/man.vim
set keywordprg=:Man
noremap Q :ccl<cr>
