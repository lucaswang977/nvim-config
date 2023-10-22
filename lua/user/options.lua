local options = {
  mouse = "",
  clipboard = "unnamedplus",
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  number = true,
  relativenumber = false,
}

for k,v in pairs(options) do
  vim.opt[k] = v
end
