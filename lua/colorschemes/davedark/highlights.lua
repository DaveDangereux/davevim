local c = require("colorschemes.davedark.palette")
local config = require("colorschemes.davedark.config")

return {
  ---------------------------------------------------------
  -- General
  ---------------------------------------------------------

  -- UI
  Cursor = { bg = c.blue },
  CursorLine = { bg = c.dark_blue_grey },
  CursorLineNr = { fg = c.blue, bg = config.transparent_background and c.none or c.bg },
  LineNr = { fg = c.blue_grey },
  ErrorMsg = { fg = c.error_red, bg = config.transparent_background and c.none or c.bg, style = "bold" },
  ModeMsg = { fg = c.fg },
  NonText = { fg = c.light_blue_grey, style = "none" },
  Normal = { fg = c.fg, bg = config.transparent_background and c.none or c.bg },
  Search = { bg = c.blue_grey },
  SignColumn = { bg = config.transparent_background and c.none or c.bg },
  StatusLine = { fg = c.off_black },
  StatusLineNC = { fg = c.off_black },
  VertSplit = {
    fg = config.transparent_background and c.off_black or c.bg,
    bg = config.transparent_background and c.off_black or c.bg,
  },
  Visual = { bg = c.blue_grey },

  -- Basic syntax highlighting
  Boolean = { fg = c.orange },
  Comment = { fg = c.light_blue_grey },
  Error = { bg = c.none, style = "undercurl", special = c.error_red },
  Folded = { fg = c.fg, bg = c.dark_grey },
  MatchParen = { bg = c.blue_grey },
  Special = { fg = c.purple }, -- overrides TSInclude
  Todo = { fg = c.red, bg = config.transparent_background and c.none or c.bg, style = "bold" }, -- doesn't affect the fg?

  -- Diff
  DiffAdd = { fg = c.test_fg, bg = config.transparent_background and c.none or c.bg }, -- does this do anything?
  DiffChange = { fg = c.orange, bg = config.transparent_background and c.none or c.bg },
  DiffDelete = { fg = c.red, bg = config.transparent_background and c.none or c.bg },
  DiffAdded = { fg = c.green },
  DiffRemoved = { fg = c.error_red },
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
  Pmenu = { fg = c.fg, bg = config.transparent_background and c.none or c.off_black },
  PmenuSel = { fg = c.silver, bg = c.bg },
  PmenuSbar = { bg = c.dark_grey },
  PmenuThumb = { bg = c.blue_grey },

  -- Float
  FloatBorder = { fg = c.cyan, bg = config.transparent_background and c.none or c.off_black },

  -- Unsorted
  Statement = { fg = c.none, style = "NONE" }, -- affects html tags in php
  Type = { fg = c.none, bg = c.none, style = "NONE" }, -- affects table brackets
  Identifier = { fg = c.fg, bg = config.transparent_background and c.none or c.bg }, -- affects <> html tag brackets
  -- Constant = { bg = config.transparent_background and c.none or c.bg },
  directory = { fg = c.blue },
  Delimiter = { fg = c.none, bg = c.none }, -- seems to highlight parentheses under cursor
  Title = { fg = c.fg },
  -- PreProc = { fg = c.test_fg, bg = c.test_bg },

  ---------------------------------------------------------
  -- nvim-tree
  ---------------------------------------------------------
  NvimTreeIndentMarker = { fg = c.fg },
  NvimTreeNormal = { bg = config.transparent_background and c.none or c.nvim_tree_bg },
  NvimTreeVertSplit = nil,
  NvimTreeFolderName = { fg = c.blue },
  NvimTreeOpenedFolderName = { fg = c.purple, style = "italic" },
  NvimTreeSpecialFile = { fg = c.orange, style = "bold,italic" },
  NvimTreeGitStaged = { fg = c.green },
  NvimTreeCursorLine = nil,
  NvimTreeGitNew = { fg = c.green },
  NvimTreeGitDirty = { fg = c.orange },
  NvimTreeGitDeleted = { fg = c.error_red },
  NvimTreeRootFolder = { fg = c.fg, style = "bold" },

  -- nvim-tree (testing)
  -- NvimTreeFolderIcon = { fg = c.test_fg, bg = c.test_bg },
  -- NvimTreeImageFile = { fg = c.test_fg, bg = c.test_bg },
  -- NvimTreeGitMerge = { fg = c.test_fg, bg = c.test_bg },
  -- NvimTreeGitRenamed = { fg = c.test_fg, bg = c.test_bg },
  -- NvimTreeSymlink = { fg = c.test_fg, bg = c.test_bg },
  -- NvimTreeExecFile = { fg = c.test_fg, bg = c.test_bg },

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
  LspReferenceRead = { fg = c.illuminate_read, style = "bold" },
  LspReferenceWrite = { fg = c.illuminate_write, style = "bold" },
  LspReferenceText = { fg = c.illuminate_text, style = "bold" },

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
  -- toggleterm
  ---------------------------------------------------------
  ToggleTermBorder = { fg = c.cyan, bg = config.transparent_background and c.none or c.bg },
  ToggleTermBg = { bg = config.transparent_background and c.none or c.term_bg },

  ---------------------------------------------------------
  -- indent-blankline
  ---------------------------------------------------------
  IndentBlanklineIndent1 = { fg = c.indent1 },
  IndentBlanklineIndent2 = { fg = c.indent2 },
  IndentBlanklineIndent3 = { fg = c.indent3 },
  IndentBlanklineIndent4 = { fg = c.indent4 },
  IndentBlanklineIndent5 = { fg = c.indent5 },
  IndentBlanklineIndent6 = { fg = c.indent6 },
  IndentBlanklineIndent7 = { fg = c.indent7 },

  ---------------------------------------------------------
  -- LSP diagnostics
  ---------------------------------------------------------
  -- Error
  DiagnosticError = { fg = c.error_red },
  DiagnosticSignError = { fg = c.error_red },
  DiagnosticUnderlineError = { style = "undercurl", special = c.error_red },
  DiagnosticFloatingError = { fg = c.error_red },
  DiagnosticVirtualTextError = { fg = c.light_blue_grey },
  -- Error (testing)
  LspDiagnosticsError = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsDefaultError = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsFloatingError = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsSignError = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsUnderlineError = { fg = c.test_fg, bg = c.test_bg, style = "underline" },
  LspDiagnosticsVirtualTextError = { fg = c.test_fg, bg = c.test_bg },

  -- Warning
  DiagnosticWarn = { fg = c.orange },
  DiagnosticSignWarn = { fg = c.orange },
  DiagnosticUnderlineWarn = { style = "undercurl", special = c.orange },
  DiagnosticFloatingWarn = { fg = c.orange },
  DiagnosticVirtualTextWarn = { fg = c.light_blue_grey },
  -- Warning (testing)
  LspDiagnosticsWarning = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsDefaultWarning = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsFloatingWarning = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsSignWarning = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsUnderlineWarning = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsVirtualTextWarning = { fg = c.test_fg, bg = c.test_bg },

  -- Information
  DiagnosticInfo = { fg = c.green },
  DiagnosticSignInfo = { fg = c.green },
  DiagnosticUnderlineInfo = { style = "undercurl", special = c.green },
  DiagnosticFloatingInfo = { fg = c.green },
  DiagnosticVirtualTextInfo = { fg = c.light_blue_grey },
  -- Information (testing)
  LspDiagnosticsInformation = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsDefaultInformation = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsFloatingInformation = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsSignInformation = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsUnderlineInformation = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsVirtualTextInformation = { fg = c.test_fg, bg = c.test_bg },

  -- Hint
  DiagnosticHint = { fg = c.blue },
  DiagnosticSignHint = { fg = c.blue },
  DiagnosticUnderlineHint = { style = "undercurl", special = c.blue },
  DiagnosticFloatingHint = { fg = c.blue },
  DiagnosticVirtualTextHint = { fg = c.light_blue_grey },
  -- Hint (testing)
  LspDiagnosticsHint = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsDefaultHint = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsFloatingHint = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsSignHint = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsUnderlineHint = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsVirtualTextHint = { fg = c.test_fg, bg = c.test_bg },

  ---------------------------------------------------------
  -- lsp_signature
  ---------------------------------------------------------
  LspSignatureActiveParameter = { fg = c.blue, style = "bold" },

  ---------------------------------------------------------
  -- Treesitter
  ---------------------------------------------------------
  TSBoolean = { fg = c.cyan },
  TSComment = { fg = c.light_blue_grey },
  TSConditional = { fg = c.none },
  TSConstant = { fg = c.red },
  TSConstBuiltin = { fg = c.orange },
  TSConstructor = { fg = c.none },
  TSError = { fg = c.fg, bg = c.bg }, -- should this be something a bit more obvious?
  TSField = { fg = c.red },
  TSFuncBuiltin = { fg = c.cyan },
  TSFunction = { fg = c.none },
  TSInclude = { fg = c.none },
  TSKeyword = { fg = c.none, bg = c.none },
  TSKeywordFunction = { fg = c.none },
  TSKeywordOperator = { fg = c.none },
  TSKeywordReturn = { fg = c.none },
  TSMethod = { fg = c.cyan },
  TSNone = { fg = c.fg },
  TSNumber = { fg = c.orange },
  TSOperator = { fg = c.fg },
  TSParameter = { fg = c.none },
  TSProperty = { fg = c.blue },
  TSPunctBracket = { fg = c.none },
  TSPunctDelimiter = { fg = c.fg },
  TSString = { fg = c.green },
  TSTag = { fg = c.none, style = "NONE" },
  TSTagAttribute = { fg = c.orange, style = "NONE" },
  TSTagDelimiter = { fg = c.fg },
  -- TSText = { fg = c.test_fg },
  -- TSTitle = { fg = c.fg },
  TSTypeBuiltin = { fg = c.none },
  TSType = { fg = c.none },
  TSURI = { fg = c.green, style = "underline" },
  TSVariable = { fg = c.none },
  -- TSWarning = { fg = c.test_fg, bg = c.test_bg },

  ---------------------------------------------------------
  -- Treesitter (unprocessed)
  ---------------------------------------------------------
  TSAnnotation = { fg = c.test_fg },
  TSAttribute = { fg = c.test_fg },
  TSException = { fg = c.test_fg },
  TSLabel = { fg = c.red },
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
  -- html
  ---------------------------------------------------------

  htmlArg = { fg = c.orange },
  htmlComment = { fg = c.blue },
  htmlSpecialTagName = { fg = c.red },
  htmlString = { fg = c.green },
  htmlTag = { fg = c.fg },
  htmlTagN = { fg = c.fg },
  htmlTagName = { fg = c.red },
  htmlTSTag = { fg = c.red },
  htmlTSTagDelimiter = { fg = c.fg },

  ---------------------------------------------------------
  -- JavaScript
  ---------------------------------------------------------
  javascriptReserved = { fg = c.purple },
  javascriptTSConstructor = { fg = c.red },
  javascriptTSKeywordReturn = { fg = c.purple },
  javascriptTSMethod = { fg = c.blue },
  javascriptTSProperty = { fg = c.fg },
  javascriptTSVariable = { fg = c.yellow },
  javascriptTSVariableBuiltin = { fg = c.red },

  ---------------------------------------------------------
  -- TypeScript
  ---------------------------------------------------------
  typescriptBlock = { fg = c.none },
  typescriptDefault = { fg = c.red },
  typescriptDestructureVariable = { fg = c.orange },
  typescriptIdentifierName = { fg = c.red },
  typescriptInterfaceKeyword = { fg = c.purple },
  typescriptObjectType = { fg = c.blue },
  typescriptStatementKeyword = { fg = c.purple },
  typescriptTernaryOperator = { fg = c.fg },
  typescriptVariable = { fg = c.purple },
  typescriptVariableDeclaration = { fg = c.blue },
  tsTSInclude = { fg = c.purple },

  ---------------------------------------------------------
  -- tsx
  ---------------------------------------------------------

  tsxTag = { fg = c.yellow },
  tsxTagName = { fg = c.yellow },
  -- tsxTSConstructor = { fg = c.red },
  tsxTSTag = { fg = c.yellow },
  tsxTSKeyword = { fg = c.purple },
  tsxTSParameter = { fg = c.fg },
  tsxTSProperty = { fg = c.fg },
  tsxTSTypeBuiltin = { fg = c.cyan },
  tsxTSVariable = { fg = c.none },
  tsxTSFunction = { fg = c.blue },

  ---------------------------------------------------------
  -- python
  ---------------------------------------------------------
  pythonConditional = { fg = c.purple },
  pythonException = { fg = c.purple },
  pythonExceptions = { fg = c.cyan },
  pythonInclude = { fg = c.purple },
  pythonTSConstBuiltin = { fg = c.red },
  pythonTSInclude = { fg = c.purple },
  pythonTSKeyword = { fg = c.purple },
  pythonTSKeywordFunction = { fg = c.purple },
  pythonTSKeywordReturn = { fg = c.purple },
  pythonTSType = { fg = c.rolling_stone },
  pythonTSParameter = { fg = c.orange },

  ---------------------------------------------------------
  -- php
  ---------------------------------------------------------
  phpClass = { fg = c.yellow },
  phpClassExtends = { fg = c.green },
  phpDefine = { fg = c.cyan },
  phpIdentifier = { fg = c.red },
  phpInclude = { fg = c.purple },
  phpRegion = { fg = c.fg },
  phpStorageClass = { fg = c.purple },
  phpStringDouble = { fg = c.green },
  phpStructure = { fg = c.purple },
  -- phpUseAlias = { fg = c.fg },
  phpUseClass = { fg = c.yellow },
  phpKeyword = { fg = c.purple },
  phpVarSelector = { fg = c.red },

  -- treesitter php highlights
  -- unsorted
  phpTSProperty = { fg = c.red },
  phpTSType = { fg = c.none },
  phpTSVariableBuiltin = { fg = c.red },
  -- included
  phpTSKeyword = { fg = c.purple }, -- public
  phpTSKeywordFunction = { fg = c.purple },
  phpTSNamespace = { fg = c.yellow },
  phpTSParameter = { fg = c.fg },
  phpTSPunctBracket = { fg = c.error_red },
  -- excluded
  phpTSConditional = { fg = c.none },
  phpTSRepeat = { fg = c.none },

  ---------------------------------------------------------
  -- lua
  ---------------------------------------------------------
  luaTSConditional = { fg = c.purple },
  luaTSFunction = { fg = c.blue },
  luaTSKeyword = { fg = c.purple },
  luaTSKeywordFunction = { fg = c.purple },
  luaTSKeywordReturn = { fg = c.purple },
  luaTSParameter = { fg = c.fg },
  luaTSRepeat = { fg = c.purple },
  luaTSVariable = { fg = c.red },

  ---------------------------------------------------------
  -- jsonc
  ---------------------------------------------------------
  -- jsoncLineComment = { fg = c.red },
  -- jsonTSLabel = { fg = nil },

  ---------------------------------------------------------
  -- markdown
  ---------------------------------------------------------
  markdownBlockquote = { fg = c.test_fg, bg = c.test_bg },
  markdownBold = { fg = c.yellow, style = "bold" },
  markdownCode = { fg = c.fg, bg = c.dark_blue_grey },
  -- markdownCodeBlock = { fg = c.test_fg, bg = c.test_bg },
  markdownCodeDelimiter = { fg = c.dark_blue_grey, bg = c.dark_blue_grey },
  markdownError = { fg = c.fg, bg = config.transparent_background and c.none or c.bg },
  markdownH1 = { fg = c.purple },
  markdownH2 = { fg = c.purple },
  markdownH3 = { fg = c.purple },
  markdownH4 = { fg = c.purple },
  markdownH5 = { fg = c.purple },
  markdownH6 = { fg = c.purple },
  markdownHeadingDelimiter = { fg = c.blue },
  markdownHeadingRule = { fg = c.test_fg, bg = c.test_bg },
  markdownId = { fg = c.test_fg, bg = c.test_bg },
  markdownIdDeclaration = { fg = c.test_fg, bg = c.test_bg },
  markdownIdDelimiter = { fg = c.test_fg, bg = c.test_bg },
  markdownLinkDelimiter = { fg = c.fg },
  -- markdownItalic = { fg = c.test_fg, bg = c.test_bg },
  markdownLinkText = { fg = c.blue, style = "underline" },
  markdownListMarker = { fg = c.red },
  markdownOrderedListMarker = { fg = c.test_fg, bg = c.test_bg },
  markdownRule = { fg = c.test_fg, bg = c.test_bg },
  markdownUrl = { fg = c.cyan },

  ---------------------------------------------------------
  -- General (unprocessed)
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
}
