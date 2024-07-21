local config = require("user_config")

return function(theme_variant)
  local c = require("colorschemes.davedark.themes.default")

  if theme_variant then
    c = require("colorschemes.davedark.themes." .. theme_variant)
  end

  return {
    -----------------------------------------------------------------------
    -- nvim-tree
    -----------------------------------------------------------------------
    NvimTreeIndentMarker = { fg = c.fg },
    NvimTreeNormal = { bg = config.transparent_background and c.none or c.bg },
    NvimTreeNormalFloat = { bg = config.transparent_background and c.none or c.bg },
    NvimTreeVertSplit = nil,
    NvimTreeFolderName = { fg = c.nvimtree_folder_name },
    NvimTreeFolderIcon = { fg = c.nvimtree_folder_name, bg = c.none },
    NvimTreeOpenedFile = { fg = c.nvimtree_file_open },
    NvimTreeOpenedFolderName = { fg = c.nvimtree_folder_name_open },
    NvimTreeOpenedFolderIcon = { fg = c.nvimtree_folder_name_open },
    NvimTreeSpecialFile = { fg = c.nvimtree_special_file, bold = true, italic = true },
    NvimTreeGitStaged = { fg = c.diff_add },
    NvimTreeGitNew = { fg = c.diff_add },
    NvimTreeGitDirty = { fg = c.diff_change },
    NvimTreeGitDeleted = { fg = c.diff_delete },
    NvimTreeRootFolder = { fg = c.fg, bold = true, italic = true },

    -----------------------------------------------------------------------
    -- Telescope
    -----------------------------------------------------------------------
    TelescopeSelection = { fg = c.telescope_text_sel },
    TelescopeMatching = { fg = c.none, bold = true },
    TelescopeBorder = { fg = c.float_border, bg = config.transparent_background and c.none or c.bg },
    TelescopePromptPrefix = { fg = c.keyword },

    -----------------------------------------------------------------------
    -- Notify
    -----------------------------------------------------------------------
    NotifyERRORBorder = { fg = c.error },
    NotifyERRORIcon = { fg = c.error },
    NotifyERRORTitle = { fg = c.error },
    NotifyERRORBody = { fg = c.fg },
    NotifyWARNBorder = { fg = c.warn },
    NotifyWARNIcon = { fg = c.warn },
    NotifyWARNTitle = { fg = c.warn },
    NotifyWARNBody = { fg = c.fg },
    NotifyINFOBorder = { fg = c.info },
    NotifyINFOIcon = { fg = c.info },
    NotifyINFOTitle = { fg = c.info },
    NotifyINFOBody = { fg = c.fg },
    NotifyDEBUGBorder = { fg = c.string },
    NotifyDEBUGIcon = { fg = c.string },
    NotifyDEBUGTitle = { fg = c.string },
    NotifyDEBUGBody = { fg = c.fg },
    NotifyTRACEBorder = { fg = c.keyword },
    NotifyTRACEIcon = { fg = c.keyword },
    NotifyTRACETitle = { fg = c.keyword },
    NotifyTRACEBody = { fg = c.fg },

    -----------------------------------------------------------------------
    -- Illuminate
    -----------------------------------------------------------------------
    IlluminatedWordText = { fg = c.fg_dark, bg = c.illuminate_text, bold = true },
    IlluminatedWordRead = { fg = c.fg_dark, bg = c.illuminate_read, bold = true },
    IlluminatedWordWrite = { fg = c.fg_dark, bg = c.illuminate_write, bold = true },

    -----------------------------------------------------------------------
    -- Alpha
    -----------------------------------------------------------------------
    AlphaHeader1 = { fg = c.field },
    AlphaHeader2 = { fg = c.number },
    AlphaHeader3 = { fg = c.type },
    AlphaHeader4 = { fg = c.string },
    AlphaHeader5 = { fg = c.function_hl },
    AlphaHeader6 = { fg = c.keyword },
    AlphaButton = { fg = c.fg },
    AlphaButtonShortcut = { fg = c.number },

    -----------------------------------------------------------------------
    -- indent-blankline
    -----------------------------------------------------------------------
    IblIndent = { fg = c.indent },
    IndentBlanklineIndent1 = { fg = c.indent_1 },
    IndentBlanklineIndent2 = { fg = c.indent_2 },
    IndentBlanklineIndent3 = { fg = c.indent_3 },
    IndentBlanklineIndent4 = { fg = c.indent_4 },
    IndentBlanklineIndent5 = { fg = c.indent_5 },
    IndentBlanklineIndent6 = { fg = c.indent_6 },
    IndentBlanklineIndent7 = { fg = c.indent_7 },

    -----------------------------------------------------------------------
    -- lsp_signature
    -----------------------------------------------------------------------
    LspSignatureActiveParameter = { fg = c.function_hl, bold = true },

    -----------------------------------------------------------------------
    -- lspconfig
    -----------------------------------------------------------------------
    LspInfoTitle = { fg = c.type, bold = true },

    -----------------------------------------------------------------------
    -- gitsigns
    -----------------------------------------------------------------------
    GitSignsAdd = { fg = c.diff_add },
    GitSignsAddNr = { fg = c.diff_add },
    GitSignsAddLn = { fg = c.diff_add },
    GitSignsChange = { fg = c.diff_change },
    GitSignsChangeNr = { fg = c.diff_change },
    GitSignsChangeLn = { fg = c.diff_change },
    GitSignsDelete = { fg = c.diff_delete },
    GitSignsDeleteNr = { fg = c.diff_delete },
    GitSignsDeleteLn = { fg = c.diff_delete },
    GitSignsUntracked = { fg = c.diff_untracked },
    GitSignsUntrackedNr = { fg = c.diff_untracked },
    GitSignsUntrackedLn = { fg = c.diff_untracked },

    -----------------------------------------------------------------------
    -- symbols-outline
    -----------------------------------------------------------------------
    SymbolsOutlineConnector = { fg = c.fg_dim },

    -----------------------------------------------------------------------
    -- null-ls
    -----------------------------------------------------------------------
    NullLsInfoBorder = { fg = c.float_border },

    -----------------------------------------------------------------------
    -- navic
    -----------------------------------------------------------------------
    NavicText = { fg = c.navic_fg, bg = c.statusline_bg_tab },
    NavicSeparator = { fg = c.navic_fg, bg = c.statusline_bg_tab },
    NavicIconsBoolean = { fg = c.number, bg = c.statusline_bg_tab },
    NavicIconsConstant = { fg = c.constant, bg = c.statusline_bg_tab },
    NavicIconsFunction = { fg = c.function_hl, bg = c.statusline_bg_tab },
    NavicIconsNumber = { fg = c.number, bg = c.statusline_bg_tab },
    NavicIconsFile = { fg = c.file, bg = c.statusline_bg_tab },
    NavicIconsModule = { fg = c.navic_fg, bg = c.statusline_bg_tab },
    NavicIconsNamespace = { fg = c.navic_fg, bg = c.statusline_bg_tab },
    NavicIconsPackage = { fg = c.navic_fg, bg = c.statusline_bg_tab },
    NavicIconsClass = { fg = c.type, bg = c.statusline_bg_tab },
    NavicIconsMethod = { fg = c.none, bg = c.statusline_bg_tab },
    NavicIconsProperty = { fg = c.none, bg = c.statusline_bg_tab },
    NavicIconsField = { fg = c.field, bg = c.statusline_bg_tab },
    NavicIconsConstructor = { fg = c.navic_fg, bg = c.statusline_bg_tab },
    NavicIconsEnum = { fg = c.type, bg = c.statusline_bg_tab },
    NavicIconsInterface = { fg = c.type, bg = c.statusline_bg_tab },
    NavicIconsVariable = { fg = c.variable, bg = c.statusline_bg_tab },
    NavicIconsString = { fg = c.string, bg = c.statusline_bg_tab },
    NavicIconsArray = { fg = c.variable, bg = c.statusline_bg_tab },
    NavicIconsObject = { fg = c.type, bg = c.statusline_bg_tab },
    NavicIconsKey = { fg = c.keyword, bg = c.statusline_bg_tab },
    NavicIconsNull = { fg = c.type, bg = c.statusline_bg_tab },
    NavicIconsEnumMember = { fg = c.constant, bg = c.statusline_bg_tab },
    NavicIconsStruct = { fg = c.type, bg = c.statusline_bg_tab },
    NavicIconsEvent = { fg = c.type, bg = c.statusline_bg_tab },
    NavicIconsOperator = { fg = c.none, bg = c.statusline_bg_tab },
    NavicIconsTypeParameter = { fg = c.none, bg = c.statusline_bg_tab },

    -----------------------------------------------------------------------
    -- cmp
    -----------------------------------------------------------------------
    CmpItemAbbrMatch = { fg = c.type, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.number, bold = true },
    CmpItemKind = { fg = c.fg_dark, bg = c.fg },
    CmpItemKindClass = { fg = c.fg_dark, bg = c.type },
    CmpItemKindColor = { fg = c.fg_dark, bg = c.info },
    CmpItemKindConstant = { fg = c.fg_dark, bg = c.keyword },
    CmpItemKindConstructor = { fg = c.fg_dark, bg = c.type },
    CmpItemKindEnum = { fg = c.fg_dark, bg = c.type },
    CmpItemKindEnumMember = { fg = c.fg_dark, bg = c.type },
    CmpItemKindEvent = { fg = c.fg_dark, bg = c.type },
    CmpItemKindField = { fg = c.fg_dark, bg = c.field },
    CmpItemKindFile = { fg = c.fg_dark, bg = c.file },
    CmpItemKindFolder = { fg = c.fg_dark, bg = c.file },
    CmpItemKindFunction = { fg = c.fg_dark, bg = c.function_hl },
    CmpItemKindInterface = { fg = c.fg_dark, bg = c.type },
    CmpItemKindKeyword = { fg = c.fg_dark, bg = c.keyword },
    CmpItemKindMethod = { fg = c.fg_dark, bg = c.function_hl },
    CmpItemKindModule = { fg = c.fg_dark, bg = c.type },
    CmpItemKindOperator = { fg = c.fg_dark, bg = c.operator },
    CmpItemKindProperty = { fg = c.fg_dark, bg = c.property },
    CmpItemKindReference = { fg = c.fg_dark, bg = c.operator },
    CmpItemKindSnippet = { fg = c.fg_dark, bg = c.string },
    CmpItemKindStruct = { fg = c.fg_dark, bg = c.type },
    CmpItemKindTabNine = { fg = c.fg_dark, bg = c.variable },
    CmpItemKindText = { fg = c.fg_dark, bg = c.comment },
    CmpItemKindTypeParameter = { fg = c.fg_dark, bg = c.type },
    CmpItemKindUnit = { fg = c.fg_dark, bg = c.operator },
    CmpItemKindValue = { fg = c.fg_dark, bg = c.number },
    CmpItemKindVariable = { fg = c.fg_dark, bg = c.variable },
    CmpItemMenu = { fg = c.comment, italic = true },

    -----------------------------------------------------------------------
    -- nvim-dap
    -----------------------------------------------------------------------
    DapBreakpoint = { fg = c.tag },
    DapLogPoint = { fg = c.info },
    DapStopped = { fg = c.hint },

    -----------------------------------------------------------------------
    -- Lspsaga
    -----------------------------------------------------------------------
    -- code action
    LspSagaCodeActionTitle = { fg = "#DA8548", bold = true },
    LspSagaCodeActionBorder = { fg = c.float_border },

    -- finder
    LspSagaLspFinderBorder = { fg = c.float_border },
    LspSagaAutoPreview = { fg = c.float_border },
    LspSagaFinderSelection = { fg = "#89d957", bold = true },
    TargetFileName = { fg = "#d1d4cf" },
    FinderParam = { fg = "#CBA6F7", bg = "#392a52", bold = true },
    FinderVirtText = { fg = "#c95942" },
    DefinitionsIcon = { fg = "#e3e346" },
    Definitions = { fg = "#CBA6F7", bold = true },
    DefinitionCount = { link = "Title" },
    ReferencesIcon = { fg = "#e3e346" },
    References = { fg = "#CBA6F7", bold = true },
    ReferencesCount = { link = "Title" },
    ImplementsIcon = { fg = "#e3e346" },
    Implements = { fg = "#CBA6F7", bold = true },
    ImplementsCount = { link = "Title" },

    -- finder spinner
    FinderSpinnerBorder = { fg = c.float_border },
    FinderSpinnerTitle = { fg = "#b33076", bold = true },
    FinderSpinner = { fg = "#b33076", bold = true },
    FinderPreviewSearch = { link = "Search" },

    -- definition
    DefinitionBorder = { fg = "#b3deef" },
    DefinitionArrow = { fg = "#ad475f" },
    DefinitionSearch = { link = "Search" },
    DefinitionFile = { bg = "#151838" },

    -- hover
    LspSagaHoverBorder = { fg = c.float_border },
    LspSagaHoverTrunCateLine = { link = "LspSagaHoverBorder" },

    -- rename
    LspSagaRenameBorder = { fg = c.float_border },
    LspSagaRenameMatch = { link = "Search" },

    -- diagnostic
    LspSagaDiagnosticSource = { link = "Comment" },
    LspSagaDiagnosticError = { link = "DiagnosticError" },
    LspSagaDiagnosticWarn = { link = "DiagnosticWarn" },
    LspSagaDiagnosticInfo = { link = "DiagnosticInfo" },
    LspSagaDiagnosticHint = { link = "DiagnosticHint" },
    LspSagaErrorTrunCateLine = { link = "DiagnosticError" },
    LspSagaWarnTrunCateLine = { link = "DiagnosticWarn" },
    LspSagaInfoTrunCateLine = { link = "DiagnosticInfo" },
    LspSagaHintTrunCateLine = { link = "DiagnosticHint" },
    LspSagaDiagnosticBorder = { fg = c.float_border },
    LspSagaDiagnosticHeader = { fg = "#afd700" },
    DiagnosticQuickFix = { fg = "#4dd158", bold = true },
    DiagnosticMap = { fg = "#cf80ce" },
    DiagnosticLineCol = { fg = "#73797e" },
    LspSagaDiagnosticTruncateLine = { link = "LspSagaDiagnosticBorder" },
    ColInLineDiagnostic = { link = "Comment" },

    -- signature help
    LspSagaSignatureHelpBorder = { fg = "#98be65" },
    LspSagaShTrunCateLine = { link = "LspSagaSignatureHelpBorder" },

    -- lightbulb
    LspSagaLightBulb = { link = "DiagnosticSignHint" },

    -- shadow
    SagaShadow = { fg = "black" },

    -- float
    LspSagaBorderTitle = { link = "String" },

    -- outline
    LSOutlinePreviewBorder = { fg = "#52ad70" },
    OutlineIndentEvn = { fg = "#c955ae" },
    OutlineIndentOdd = { fg = "#b8733e" },
    OutlineFoldPrefix = { fg = "#bf4537" },
    OutlineDetail = { fg = "#73797e" },

    -- all float windows of lspsaga
    LspFloatWinNormal = { link = "Normal" },

    -----------------------------------------------------------------------
    -- Vimwiki
    -----------------------------------------------------------------------
    -- Headers
    VimwikiHeaderChar = { fg = c.tag },
    VimwikiHeader1 = { fg = c.tag },
    VimwikiHeader2 = { fg = c.tag },
    VimwikiHeader3 = { fg = c.tag },
    VimwikiHeader4 = { fg = c.tag },
    VimwikiHeader5 = { fg = c.tag },
    VimwikiHeader6 = { fg = c.tag },

    -- Links
    VimwikiLink = { fg = c.link },

    -- Bold
    VimwikiBold = { fg = c.bold, bold = true },

    -- Italic
    VimwikiItalic = { fg = c.italic, italic = true },

    -----------------------------------------------------------------------
    -- rainbow-delimiters
    -----------------------------------------------------------------------
    RainbowDelimiter1 = { fg = c.indent_1 },
    RainbowDelimiter2 = { fg = c.indent_2 },
    RainbowDelimiter3 = { fg = c.indent_3 },
    RainbowDelimiter4 = { fg = c.indent_4 },
    RainbowDelimiter5 = { fg = c.indent_5 },
    RainbowDelimiter6 = { fg = c.indent_6 },
    RainbowDelimiter7 = { fg = c.indent_7 },

    -----------------------------------------------------------------------
    -- zen-mode
    -----------------------------------------------------------------------
    ZenBg = { bg = config.transparent_background and c.none or c.bg },
  }
end
