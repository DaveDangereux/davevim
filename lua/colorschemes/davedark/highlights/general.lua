local c = require("colorschemes.davedark.palette").c
local config = require("user_config")

return {
  ---------------------------------------------------------
  -- UI
  ---------------------------------------------------------
  Cursor = { bg = c.blue },
  CursorLine = { bg = c.dark_blue_grey },
  CursorLineNr = { fg = c.blue, bg = config.transparent_background and c.none or c.bg },
  Directory = { fg = c.blue },
  LineNr = { fg = c.blue_grey },
  ErrorMsg = { fg = c.error_red, bg = config.transparent_background and c.none or c.bg, bold = true },
  ModeMsg = { fg = c.fg },
  NonText = { fg = c.light_blue_grey }, -- remove style?
  Normal = { fg = c.fg, bg = config.transparent_background and c.none or c.bg },
  Search = { fg = c.none, bg = c.blue_grey, bold = true },
  SignColumn = { bg = config.transparent_background and c.none or c.bg },
  StatusLine = nil, -- these seem to cause carets to appear when set
  StatusLineNC = nil, -- these seem to cause carets to appear when set
  VertSplit = {
    fg = config.transparent_background and c.off_black or c.bg,
    bg = config.transparent_background and c.off_black or c.bg,
  },
  Visual = { bg = c.blue_grey },
  WinSeparator = { fg = c.off_black, bg = c.none },

  ---------------------------------------------------------
  -- Syntax highlighting
  ---------------------------------------------------------
  Boolean = { fg = c.orange },
  Character = { link = "Constant" },
  Comment = { fg = c.light_blue_grey, italic = true },
  Constant = { fg = c.red },
  Debug = { link = "Special" },
  Define = { link = "PreProc" },
  Delimiter = { fg = c.none, bg = c.none }, -- seems to highlight parentheses under cursor
  Error = { fg = c.error_red, bg = c.none, special = c.error_red }, -- may want to be white with underline
  Exception = { link = "Statement" },
  Float = { link = "Number" },
  FoldColumn = { fg = c.blue_grey, bg = config.transparent_background and c.none or c.bg },
  Folded = { fg = c.light_blue_grey, bg = c.dark_grey, italic = true },
  Function = { fg = c.none },
  Identifier = { fg = c.none },
  Include = { fg = c.none },
  Label = { fg = c.red },
  Macro = { fg = c.none },
  MatchParen = { bg = c.dark_blue_grey, bold = true },
  Number = { fg = c.orange },
  Operator = { link = "Statement" },
  PreProc = { fg = c.test_green },
  Repeat = { link = "Statement" },
  Special = { fg = c.fg },
  SpecialChar = { link = "Special" },
  Statement = { fg = c.none },
  StorageClass = { link = "Type" },
  String = { fg = c.green },
  Structure = { link = "Type" },
  Tag = { fg = c.test_green },
  Title = { fg = c.fg },
  Todo = { fg = c.none, bg = config.transparent_background and c.none or c.bg }, -- doesn't affect the fg?
  Type = { fg = c.blue },
  TypeDef = { link = "Type" },
  Underlined = { fg = c.blue, bold = true, underline = true },

  ---------------------------------------------------------
  -- Diff
  ---------------------------------------------------------
  DiffAdd = { fg = c.green, bg = config.transparent_background and c.none or c.bg }, -- does this do anything?
  DiffChange = { fg = c.orange, bg = config.transparent_background and c.none or c.bg },
  DiffDelete = { fg = c.red, bg = config.transparent_background and c.none or c.bg },
  DiffAdded = { fg = c.green },
  DiffRemoved = { fg = c.red },
  DiffFile = { fg = c.test_pink, bg = c.test_yellow },
  DiffIndexLine = { fg = c.test_pink, bg = c.test_yellow },
  DiffText = { fg = c.test_pink, bg = c.test_yellow },

  ---------------------------------------------------------
  -- Popup menu
  ---------------------------------------------------------
  Pmenu = { fg = c.fg, bg = config.pmenu_transparent_background and c.none or c.pmenu_bg },
  PmenuSel = { fg = c.silver, bg = c.bg },
  PmenuSbar = { bg = c.dark_grey },
  PmenuThumb = { bg = c.float_border },

  ---------------------------------------------------------
  -- Float
  ---------------------------------------------------------
  FloatBorder = { fg = c.float_border, bg = config.transparent_background and c.none or c.off_black },
}
