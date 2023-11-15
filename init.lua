vim.opt["termguicolors"] = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Setting fileencoding before loading lazy.nvim prevents an error when
-- starting Neovim with new plugins to install
vim.opt["fileencoding"] = "utf-8"

require("bootstrap_lazy")
require("core.options")
require("core.keymaps")
require("core.autocommands")
