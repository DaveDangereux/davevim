vim.cmd("colorscheme davedark")

vim.cmd("set fillchars+=eob:\\ ")

local options = {
  -- tabbing
  tabstop = 2, -- insert this many spaces for <Tab>
  shiftwidth = 0, -- number of steps for (auto)indent, uses tabstop when 0
  expandtab = true, -- convert tabs to spaces

  -- word wrap
  wrap = false,
  linebreak = true,
  breakindent = true,
  showbreak = "  ",

  -- indentation
  -- autoindent = true,
  -- smartindent = true,

  -- unsorted
  number = true, -- line numbers
  mouse = "a", -- full mouse functionality
  timeoutlen = 200,
  termguicolors = true, -- enables 24-bit colour
  showtabline = 2, -- always show tabs at top of screen
  cursorline = true,
  scrolloff = 8, -- minimal number of lines to keep above / below cursor
  sidescrolloff = 8, -- minimal number of lines to keep left / right of cursor
  cmdheight = 1, -- more space for messages
  splitbelow = true,
  splitright = true,
  numberwidth = 5,
  signcolumn = "yes",
  ignorecase = true, -- ignore case while searching
  smartcase = true, -- resume search case sensitivity if term includes capitals
  pumheight = 10,
  fileencoding = "utf-8",
}

vim.opt.whichwrap:append("<,>,[,],h,l") -- enable cursor to wrap across lines
vim.opt.iskeyword:append("-") -- treat "-" as part of a word

-- This command makes the cursor blink and helps visually indicate whether the (terminal) window is active
vim.cmd([[
  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175
]])

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Autocommand to source this file on save (and reload bufferline config for correct buffer styling)
vim.cmd([[
  augroup options
    autocmd!
    autocmd BufWritePost *nvim/lua/core/options.lua source <afile>
    autocmd BufWritePost *nvim/lua/core/options.lua lua require("plugins.bufferline").config() 
    autocmd BufWritePost *nvim/lua/core/options.lua lua require("plugins.feline").config() 
  augroup end
]])
