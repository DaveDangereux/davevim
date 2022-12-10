if vim.g.vscode then
  vim.opt["termguicolors"] = true
  return
end

require("config.options")
require("config.keymaps")
require("config")
