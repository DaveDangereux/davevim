local c = require("colorschemes.davedark.palette")
-- local config = require("colorschemes.davedark.config")

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
  TSTag = { fg = c.none, style = "NONE" },
  TSTagAttribute = { fg = c.orange, style = "NONE" },
  TSTagDelimiter = { fg = c.fg },
  TSText = { fg = c.none },
  TSTextReference = { fg = c.none }, -- messes with markdown []'s
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
  TSRepeat = { fg = c.none },
  TSCharacter = { fg = c.test_fg },
  TSConstMacro = { fg = c.test_fg },
  TSFuncMacro = { fg = c.test_fg },
  TSParameterReference = { fg = c.test_fg },
  TSVariableBuiltin = { fg = c.none },
  TSSymbol = { fg = c.test_fg },
  TSPunctSpecial = { fg = c.none },
  TSStringRegex = { fg = c.test_fg },
  TSStringEscape = { fg = c.test_fg },
  TSEmphasis = { style = "italic" },
  TSUnderline = { style = "underline" },
  TSNote = { fg = c.test_fg, style = "bold" },
  TSDanger = { fg = c.test_fg, style = "bold" },
  TSMath = { fg = c.test_fg },
  TSStructure = { fg = c.test_fg },
  TSStrong = { fg = c.none, style = "none" },
  TSQueryLinterError = { fg = c.test_fg },
  TSEnvironment = { fg = c.test_fg },
  TSEnvironmentName = { fg = c.test_fg },
}
