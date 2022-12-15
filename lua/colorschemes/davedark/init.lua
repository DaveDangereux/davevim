-- Refresh cache in case we're reloading after making changes
local packages = {
  "colorschemes.davedark.highlights.general",
  "colorschemes.davedark.highlights.languages",
  "colorschemes.davedark.highlights.lsp",
  "colorschemes.davedark.highlights.plugins",
  "colorschemes.davedark.highlights.treesitter",
}

for _, pkg in pairs(packages) do
  package.loaded[pkg] = nil
end

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

-- Refresh devicon highlights
package.loaded["nvim-web-devicons"] = nil

-- Refresh feline config
local feline_refresh = function()
  local feline_config_status_ok, feline_config = pcall(require, "plugins.feline")
  if not feline_config_status_ok then
    print("Failed to require plugins.feline")
    return
  end
  feline_config.config()
end

feline_refresh()

-- Refresh bufferline config
local bufferline_refresh = function()
  local bufferline_config_status_ok, bufferline_config = pcall(require, "plugins.bufferline")
  if not bufferline_config_status_ok then
    print("Failed to require plugins.bufferline")
    return
  end
  bufferline_config.config()
end

bufferline_refresh()
