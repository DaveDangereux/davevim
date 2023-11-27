local config = require("user_config")

local options = {
  -- tabbing
  tabstop = 2, -- insert this many spaces for <Tab>
  expandtab = true, -- convert tabs to spaces
  smarttab = true, -- delete spaces like they're tabs
  shiftwidth = 0, -- number of steps for (auto)indent, uses tabstop when 0

  -- word wrap and auto-new-line
  wrap = false,
  linebreak = true, -- prevents wrapping in the middle of a word
  textwidth = 79,

  -- cursor behaviour
  whichwrap = "b,s,<,>,[,],h,l",

  -- indentation
  autoindent = false,
  -- smartindent = true,

  -- line numbers
  number = true,
  relativenumber = true,
  numberwidth = 3,

  -- search
  ignorecase = true, -- ignore case while searching
  smartcase = true, -- resume search case sensitivity if term includes capitals
  incsearch = true, -- enable highlighting matches while you type

  -- ui
  termguicolors = true, -- enables 24-bit colour
  showtabline = 2, -- always show tabs at top of screen
  cursorline = false, -- gets confusing when cancelling out of Visual mode
  cmdheight = 1, -- helps avoid 'Press Enter' messages when working in a narrow window
  showmode = false, -- unneeded with feline statusline
  laststatus = 3, -- wide statusline for current buffer
  scrolloff = 8, -- minimal number of lines to keep above / below cursor
  sidescrolloff = 8, -- minimal number of lines to keep left / right of cursor

  -- folding
  foldmethod = "expr",
  foldexpr = "nvim_treesitter#foldexpr()",
  foldcolumn = "0",
  foldlevel = 99,
  foldlevelstart = 99,

  -- columns
  signcolumn = "yes",

  -- windows
  splitbelow = true,
  splitright = true,

  -- popup menu
  pumheight = 20,
  completeopt = "menu,menuone,noselect",

  -- persistent undo
  undofile = true,

  -- unsorted
  mouse = "a", -- full mouse functionality
  timeoutlen = 250,
  hidden = true, -- the default, but insurance to prevent terminals being abandoned
  clipboard = "unnamedplus", -- yank to system clipboard via xcopy
}

-- Apply options
for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Set colour scheme
vim.cmd("colorscheme " .. config.colorscheme)

-- Treat "-" as part of a word
vim.opt.iskeyword:append("-")

-- Gets rid of the ~ indicating non-text / end of buffer
vim.opt.fillchars:append("eob: ")

-- Change fold symbols
vim.opt.fillchars:append("foldopen:🞃, foldsep:▏, foldclose:🞂")

-- Prettier blank lines in diffview
vim.opt.fillchars:append({ diff = "░" })

-- Don't give ins-completion-menu messages
vim.opt.shortmess:append("c")

-- Make the cursor blink to visually indicate whether the window is active
vim.cmd([[
  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175
]])
