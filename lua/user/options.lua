local options = {
	backup = false,
	mouse = "",
	expandtab = true,
	shiftwidth = 2,
	tabstop = 2,
	number = true,
	relativenumber = false,
	undofile = true,
	cursorline = true,
	numberwidth = 4,
	smartcase = true,
	ignorecase = true,
	hlsearch = true,
	fileencoding = "utf-8",
}

vim.g.mapleader = " "
vim.g.maplocalleader = " "

for k, v in pairs(options) do
	vim.opt[k] = v
end
