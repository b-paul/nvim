" vimrc is lua now

" Plugins!!
packadd! pair
packadd! cstimer
packadd! nvim-lspconfig

" Enable syntax highlighting if the terminal supports colour
if &t_Co > 1
    syntax on
endif

" Enable filetype detection, ftplugins and indent files
filetype plugin indent on

" do lua
lua require('init')
