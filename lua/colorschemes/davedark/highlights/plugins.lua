local c = require("colorschemes.davedark.palette").c
local config = require("config")

return {
  ---------------------------------------------------------
  -- nvim-tree
  ---------------------------------------------------------
  NvimTreeIndentMarker = { fg = c.fg },
  NvimTreeNormal = { bg = config.transparent_background and c.none or c.nvim_tree_bg },
  NvimTreeVertSplit = nil,
  NvimTreeFolderName = { fg = c.blue },
  NvimTreeOpenedFolderName = { fg = c.blue },
  NvimTreeSpecialFile = { fg = c.orange, bold = true, italic = true },
  NvimTreeGitStaged = { fg = c.green },
  NvimTreeCursorLine = nil,
  NvimTreeGitNew = { fg = c.green },
  NvimTreeGitDirty = { fg = c.orange },
  NvimTreeGitDeleted = { fg = c.error_red },
  NvimTreeRootFolder = { fg = c.fg, bold = true },

  -- nvim-tree (testing)
  NvimTreeFolderIcon = { fg = c.folder_grey, bg = c.none },
  -- NvimTreeImageFile = { fg = c.test_fg, bg = c.test_bg },
  -- NvimTreeGitMerge = { fg = c.test_fg, bg = c.test_bg },
  -- NvimTreeGitRenamed = { fg = c.test_fg, bg = c.test_bg },
  -- NvimTreeSymlink = { fg = c.test_fg, bg = c.test_bg },
  -- NvimTreeExecFile = { fg = c.test_fg, bg = c.test_bg },

  ---------------------------------------------------------
  -- Telescope
  ---------------------------------------------------------
  TelescopeSelection = { fg = c.cyan },
  TelescopeMatching = { fg = c.yellow, bold = true },
  TelescopeBorder = { fg = c.float_border, bg = config.transparent_background and c.none or c.bg },
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
  NotifyDEBUGBorder = { fg = c.pink },
  NotifyDEBUGIcon = { fg = c.pink },
  NotifyDEBUGTitle = { fg = c.pink },
  NotifyDEBUGBody = { fg = c.fg },
  NotifyTRACEBorder = { fg = c.purple },
  NotifyTRACEIcon = { fg = c.purple },
  NotifyTRACETitle = { fg = c.purple },
  NotifyTRACEBody = { fg = c.fg },

  ---------------------------------------------------------
  -- Illuminate
  ---------------------------------------------------------
  IlluminatedWordText = { fg = c.illuminate_text, bold = true },
  IlluminatedWordRead = { fg = c.illuminate_read, bold = true },
  IlluminatedWordWrite = { fg = c.illuminate_write, bold = true },

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
  ToggleTermBorder = { fg = c.float_border, bg = config.transparent_background and c.none or c.bg },
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
  -- lsp_signature
  ---------------------------------------------------------
  LspSignatureActiveParameter = { fg = c.blue, bold = true },

  ---------------------------------------------------------
  -- lspconfig
  ---------------------------------------------------------
  LspInfoTitle = { fg = c.yellow, bold = true },

  ---------------------------------------------------------
  -- gitsigns
  ---------------------------------------------------------
  GitSignsUntracked = { fg = c.blue },
  GitSignsUntrackedNr = { fg = c.blue },
  GitSignsUntrackedLn = { fg = c.blue },

  ---------------------------------------------------------
  -- cmp
  ---------------------------------------------------------
  CmpItemAbbrMatch = { fg = c.yellow, bold = true },
  CmpItemAbbrMatchFuzzy = { fg = c.orange, bold = true },
  CmpItemKind = { fg = c.off_black, bg = c.white },
  CmpItemKindClass = { fg = c.off_black, bg = c.green },
  CmpItemKindColor = { fg = c.off_black, bg = c.cyan },
  CmpItemKindConstant = { fg = c.off_black, bg = c.purple },
  CmpItemKindConstructor = { fg = c.off_black, bg = c.blue },
  CmpItemKindEnum = { fg = c.off_black, bg = c.violet },
  CmpItemKindEnumMember = { fg = c.off_black, bg = c.cyan },
  CmpItemKindEvent = { fg = c.off_black, bg = c.violet },
  CmpItemKindField = { fg = c.off_black, bg = c.cyan },
  CmpItemKindFile = { fg = c.off_black, bg = c.blue },
  CmpItemKindFolder = { fg = c.off_black, bg = c.blue },
  CmpItemKindFunction = { fg = c.off_black, bg = c.blue },
  CmpItemKindInterface = { fg = c.off_black, bg = c.green },
  CmpItemKindKeyword = { fg = c.off_black, bg = c.violet },
  CmpItemKindMethod = { fg = c.off_black, bg = c.blue },
  CmpItemKindModule = { fg = c.off_black, bg = c.green },
  CmpItemKindOperator = { fg = c.off_black, bg = c.violet },
  CmpItemKindProperty = { fg = c.off_black, bg = c.cyan },
  CmpItemKindReference = { fg = c.off_black, bg = c.cyan },
  CmpItemKindSnippet = { fg = c.off_black, bg = c.green },
  CmpItemKindStruct = { fg = c.off_black, bg = c.green },
  CmpItemKindText = { fg = c.off_black, bg = c.light_blue_grey },
  CmpItemKindTypeParameter = { fg = c.off_black, bg = c.green },
  CmpItemKindUnit = { fg = c.off_black, bg = c.cyan },
  CmpItemKindValue = { fg = c.off_black, bg = c.cyan },
  CmpItemKindVariable = { fg = c.off_black, bg = c.cyan },
  CmpItemMenu = { fg = c.light_blue_grey, italic = true },

  ---------------------------------------------------------
  -- Lspsaga
  ---------------------------------------------------------
  -- code action
  LspSagaCodeActionTitle = { fg = "#DA8548", bold = true },
  LspSagaCodeActionBorder = { fg = c.float_border },

  -- finder
  LspSagaLspFinderBorder = { fg = c.float_border },
  LspSagaAutoPreview = { fg = c.float_border },
  LspSagaFinderSelection = { fg = '#89d957', bold = true },
  TargetFileName = { fg = '#d1d4cf' },
  FinderParam = { fg = '#CBA6F7', bg = '#392a52', bold = true },
  FinderVirtText = { fg = '#c95942' },
  DefinitionsIcon = { fg = '#e3e346' },
  Definitions = { fg = '#CBA6F7', bold = true },
  DefinitionCount = { link = 'Title' },
  ReferencesIcon = { fg = '#e3e346' },
  References = { fg = '#CBA6F7', bold = true },
  ReferencesCount = { link = 'Title' },
  ImplementsIcon = { fg = '#e3e346' },
  Implements = { fg = '#CBA6F7', bold = true },
  ImplementsCount = { link = 'Title' },

  -- finder spinner
  FinderSpinnerBorder = { fg = c.float_border },
  FinderSpinnerTitle = { fg = '#b33076', bold = true },
  FinderSpinner = { fg = '#b33076', bold = true },
  FinderPreviewSearch = { link = 'Search' },

  -- definition
  DefinitionBorder = { fg = '#b3deef' },
  DefinitionArrow = { fg = '#ad475f' },
  DefinitionSearch = { link = 'Search' },
  DefinitionFile = { bg = '#151838' },

  -- hover
  LspSagaHoverBorder = { fg = c.float_border },
  LspSagaHoverTrunCateLine = { link = 'LspSagaHoverBorder' },

  -- rename
  LspSagaRenameBorder = { fg = c.float_border },
  LspSagaRenameMatch = { link = 'Search' },

  -- diagnostic
  LspSagaDiagnosticSource = { link = 'Comment' },
  LspSagaDiagnosticError = { link = 'DiagnosticError' },
  LspSagaDiagnosticWarn = { link = 'DiagnosticWarn' },
  LspSagaDiagnosticInfo = { link = 'DiagnosticInfo' },
  LspSagaDiagnosticHint = { link = 'DiagnosticHint' },
  LspSagaErrorTrunCateLine = { link = 'DiagnosticError' },
  LspSagaWarnTrunCateLine = { link = 'DiagnosticWarn' },
  LspSagaInfoTrunCateLine = { link = 'DiagnosticInfo' },
  LspSagaHintTrunCateLine = { link = 'DiagnosticHint' },
  LspSagaDiagnosticBorder = { fg = c.float_border },
  LspSagaDiagnosticHeader = { fg = '#afd700' },
  DiagnosticQuickFix = { fg = '#4dd158', bold = true },
  DiagnosticMap = { fg = '#cf80ce' },
  DiagnosticLineCol = { fg = '#73797e' },
  LspSagaDiagnosticTruncateLine = { link = 'LspSagaDiagnosticBorder' },
  ColInLineDiagnostic = { link = 'Comment' },

  -- signature help
  LspSagaSignatureHelpBorder = { fg = '#98be65' },
  LspSagaShTrunCateLine = { link = 'LspSagaSignatureHelpBorder' },

  -- lightbulb
  LspSagaLightBulb = { link = 'DiagnosticSignHint' },

  -- shadow
  SagaShadow = { fg = 'black' },

  -- float
  LspSagaBorderTitle = { link = 'String' },

  -- outline
  LSOutlinePreviewBorder = { fg = '#52ad70' },
  OutlineIndentEvn = { fg = '#c955ae' },
  OutlineIndentOdd = { fg = '#b8733e' },
  OutlineFoldPrefix = { fg = '#bf4537' },
  OutlineDetail = { fg = '#73797e' },

  -- all float windows of lspsaga
  LspFloatWinNormal = { link = 'Normal' },
}
