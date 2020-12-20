" vimrc is lua now

lua require('init')

" Plugins!!
packadd! pair
packadd! cstimer


" Enable syntax highlighting if the terminal supports colour
if &t_Co > 1
    syntax on
endif

" Enable filetype detection, ftplugins and indent files
filetype plugin indent on
