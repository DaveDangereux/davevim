local general = require("colorschemes.davedark.highlights.general")
local languages = require("colorschemes.davedark.highlights.languages")
local lsp = require("colorschemes.davedark.highlights.lsp")
local plugins = require("colorschemes.davedark.highlights.plugins")
local treesitter = require("colorschemes.davedark.highlights.treesitter")

vim.cmd([[
  augroup davedark
    autocmd!
    autocmd BufWritePost *nvim/lua/colorschemes/davedark/** lua package.loaded["colorschemes.davedark.highlights.general"] = nil
    autocmd BufWritePost *nvim/lua/colorschemes/davedark/** lua package.loaded["colorschemes.davedark.highlights.languages"] = nil
    autocmd BufWritePost *nvim/lua/colorschemes/davedark/** lua package.loaded["colorschemes.davedark.highlights.lsp"] = nil
    autocmd BufWritePost *nvim/lua/colorschemes/davedark/** lua package.loaded["colorschemes.davedark.highlights.plugins"] = nil
    autocmd BufWritePost *nvim/lua/colorschemes/davedark/** lua package.loaded["colorschemes.davedark.highlights.treesitter"] = nil
    autocmd BufWritePost *nvim/lua/colorschemes/davedark/** colorscheme davedark 
  augroup end
]])

vim.api.nvim_command("hi clear")

if vim.fn.exists("syntax_on") then
  vim.api.nvim_command("syntax reset")
end

vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "davedark"

local skeletons = {
  general,
  languages,
  lsp,
  plugins,
  treesitter,
}

for _, skeleton in ipairs(skeletons) do
  for group, opts in pairs(skeleton) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end
