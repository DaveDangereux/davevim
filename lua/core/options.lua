local options = {
  -- tabs
  tabstop = 2,                            -- insert this many spaces for <Tab> 
  shiftwidth = 0,                         -- number of steps for (auto)indent, uses tabstop when 0
  expandtab = true,                       -- convert tabs to spaces
  -- word wrap
  wrap = false,
  linebreak = true,
  breakindent = true,
  showbreak = "  ",
  -- unsorted
  number = true,                          -- line numbers
  mouse = "a",                            -- full mouse functionality
  timeoutlen = 200,
  termguicolors = true,                   -- enables 24-bit colour 
  showtabline = 2,                        -- always show tabs at top of screen
  cursorline = true, 
  scrolloff = 8,                          -- minimal number of lines to keep above / below cursor
  sidescrolloff = 8,                      -- minimal number of lines to keep left / right of cursor
}

vim.opt.whichwrap:append "<,>,[,],h,l"    -- enable cursor to wrap across lines

for k, v in pairs(options) do
  vim.opt[k] = v
end
