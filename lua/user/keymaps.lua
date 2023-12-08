local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)

keymap("n", "<leader>q", ":q<CR>", opts)
keymap("n", "<leader>Q", ":qall<CR>", opts)
keymap("n", "<leader>w", ":w<CR>", opts)
keymap("n", "<leader>c", ":Bdelete<CR>", opts)

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
vim.keymap.set("n", "<leader>ff", builtin.find_files, opts)
vim.keymap.set("n", "<leader>fg", builtin.live_grep, opts)
vim.keymap.set("n", "<leader>fb", builtin.buffers, opts)
vim.keymap.set("n", "<leader>fh", builtin.help_tags, opts)
vim.keymap.set("n", "<leader>fr", builtin.lsp_references, opts)
vim.keymap.set("n", "<leader>fc", builtin.colorscheme, opts)
vim.keymap.set("n", "<leader>fd", builtin.diagnostics, opts)
vim.keymap.set("n", "<leader>ft", ":TodoTelescope keywords=TODO,FIX<CR>", opts)
vim.keymap.set("n", "<leader>fn", function()
	return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })

local api = require("nvim-tree.api")
vim.keymap.set("n", "<leader>e", api.tree.toggle, opts)

-- ChatGPT related
vim.keymap.set("n", "<leader>cc", ":GpChatToggle newtab<CR>", opts)
vim.keymap.set("n", "<leader>cn", ":GpChatNew newtab<CR>", opts)
vim.keymap.set("v", "<leader>cn", ":<C-u>'<,'>GpChatNew newtab<CR>", opts)

vim.keymap.set("n", "<leader>cr", ":GpChatRespond<CR>", opts)
vim.keymap.set("n", "<leader>cf", ":GpChatFinder<CR>", opts)

-- Auto session
vim.keymap.set("n", "<leader>ss", ":SessionSave<CR>", opts)
vim.keymap.set("n", "<leader>sr", ":SessionRestore<CR>", opts)
vim.keymap.set("n", "<leader>sd", ":SessionDelete<CR>", opts)
