local options = {
  -- tabbing
  tabstop = 2,                            -- insert this many spaces for <Tab>
  shiftwidth = 0,                         -- number of steps for (auto)indent, uses tabstop when 0
  expandtab = true,                       -- convert tabs to spaces

  -- word wrap
  wrap = false,
  linebreak = true,
  breakindent = true,
  showbreak = "  ",

  -- indentation
  -- autoindent = true,
  -- smartindent = true,

  -- unsorted
  number = true,                          -- line numbers
  mouse = "a",                            -- full mouse functionality
  timeoutlen = 200,
  termguicolors = true,                   -- enables 24-bit colour
  showtabline = 2,                        -- always show tabs at top of screen
  cursorline = true,
  scrolloff = 8,                          -- minimal number of lines to keep above / below cursor
  sidescrolloff = 8,                      -- minimal number of lines to keep left / right of cursor
  cmdheight = 1,                          -- more space for messages
  splitbelow = true,
  splitright = true,
  numberwidth = 5,
  signcolumn = "yes",
  ignorecase = true,                      -- ignore case while searching
  smartcase = true,                       -- resume search case sensitivity if term includes capitals
}

vim.opt.whichwrap:append "<,>,[,],h,l"    -- enable cursor to wrap across lines
vim.opt.iskeyword:append "-"              -- treat "-" as part of a word

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Autocommand to source this file on save
vim.cmd [[
  augroup options
    autocmd!
    autocmd BufWritePost *nvim/lua/core/options.lua source <afile>
  augroup end
]]

