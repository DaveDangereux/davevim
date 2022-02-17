if vim.g.vscode then
  vim.opt["termguicolors"] = true
  return
end

require("core.options")
require("core.keymaps")
require("plugins")
