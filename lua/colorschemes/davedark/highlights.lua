local c = require("colorschemes.davedark.palette")
local config = require("colorschemes.davedark.config")

return {
  ---------------------------------------------------------
  -- General
  ---------------------------------------------------------
  Comment = { fg = c.light_blue_grey },
  -- Cursor = { bg = c.mute_blue },
  CursorLine = { bg = c.blue_grey },
  -- CursorLineNr = { fg = c.mute_blue },
  ErrorMsg = { fg = c.error_red, bg = config.transparent_background and c.none or c.bg, style = "bold" },
  LineNr = { fg = c.blue_grey },
  ModeMsg = { fg = c.fg },
  NonText = { fg = c.black, bg = config.transparent_background and c.none or c.bg },
  Normal = { fg = c.fg, bg = config.transparent_background and c.none or c.bg },
  Search = { bg = c.blue_grey },
  SignColumn = { bg = config.transparent_background and c.none or c.bg },
  Special = { fg = c.purple }, -- overrides TSInclude
  Todo = { fg = c.red, bg = config.transparent_background and c.none or c.bg, style = "bold" }, -- doesn't affect the fg?
  VertSplit = {
    fg = config.transparent_background and c.off_black or c.bg,
    bg = config.transparent_background and c.off_black or c.bg,
  },
  Visual = { bg = c.blue_grey },

  -- Diff
  DiffAdd = { fg = c.test_fg, bg = config.transparent_background and c.none or c.bg }, -- does this do anything?
  DiffChange = { fg = c.orange, bg = config.transparent_background and c.none or c.bg },
  DiffDelete = { fg = c.red, bg = config.transparent_background and c.none or c.bg },
  DiffAdded = { fg = c.green },
  DiffRemoved = { fg = c.test_fg, bg = c.test_bg },
  DiffFile = { fg = c.test_fg, bg = c.test_bg },
  DiffIndexLine = { fg = c.test_fg, bg = c.test_bg },
  DiffText = { fg = c.test_fg, bg = c.test_bg },
  -- diffAdded = nil,
  -- diffRemoved = { fg = c.test_fg, bg = c.test_bg },
  -- diffFileId = { fg = c.test_fg, bg = c.test_bg },
  -- diffFile = { fg = c.test_fg, bg = c.test_bg },
  -- diffNewFile = { fg = c.test_fg, bg = c.test_bg },
  -- diffOldFile = { fg = c.test_fg, bg = c.test_bg },
  -- GitSignsAdd = nil,
  -- GitSignsChange = nil,
  -- GitSignsDelete = nil,

  -- Popup menu
  Pmenu = { fg = c.fg, bg = c.off_black },
  PmenuSel = { fg = c.silver, bg = c.bg },
  PmenuSbar = { bg = c.dark_grey },
  PmenuThumb = { bg = c.blue_grey },

  -- Float
  FloatBorder = { fg = c.dark_grey, bg = c.off_black },

  -- Unsorted
  Statement = { fg = c.purple, style = "NONE" },
  Type = { fg = c.test_fg, bg = c.none, style = "NONE" },
  Identifier = { fg = c.blue, bg = config.transparent_background and c.none or c.bg },
  Constant = { bg = config.transparent_background and c.none or c.bg },
  -- Directory = { fg = c.mute_blue },
  Delimiter = { fg = c.test_fg },
  Title = { fg = c.fg },
  -- PreProc = { fg = c.test_fg, bg = c.test_bg },

  ---------------------------------------------------------
  -- nvim-tree
  ---------------------------------------------------------
  NvimTreeFolderIcon = { fg = c.test_fg, bg = c.test_bg },
  NvimTreeIndentMarker = { fg = c.fg },
  NvimTreeNormal = nil,
  NvimTreeVertSplit = nil,
  -- NvimTreeFolderName = { fg = c.mute_blue },
  NvimTreeOpenedFolderName = { fg = c.purple, style = "italic" },
  NvimTreeImageFile = { fg = c.test_fg, bg = c.test_bg },
  NvimTreeSpecialFile = { fg = c.orange, style = "bold,italic" },
  NvimTreeGitStaged = { fg = c.green },
  NvimTreeCursorLine = nil,
  NvimTreeGitNew = { fg = c.green },
  NvimTreeGitDirty = { fg = c.orange },
  NvimTreeGitDeleted = { fg = c.test_fg, bg = c.test_bg },
  NvimTreeGitMerge = { fg = c.test_fg, bg = c.test_bg },
  NvimTreeGitRenamed = { fg = c.test_fg, bg = c.test_bg },
  NvimTreeSymlink = { fg = c.test_fg, bg = c.test_bg },
  NvimTreeRootFolder = { fg = c.fg, style = "bold" },
  NvimTreeExecFile = { fg = c.test_fg, bg = c.test_bg },

  ---------------------------------------------------------
  -- Telescope
  ---------------------------------------------------------
  TelescopeSelection = { fg = c.cyan },
  TelescopeMatching = { fg = c.yellow, style = "bold" },
  TelescopeBorder = { fg = c.cyan, bg = config.transparent_background and c.none or c.bg },
  TelescopePromptPrefix = { fg = c.purple },

  ---------------------------------------------------------
  -- Notify
  ---------------------------------------------------------
  NotifyERRORBorder = { fg = c.error_red },
  NotifyERRORIcon = { fg = c.error_red },
  NotifyERRORTitle = { fg = c.error_red },
  NotifyERRORBody = { fg = c.fg },
  NotifyWARNBorder = { fg = c.orange },
  NotifyWARNIcon = { fg = c.orange },
  NotifyWARNTitle = { fg = c.orange },
  NotifyWARNBody = { fg = c.fg },
  NotifyINFOBorder = { fg = c.green },
  NotifyINFOIcon = { fg = c.green },
  NotifyINFOTitle = { fg = c.green },
  NotifyINFOBody = { fg = c.fg },
  NotifyDEBUGBorder = { fg = c.hot_pink },
  NotifyDEBUGIcon = { fg = c.hot_pink },
  NotifyDEBUGTitle = { fg = c.hot_pink },
  NotifyDEBUGBody = { fg = c.fg },
  NotifyTRACEBorder = { fg = c.purple },
  NotifyTRACEIcon = { fg = c.purple },
  NotifyTRACETitle = { fg = c.purple },
  NotifyTRACEBody = { fg = c.fg },

  ---------------------------------------------------------
  -- Illuminate
  ---------------------------------------------------------
  LspReferenceRead = { fg = c.illuminate_read, style = "bold,underline" },
  LspReferenceWrite = { fg = c.illuminate_write, style = "bold,underline" },
  LspReferenceText = { fg = c.illuminate_text, style = "bold,underline" },

  ---------------------------------------------------------
  -- Alpha
  ---------------------------------------------------------
  AlphaHeader1 = { fg = c.red },
  AlphaHeader2 = { fg = c.orange },
  AlphaHeader3 = { fg = c.yellow },
  AlphaHeader4 = { fg = c.green },
  AlphaHeader5 = { fg = c.blue },
  AlphaHeader6 = { fg = c.purple },
  AlphaButton = { fg = c.fg },
  AlphaButtonShortcut = { fg = c.orange },

  ---------------------------------------------------------
  -- markdown
  ---------------------------------------------------------
  markdownBlockquote = { fg = c.test_fg, bg = c.test_bg },
  markdownBold = { fg = c.yellow, style = "bold" },
  markdownCode = { fg = c.green },
  markdownCodeBlock = { fg = c.test_fg, bg = c.test_bg },
  markdownCodeDelimiter = { fg = c.green },
  markdownError = { fg = c.fg, bg = config.transparent_background and c.none or c.bg },
  markdownH1 = { fg = c.purple },
  markdownH2 = { fg = c.purple },
  markdownH3 = { fg = c.purple },
  markdownH4 = { fg = c.purple },
  markdownH5 = { fg = c.purple },
  markdownH6 = { fg = c.purple },
  -- markdownHeadingDelimiter = { fg = c.blue }, -- links to Delimiter
  markdownHeadingRule = { fg = c.test_fg, bg = c.test_bg },
  markdownId = { fg = c.test_fg, bg = c.test_bg },
  markdownIdDeclaration = { fg = c.test_fg, bg = c.test_bg },
  markdownIdDelimiter = { fg = c.test_fg, bg = c.test_bg },
  markdownLinkDelimiter = { fg = c.fg },
  markdownItalic = { fg = c.test_fg, bg = c.test_bg },
  markdownLinkText = { fg = c.blue, style = "underline" },
  markdownListMarker = { fg = c.red },
  markdownOrderedListMarker = { fg = c.test_fg, bg = c.test_bg },
  markdownRule = { fg = c.test_fg, bg = c.test_bg },
  markdownUrl = { fg = c.cyan },

  ---------------------------------------------------------
  -- LSP diagnostics
  ---------------------------------------------------------
  -- Error
  DiagnosticSignError = { fg = c.error_red },
  DiagnosticUnderlineError = { style = "underline" },
  -- Error (testing)
  DiagnosticFloatingError = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsError = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsDefaultError = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsFloatingError = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsSignError = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsUnderlineError = { fg = c.test_fg, bg = c.test_bg, style = "underline" },
  LspDiagnosticsVirtualTextError = { fg = c.test_fg, bg = c.test_bg },

  -- Warning
  DiagnosticSignWarn = { fg = c.orange },
  DiagnosticUnderlineWarn = { style = "underline" },
  -- Warning (testing)
  DiagnosticFloatingWarn = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsWarning = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsDefaultWarning = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsFloatingWarning = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsSignWarning = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsUnderlineWarning = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsVirtualTextWarning = { fg = c.test_fg, bg = c.test_bg },

  -- Information
  DiagnosticSignInfo = { fg = c.yellow },
  DiagnosticUnderlineInfo = { bg = c.test_bg },
  -- Information (testing)
  DiagnosticFloatingInfo = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsInformation = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsDefaultInformation = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsFloatingInformation = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsSignInformation = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsUnderlineInformation = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsVirtualTextInformation = { fg = c.test_fg, bg = c.test_bg },

  -- Hint
  DiagnosticSignHint = { fg = c.blue },
  DiagnosticUnderlineHint = { style = "underline" },
  -- Hint (testing)
  DiagnosticFloatingHint = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsHint = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsDefaultHint = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsFloatingHint = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsSignHint = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsUnderlineHint = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsVirtualTextHint = { fg = c.test_fg, bg = c.test_bg },

  ---------------------------------------------------------
  -- Treesitter
  ---------------------------------------------------------
  TSBoolean = { fg = c.orange },
  TSComment = { fg = c.light_blue_grey },
  TSConditional = { fg = c.red },
  TSConstant = { fg = c.red },
  TSConstBuiltin = { fg = c.orange },
  TSConstructor = { fg = c.yellow },
  TSError = { fg = c.fg }, -- should this be something a bit more obvious?
  TSField = { fg = c.red },
  TSFuncBuiltin = { fg = c.cyan },
  TSFunction = { fg = c.cyan },
  TSInclude = { fg = c.purple },
  TSKeyword = { fg = c.purple },
  TSKeywordFunction = { fg = c.purple },
  TSKeywordOperator = { fg = c.fg },
  TSKeywordReturn = { fg = c.purple },
  TSMethod = { fg = c.cyan },
  TSNone = { fg = c.fg },
  TSNumber = { fg = c.orange },
  TSOperator = { fg = c.fg },
  TSParameter = { fg = c.fg },
  -- TSProperty = { fg = c.blue }, -- links to Identifier
  TSPunctBracket = { fg = c.purple },
  TSPunctDelimiter = { fg = c.fg },
  TSString = { fg = c.green },
  TSTag = { fg = c.red, style = "NONE" },
  TSTagAttribute = { fg = c.orange, style = "NONE" },
  TSTagDelimiter = { fg = c.fg },
  -- TSText = { fg = c.test_fg },
  -- TSTitle = { fg = c.fg },
  TSTypeBuiltin = { fg = c.cyan },
  TSType = { fg = c.orange },
  TSURI = { fg = c.green, style = "underline" },
  TSVariable = { fg = c.red },
  -- TSWarning = { fg = c.test_fg, bg = c.test_bg },

  ---------------------------------------------------------
  -- Treesitter (unprocessed)
  ---------------------------------------------------------
  TSAnnotation = { fg = c.test_fg },
  TSAttribute = { fg = c.test_fg },
  TSException = { fg = c.test_fg },
  TSLabel = { fg = c.test_fg },
  TSNamespace = { fg = c.test_fg },
  TSRepeat = { fg = c.test_fg },
  TSFloat = { fg = c.test_fg },
  TSCharacter = { fg = c.test_fg },
  TSConstMacro = { fg = c.test_fg },
  TSFuncMacro = { fg = c.test_fg },
  TSParameterReference = { fg = c.test_fg },
  TSVariableBuiltin = { fg = c.test_fg },
  TSSymbol = { fg = c.test_fg },
  TSTextReference = { fg = c.test_fg },
  TSPunctSpecial = { fg = c.test_fg },
  TSStringRegex = { fg = c.test_fg },
  TSStringEscape = { fg = c.test_fg },
  TSEmphasis = { style = "italic" },
  TSUnderline = { style = "underline" },
  TSNote = { fg = c.test_fg, style = "bold" },
  TSDanger = { fg = c.test_fg, style = "bold" },
  TSLiteral = { fg = c.test_fg },
  TSMath = { fg = c.test_fg },
  TSStructure = { fg = c.test_fg },
  TSStrong = { fg = c.test_fg },
  TSQueryLinterError = { fg = c.test_fg },
  TSEnvironment = { fg = c.test_fg },
  TSEnvironmentName = { fg = c.test_fg },

  ---------------------------------------------------------
  -- TODO: Language-specific syntax highlighting
  ---------------------------------------------------------

  ---------------------------------------------------------
  -- General (unprocessed)
  ---------------------------------------------------------
  IncSearch = { fg = c.test_fg, bg = c.test_bg },
  SpecialKey = { fg = c.test_fg, bg = c.test_bg },
  WarningMsg = { fg = c.test_fg, bg = c.test_bg },
  WildMenu = { fg = c.test_fg, bg = c.test_bg },
  MoreMsg = { fg = c.test_fg, bg = c.test_bg },
  Question = { fg = c.test_fg, bg = c.test_bg },
  StatusLine = { fg = c.test_fg, bg = c.test_bg },
  StatusLineNC = { fg = c.test_fg, bg = c.test_bg },
  Folded = { fg = c.test_fg, bg = c.test_bg },
  FoldColumn = { fg = c.test_fg, bg = c.test_bg },
  ColorColumn = { fg = c.test_fg, bg = c.test_bg },
  Underlined = { fg = c.test_fg, bg = c.test_bg },
  Ignore = { fg = c.test_fg, bg = c.test_bg },
  SignAdd = { fg = c.test_fg, bg = c.test_bg },
  SignChange = { fg = c.test_fg, bg = c.test_bg },
  SignDelete = { fg = c.test_fg, bg = c.test_bg },
  QuickScopePrimary = { fg = c.test_fg, bg = c.test_bg },
  QuickScopeSecondary = { fg = c.test_fg, bg = c.test_bg },
  LirFloatNormal = { fg = c.test_fg, bg = c.test_bg },
  LirDir = { fg = c.test_fg, bg = c.test_bg },
  LirSymLink = { fg = c.test_fg, bg = c.test_bg },
  LirEmptyDirText = { fg = c.test_fg, bg = c.test_bg },
  BufferCurrent = { fg = c.test_fg, bg = c.test_bg },
  BufferCurrentIndex = { fg = c.test_fg, bg = c.test_bg },
  BufferCurrentMod = { fg = c.test_fg, bg = c.test_bg },
  BufferCurrentSign = { fg = c.test_fg, bg = c.test_bg },
  BufferCurrentTarget = { fg = c.test_fg, bg = c.test_bg },
  BufferVisible = { fg = c.test_fg, bg = c.test_bg },
  BufferVisibleIndex = { fg = c.test_fg, bg = c.test_bg },
  BufferVisibleMod = { fg = c.test_fg, bg = c.test_bg },
  BufferVisibleSign = { fg = c.test_fg, bg = c.test_bg },
  BufferVisibleTarget = { fg = c.test_fg, bg = c.test_bg },
  BufferInactive = { fg = c.test_fg, bg = c.test_bg },
  BufferInactiveIndex = { fg = c.test_fg, bg = c.test_bg },
  BufferInactiveMod = { fg = c.test_fg, bg = c.test_bg },
  BufferInactiveSign = { fg = c.test_fg, bg = c.test_bg },
  BufferInactiveTarget = { fg = c.test_fg, bg = c.test_bg },
  StatusLineSeparator = { fg = c.test_fg, bg = c.test_bg },
  StatusLineTerm = { fg = c.test_fg, bg = c.test_bg },
  StatusLineTermNC = { fg = c.test_fg, bg = c.test_bg },
  CodiVirtualText = { fg = c.test_fg, bg = c.test_bg },
  IndentBlanklineContextChar = { fg = c.test_fg, bg = c.test_bg },
  IndentBlanklineChar = { fg = c.test_fg, bg = c.test_bg },
  IndentBlanklineSpaceChar = { fg = c.test_fg, bg = c.test_bg },
  IndentBlanklineSpaceCharBlankline = { fg = c.test_fg, bg = c.test_bg },
  DashboardHeader = { fg = c.test_fg, bg = c.test_bg },
  DashboardCenter = { fg = c.test_fg, bg = c.test_bg },
  DashboardFooter = { fg = c.test_fg, bg = c.test_bg },
  xmlTag = { fg = c.test_fg, bg = c.test_bg },
  xmlTagName = { fg = c.test_fg, bg = c.test_bg },
  xmlEndTag = { fg = c.test_fg, bg = c.test_bg },
  CompeDocumentation = { fg = c.test_fg, bg = c.test_bg },
  DiffViewNormal = { fg = c.test_fg, bg = c.test_bg },
  DiffviewStatusAdded = { fg = c.test_fg, bg = c.test_bg },
  DiffviewStatusModified = { fg = c.test_fg, bg = c.test_bg },
  DiffviewStatusRenamed = { fg = c.test_fg, bg = c.test_bg },
  DiffviewStatusDeleted = { fg = c.test_fg, bg = c.test_bg },
  DiffviewFilePanelInsertion = { fg = c.test_fg, bg = c.test_bg },
  DiffviewFilePanelDeletion = { fg = c.test_fg, bg = c.test_bg },
  DiffviewVertSplit = { fg = c.test_fg, bg = c.test_bg },
  debugPc = { fg = c.test_fg, bg = c.test_bg },
  debugBreakpoint = { fg = c.test_fg, bg = c.test_bg },
  FocusedSymbol = { fg = c.test_fg, bg = c.test_bg },
  SymbolsOutlineConnector = { fg = c.test_fg, bg = c.test_bg },
  WhichKey = { fg = c.test_fg, bg = c.test_bg },
  WhichKeySeperator = { fg = c.test_fg, bg = c.test_bg },
  WhichKeyGroup = { fg = c.test_fg, bg = c.test_bg },
  WhichKeyDesc = { fg = c.test_fg, bg = c.test_bg },
  WhichKeyFloat = { fg = c.test_fg, bg = c.test_bg },
}
