local util = require("colorschemes.davedark.util")

vim.cmd([[
  augroup davedark
    autocmd!
    autocmd BufWritePost *nvim/lua/colorschemes/davedark/* colorscheme davedark 
  augroup end
]])

vim.api.nvim_command "hi clear"
if vim.fn.exists "syntax_on" then
  vim.api.nvim_command "syntax reset"
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "davedark"

local highlights = require("colorschemes.davedark.highlights")

local skeletons = {
  highlights
}

for _, skeleton in ipairs(skeletons) do
  util.initialise(skeleton)
end

