-- vimrc but lua

-- Set leader to space
vim.g.mapleader = ' '

-- Line numbers
-- See :h number_relativenumber
vim.wo.number = true
vim.wo.relativenumber = true

-- Tab configuration
-- See :h tabstop for tab configuration stuff
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true
vim.bo.autoindent = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smarttab = true

-- Ruler shows the line and column number at the bottom right
vim.o.ruler = true

-- Make underscore separated words separate words
vim.bo.iskeyword = vim.bo.iskeyword:gsub(",_","")
vim.o.iskeyword = vim.o.iskeyword:gsub(",_","")

-- Dont wrap long lines
vim.wo.wrap = false

-- Make CTRL-L clear echo and search
vim.api.nvim_set_keymap('n', '<C-L>', ':noh<CR>:mode<CR>',
                        { noremap = true, silent = true })

-- Make leader+a insert one from the end of the line because semicolon
vim.api.nvim_set_keymap('n', '<leader>a', '$i',
                        { noremap = true, silent = true })

-- Make Shift-Delete do nothing (my keyboard is weird)
vim.api.nvim_set_keymap('i', '<S-Del>', '', { noremap = true, silent = true })

-- Colour column shows the text width of a file
vim.wo.colorcolumn = vim.wo.colorcolumn .. '+' .. 0
for i = 1,254 do vim.wo.colorcolumn = vim.wo.colorcolumn .. ',+' .. i end

-- LSP

-- Always have the sign column so that code doesnt move around on error
vim.wo.signcolumn = "yes"

require('lspconfig').ccls.setup{}
