local c = require("colorschemes.davedark.palette").c
local config = require("config")

return {
  ---------------------------------------------------------
  -- UI
  ---------------------------------------------------------
  Constant = { fg = c.none },
  Cursor = { bg = c.blue },
  CursorLine = { bg = c.dark_blue_grey },
  CursorLineNr = { fg = c.blue, bg = config.transparent_background and c.none or c.bg },
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
  -- Basic syntax highlighting
  ---------------------------------------------------------
  Boolean = { fg = c.orange },
  Comment = { fg = c.light_blue_grey, italic = true },
  Error = { fg = c.error_red, bg = c.none, special = c.error_red }, -- may want to be white with underline
  FoldColumn = { fg = c.blue_grey, bg = config.transparent_background and c.none or c.bg },
  Folded = { fg = c.light_blue_grey, bg = c.dark_grey, italic = true },
  Function = { fg = c.none },
  Identifier = { fg = c.none },
  Include = { fg = c.none },
  Macro = { fg = c.none },
  MatchParen = { bg = c.dark_blue_grey, bold = true },
  Special = { fg = c.none }, -- overrides TSInclude
  String = { fg = c.green }, -- may conflict with TSString
  Todo = { fg = c.red, bg = config.transparent_background and c.none or c.bg, bold = true }, -- doesn't affect the fg?

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
  PmenuThumb = { bg = c.blue_grey },

  ---------------------------------------------------------
  -- Float
  ---------------------------------------------------------
  FloatBorder = { fg = c.float_border, bg = config.transparent_background and c.none or c.off_black },

  ---------------------------------------------------------
  -- Unsorted
  ---------------------------------------------------------
  Statement = { fg = c.none }, -- remove style?
  Type = { fg = c.none, bg = c.none }, -- remove style? affects table brackets
  -- Constant = { bg = config.transparent_background and c.none or c.bg },
  directory = { fg = c.blue },
  Delimiter = { fg = c.none, bg = c.none }, -- seems to highlight parentheses under cursor
  Title = { fg = c.fg }, -- remove style?
  -- PreProc = { fg = c.test_fg, bg = c.test_bg },

  ---------------------------------------------------------
  -- Unprocessed
  ---------------------------------------------------------
  -- IncSearch = { fg = c.test_fg, bg = c.test_bg },
  -- SpecialKey = { fg = c.test_fg, bg = c.test_bg },
  -- WarningMsg = { fg = c.test_fg, bg = c.test_bg },
  -- WildMenu = { fg = c.test_fg, bg = c.test_bg },
  -- MoreMsg = { fg = c.test_fg, bg = c.test_bg },
  -- Question = { fg = c.test_fg, bg = c.test_bg },
  -- -- StatusLine = { fg = c.test_fg, bg = c.test_bg },
  -- -- StatusLineNC = { fg = c.test_fg, bg = c.test_bg },
  -- Folded = { fg = c.test_fg, bg = c.test_bg },
  -- FoldColumn = { fg = c.test_fg, bg = c.test_bg },
  -- ColorColumn = { fg = c.test_fg, bg = c.test_bg },
  -- Underlined = { fg = c.test_fg, bg = c.test_bg },
  -- Ignore = { fg = c.test_fg, bg = c.test_bg },
  -- SignAdd = { fg = c.test_fg, bg = c.test_bg },
  -- SignChange = { fg = c.test_fg, bg = c.test_bg },
  -- SignDelete = { fg = c.test_fg, bg = c.test_bg },
  -- QuickScopePrimary = { fg = c.test_fg, bg = c.test_bg },
  -- QuickScopeSecondary = { fg = c.test_fg, bg = c.test_bg },
  -- LirFloatNormal = { fg = c.test_fg, bg = c.test_bg },
  -- LirDir = { fg = c.test_fg, bg = c.test_bg },
  -- LirSymLink = { fg = c.test_fg, bg = c.test_bg },
  -- LirEmptyDirText = { fg = c.test_fg, bg = c.test_bg },
  -- BufferCurrent = { fg = c.test_fg, bg = c.test_bg },
  -- BufferCurrentIndex = { fg = c.test_fg, bg = c.test_bg },
  -- BufferCurrentMod = { fg = c.test_fg, bg = c.test_bg },
  -- BufferCurrentSign = { fg = c.test_fg, bg = c.test_bg },
  -- BufferCurrentTarget = { fg = c.test_fg, bg = c.test_bg },
  -- BufferVisible = { fg = c.test_fg, bg = c.test_bg },
  -- BufferVisibleIndex = { fg = c.test_fg, bg = c.test_bg },
  -- BufferVisibleMod = { fg = c.test_fg, bg = c.test_bg },
  -- BufferVisibleSign = { fg = c.test_fg, bg = c.test_bg },
  -- BufferVisibleTarget = { fg = c.test_fg, bg = c.test_bg },
  -- BufferInactive = { fg = c.test_fg, bg = c.test_bg },
  -- BufferInactiveIndex = { fg = c.test_fg, bg = c.test_bg },
  -- BufferInactiveMod = { fg = c.test_fg, bg = c.test_bg },
  -- BufferInactiveSign = { fg = c.test_fg, bg = c.test_bg },
  -- BufferInactiveTarget = { fg = c.test_fg, bg = c.test_bg },
  -- -- StatusLineSeparator = { fg = c.test_fg, bg = c.test_bg },
  -- -- StatusLineTerm = { fg = c.test_fg, bg = c.test_bg },
  -- -- StatusLineTermNC = { fg = c.test_fg, bg = c.test_bg },
  -- CodiVirtualText = { fg = c.test_fg, bg = c.test_bg },
  -- IndentBlanklineContextChar = { fg = c.test_fg, bg = c.test_bg },
  -- IndentBlanklineChar = { fg = c.test_fg, bg = c.test_bg },
  -- IndentBlanklineSpaceChar = { fg = c.test_fg, bg = c.test_bg },
  -- IndentBlanklineSpaceCharBlankline = { fg = c.test_fg, bg = c.test_bg },
  -- DashboardHeader = { fg = c.test_fg, bg = c.test_bg },
  -- DashboardCenter = { fg = c.test_fg, bg = c.test_bg },
  -- DashboardFooter = { fg = c.test_fg, bg = c.test_bg },
  -- xmlTag = { fg = c.test_fg, bg = c.test_bg },
  -- xmlTagName = { fg = c.test_fg, bg = c.test_bg },
  -- xmlEndTag = { fg = c.test_fg, bg = c.test_bg },
  -- CompeDocumentation = { fg = c.test_fg, bg = c.test_bg },
  -- DiffViewNormal = { fg = c.test_fg, bg = c.test_bg },
  -- DiffviewStatusAdded = { fg = c.test_fg, bg = c.test_bg },
  -- DiffviewStatusModified = { fg = c.test_fg, bg = c.test_bg },
  -- DiffviewStatusRenamed = { fg = c.test_fg, bg = c.test_bg },
  -- DiffviewStatusDeleted = { fg = c.test_fg, bg = c.test_bg },
  -- DiffviewFilePanelInsertion = { fg = c.test_fg, bg = c.test_bg },
  -- DiffviewFilePanelDeletion = { fg = c.test_fg, bg = c.test_bg },
  -- DiffviewVertSplit = { fg = c.test_fg, bg = c.test_bg },
  -- debugPc = { fg = c.test_fg, bg = c.test_bg },
  -- debugBreakpoint = { fg = c.test_fg, bg = c.test_bg },
  -- FocusedSymbol = { fg = c.test_fg, bg = c.test_bg },
  -- SymbolsOutlineConnector = { fg = c.test_fg, bg = c.test_bg },
  -- WhichKey = { fg = c.test_fg, bg = c.test_bg },
  -- WhichKeySeperator = { fg = c.test_fg, bg = c.test_bg },
  -- WhichKeyGroup = { fg = c.test_fg, bg = c.test_bg },
  -- WhichKeyDesc = { fg = c.test_fg, bg = c.test_bg },
  -- WhichKeyFloat = { fg = c.test_fg, bg = c.test_bg },
  -- diffAdded = nil,
  -- diffRemoved = { fg = c.test_fg, bg = c.test_bg },
  -- diffFileId = { fg = c.test_fg, bg = c.test_bg },
  -- diffFile = { fg = c.test_fg, bg = c.test_bg },
  -- diffNewFile = { fg = c.test_fg, bg = c.test_bg },
  -- diffOldFile = { fg = c.test_fg, bg = c.test_bg },
}
