" vimrc is lua now

lua require('init')

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
