vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

if vim.g.vscode then
  vim.opt["termguicolors"] = true
  return
end

require("plugins")
require("core.options")
require("core.keymaps")
require("core.autocommands")
