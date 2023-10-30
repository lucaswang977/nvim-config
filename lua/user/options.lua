local options = {
  mouse = "",
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  number = true,
  relativenumber = false,
}

vim.g.mapleader = " "
vim.g.maplocalleader = " "

for k,v in pairs(options) do
  vim.opt[k] = v
end
