local set_g_option = vim.api.nvim_set_option
-- make it so i dont need the 0 for buffer name
local set_w_option = vim.api.nvim_win_set_option
local set_b_option = vim.api.nvim_buf_set_option

-- Line numbers
-- See :h number_relativenumber
set_w_option(0, 'number', true)
set_w_option(0, 'relativenumber', true)

-- See :h tabstop for tab configuration stuff

set_b_option(0, 'tabstop', 4)
set_b_option(0, 'shiftwidth', 4)
set_b_option(0, 'expandtab', true)
set_b_option(0, 'autoindent', true)
set_g_option('smarttab', true)
set_g_option('softtabstop', 4)

-- Ruler shows line and column number at the bottom right
set_g_option('ruler', true)

-- Make undersore separated words separate words



-- autocomplete braces because they are the only autocompleted pair character
