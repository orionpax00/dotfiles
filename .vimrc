set relativenumber
set backspace=2
set tabstop=2
set autoread "automatically read file to the buffer if it changes
set noswapfile

se makeprg=g++\ -std=c++17\ -Wall\ -Wextra\ -DLOCAL\ -o\ %<\ %

syntax  on
filetype on

map <F2> :w<CR>:make<CR>
map <ESC><ESC> :w<CR>:!xclip -sel c < %<CR><CR>
set laststatus=2
set statusline+=%1*\ %<%f\                                "File+path
set statusline+=%8*\ %=\ %l/%L\             "Rownumber/total
set statusline+=%9*\ %03c\                            "Col

