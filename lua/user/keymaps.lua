local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
keymap("i", "jk", "<ESC>", opts)

vim.g.mapleader = " "
vim.g.maplocalleader = " "
