local c = require("colorschemes.davedark.palette").c

return {
  ---------------------------------------------------------
  -- Treesitter
  ---------------------------------------------------------
  TSBoolean = { fg = c.none },
  TSComment = { fg = c.none },
  TSConditional = { fg = c.none },
  TSConstant = { fg = c.red },
  TSConstBuiltin = { fg = c.none },
  TSConstructor = { fg = c.none },
  TSError = { fg = c.fg, bg = c.bg }, -- should this be something a bit more obvious?
  TSField = { fg = c.none },
  TSFloat = { fg = c.none },
  TSFuncBuiltin = { fg = c.cyan },
  TSFunction = { fg = c.blue }, -- any reason not to use this?
  TSInclude = { fg = c.none },
  TSKeyword = { fg = c.none, bg = c.none },
  TSKeywordFunction = { fg = c.none },
  TSKeywordOperator = { fg = c.none },
  TSKeywordReturn = { fg = c.none },
  TSLiteral = { fg = c.none },
  TSMethod = { fg = c.none },
  TSNone = { fg = c.fg },
  TSNumber = { fg = c.orange },
  TSOperator = { fg = c.none },
  TSParameter = { fg = c.none },
  TSProperty = { fg = c.none },
  TSPunctBracket = { fg = c.none },
  TSPunctDelimiter = { fg = c.fg },
  TSString = { fg = c.none },
  TSTag = { fg = c.none }, -- remove style?
  TSTagAttribute = { fg = c.orange }, -- remove style?
  TSTagDelimiter = { fg = c.fg },
  TSText = { fg = c.none },
  TSTextReference = { fg = c.none }, -- messes with markdown []'s
  -- TSTitle = { fg = c.fg },
  TSTypeBuiltin = { fg = c.none },
  TSType = { fg = c.none },
  TSURI = { fg = c.green, underline = true },
  TSVariable = { fg = c.none },
  -- TSWarning = { fg = c.test_fg, bg = c.test_bg },

  ---------------------------------------------------------
  -- Treesitter (unprocessed)
  ---------------------------------------------------------
  TSAnnotation = { fg = c.test_pink },
  TSAttribute = { fg = c.test_pink },
  TSException = { fg = c.test_pink },
  TSLabel = { fg = c.red },
  TSNamespace = { fg = c.test_pink },
  TSRepeat = { fg = c.none },
  TSCharacter = { fg = c.test_pink },
  TSConstMacro = { fg = c.test_pink },
  TSFuncMacro = { fg = c.test_pink },
  TSParameterReference = { fg = c.test_pink },
  TSVariableBuiltin = { fg = c.none },
  TSSymbol = { fg = c.test_pink },
  TSPunctSpecial = { fg = c.none },
  TSStringRegex = { fg = c.test_pink },
  TSStringEscape = { fg = c.test_pink },
  TSEmphasis = { italic = true },
  TSUnderline = { underline = true },
  TSNote = { fg = c.test_pink, bold = true },
  TSDanger = { fg = c.test_pink, bold = true },
  TSMath = { fg = c.test_pink },
  TSStructure = { fg = c.test_pink },
  TSStrong = { fg = c.none }, -- remove style?
  TSQueryLinterError = { fg = c.test_pink },
  TSEnvironment = { fg = c.test_pink },
  TSEnvironmentName = { fg = c.test_pink },
}
