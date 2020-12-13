-- vimrc but lua

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
vim.o.smarttab = true

-- Ruler shows the line and column number at the bottom right
vim.o.ruler = true

-- Make underscore separated words separate words
vim.bo.iskeyword = vim.bo.iskeyword:gsub(",_","")

-- Dont wrap long lines
vim.wo.wrap = false

-- Make CTRL-L clear echo and search
vim.api.nvim_set_keymap('n', '<C-L>', ':noh<CR>:mode<CR>', { noremap = true, silent = true })
