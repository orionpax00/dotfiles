call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug '907th/vim-auto-save'
Plug 'neomake/neomake'
call plug#end()

set number relativenumber
set backspace=2
set tabstop=2
set autoread "automatically read file to the buffer if it changes
set noswapfile
let g:auto_save = 1 "auto save plugin
let g:neomake_open_list = 2


se makeprg=g++\ -g\ -std=c++17\ -Wall\ -Wextra\ -DLOCAL\ -o\ %<\ %

syntax  on
filetype on

map <F2> :w<CR>:Neomake!<CR>
map <ESC><ESC> :w<CR>:!xclip -sel c < %<CR><CR>
set laststatus=2
set statusline+=%1*\ %<%f\                                "File+path
set statusline+=%8*\ %=\ %l/%L\             "Rownumber/total
set statusline+=%9*\ %03c\                            "Col

"Start vim in insert mode
"au BufRead,BufNewFile * startinsert
