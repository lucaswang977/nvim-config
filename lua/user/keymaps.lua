local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)

keymap("n", "<leader>q", ":qall<CR>", {})
keymap("n", "<leader>w", ":w<CR>", {})
keymap("n", "<leader>c", ":Bdelete<CR>", {})

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "[b", ":bprev<CR>", opts)
keymap("n", "]b", ":bnext<CR>", opts)

keymap("n", "<leader>le", ":EslintFixAll<CR>", opts)
keymap("n", "<leader>lS", ":SymbolsOutline<CR>", opts)

keymap("n", "<C-down>", ":MoveLine(1)<CR>", opts)
keymap("n", "<C-up>", ":MoveLine(-1)<CR>", opts)
keymap("v", "<C-down>", ":MoveBlock(1)<CR>", opts)
keymap("v", "<C-up>", ":MoveBlock(-1)<CR>", opts)

keymap("i", "jk", "<ESC>", opts)

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

local api = require("nvim-tree.api")
vim.keymap.set("n", "<leader>e", api.tree.toggle, {})

vim.keymap.set("n", "<leader>ft", ":TodoTelescope keywords=TODO,FIX<CR>", opts)
