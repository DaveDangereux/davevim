local utils = require("core.utils")

-- Refresh cache in case we're reloading after making changes
utils.clear_packages_recursively("colorschemes.davedark")

local general = require("colorschemes.davedark.highlights.general")
local languages = require("colorschemes.davedark.highlights.languages")
local lsp = require("colorschemes.davedark.highlights.lsp")
local plugins = require("colorschemes.davedark.highlights.plugins")
local treesitter = require("colorschemes.davedark.highlights.treesitter")

vim.api.nvim_command("hi clear")

if vim.fn.exists("syntax_on") then
  vim.api.nvim_command("syntax reset")
end

vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "davedark"

local highlight_modules = {
  general,
  languages,
  lsp,
  plugins,
  treesitter,
}

for _, highlights in ipairs(highlight_modules) do
  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

utils.refresh_package_highlights()
