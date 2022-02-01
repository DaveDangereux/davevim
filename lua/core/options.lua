local options = {
  -- tabs
  tabstop = 2,                            -- insert this many spaces for <Tab> 
  shiftwidth = 0,                         -- number of steps for (auto)indent, uses tabstop when 0
  expandtab = true,                       -- convert tabs to spaces
  -- unsorted
  number = true,                          -- line numbers
  mouse = "a",                            -- full mouse functionality
  timeoutlen = 200
}

vim.opt.whichwrap:append "<,>,[,],h,l"    -- enable cursor to wrap across lines

for k, v in pairs(options) do
  vim.opt[k] = v
end