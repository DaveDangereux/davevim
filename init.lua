vim.opt["termguicolors"] = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("bootstrap_lazy")

require("core.options")
require("core.keymaps")
require("core.autocommands")
