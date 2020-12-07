local set_g_option = vim.api.nvim_set_option
-- make it so i dont need the 0 for id
local set_w_option = vim.api.nvim_win_set_option
local set_b_option = vim.api.nvim_buf_set_option

-- See :h tabstop for tab configuration stuff

set_b_option(0, 'tabstop', 4)
set_b_option(0, 'shiftwidth', 4)
set_b_option(0, 'expandtab', false)
set_b_option(0, 'autoindent', true);
set_g_option('smarttab', true)
set_g_option('softtabstop', 0)
