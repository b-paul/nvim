" vimrc

" Line numbers
" See :h number_relativenumber
set number
set relativenumber

" Tab configuration
" See :h tabstop for tab configuration stuff
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smarttab

" Ruler shows the line and column number at the bottom right
set ruler

" Make underscore separated words separate words
set iskeyword-=_

" Dont wrap long lines
set nowrap

" Make CTRL-L clear echo and search
map <C-l> :noh<CR>:mode<CR>

" Colour column shows the text width of a file
let &l:colorcolumn='+' . join(range(0,254),',+')


" Plugins!!
packadd! pair


" Enable syntax highlighting if the terminal supports colour
if &t_Co > 1
    syntax on
endif

" Enable filetype detection, ftplugins and indent files
filetype plugin indent on
