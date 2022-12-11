if vim.g.vscode then
  vim.opt["termguicolors"] = true
  return
end

require("plugins")
require("core.options")
require("core.keymaps")
