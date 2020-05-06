" show search highlights. use :noh to clear highlights
set hlsearch

" display keystrokes in status line
set showcmd

" syntax highlighting
syntax on

" indentation
set shiftwidth=2
set expandtab
set softtabstop=2

" set up leader key
nnoremap <space> <nop>
let mapleader=" "
" save with spc-s
map <leader>s :w<cr>
" open file with spc-f
map <leader>f :e 
" open buffer with spc-b
map <leader>b :b 
" close current window split with spc-w
map <leader>0 <c-w>q
" go down to 1 window with spc-1
map <leader>1 <c-w>o
" open new vertical split with spc-2
map <leader>2 <c-w>s
" open new vertical split with spc-3
map <leader>3 <c-w>v
" move left with spc-h
map <leader>h <c-w>h
" move down with spc-j
map <leader>j <c-w>j
" move up with spc-k
map <leader>k <c-w>k
" move right with spc-l
map <leader>l <c-w>l

" shorten bottom bar
set cmdheight=1

" make backspace work in insert mode
set backspace=indent,eol,start

" make ESC allow normal-mode movement in terminal mode
tnoremap <Esc> <C-\><C-n>

" for emmet: expand tags with <C-j> in insert mode
imap <C-j> <C-y>,

" specify directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'

" Initialize plugin system
call plug#end()
" Reload .vimrc and run :PlugInstall
