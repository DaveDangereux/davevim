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

  -- line breaking
  paste = false,

  -- indentation
  -- autoindent = true,
  -- smartindent = true,

  -- unsorted
  number = true, -- line numbers
  relativenumber = false, -- useful for jumping but I like to refer to line numbers
  mouse = "a", -- full mouse functionality
  timeoutlen = 200,
  termguicolors = true, -- enables 24-bit colour
  showtabline = 2, -- always show tabs at top of screen
  cursorline = false, -- gets confusing when cancelling out of Visual mode
  scrolloff = 8, -- minimal number of lines to keep above / below cursor
  sidescrolloff = 8, -- minimal number of lines to keep left / right of cursor
  splitbelow = true,
  splitright = true,
  numberwidth = 3,
  signcolumn = "yes",
  ignorecase = true, -- ignore case while searching
  smartcase = true, -- resume search case sensitivity if term includes capitals
  pumheight = 10,
  fileencoding = "utf-8",
  hidden = true, -- the default, but insurance to prevent terminals being abandoned
  showmode = false,
  foldcolumn = "2",
  cmdheight = 2, -- helps avoid 'Press Enter' messages when working in a narrow window
  clipboard = "unnamedplus", -- yank to system clipboard via xcopy
  laststatus = 3,
  backspace = "indent,eol,start",
  completeopt = "menu,menuone,noselect",
}

-- Set colour scheme
vim.cmd("colorscheme davedark")

-- Gets rid of the ~ indicating non-text / end of buffer
vim.cmd("set fillchars+=eob:\\ ")

-- Enable cursor to wrap across lines
vim.opt.whichwrap:append("<,>,[,],h,l")

-- Treat "-" as part of a word
vim.opt.iskeyword:append("-")

-- Don't give ins-completion-menu messages (whatever they are?)
vim.opt.shortmess:append("c")

-- Change fold symbols
vim.opt.fillchars:append("foldopen:🞃, foldsep:│, foldclose:🞂")

-- Make the cursor blink to visually indicate whether the window is active
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
