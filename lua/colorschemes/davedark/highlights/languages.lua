local c = require("colorschemes.davedark.palette")
local config = require("colorschemes.davedark.config")

return {
  ---------------------------------------------------------
  -- html
  ---------------------------------------------------------

  htmlArg = { fg = c.orange },
  htmlBold = { fg = c.fg, style = "NONE" },
  htmlComment = { fg = c.light_blue_grey, style = "italic" },
  htmlLink = { fg = c.fg, style = "NONE" },
  htmlSpecialTagName = { fg = c.red },
  htmlString = { fg = c.green },
  htmlTag = { fg = c.none },
  htmlTagN = { fg = c.fg },
  htmlTagName = { fg = c.red },
  htmlTitle = { style = "NONE" },
  htmlTSTag = { fg = c.red },
  htmlTSTagDelimiter = { fg = c.fg },

  ---------------------------------------------------------
  -- css
  ---------------------------------------------------------
  cssClassName = { fg = c.orange },
  cssCommonAttr = { fg = c.fg },
  cssFlexibleBoxAttr = { fg = c.fg },
  cssFontAttr = { fg = c.fg },
  cssObjectAttr = { fg = c.fg },
  cssPositioningAttr = { fg = c.fg },
  cssStringQ = { fg = c.green },
  cssTagName = { fg = c.red },
  cssUnitDecorators = { fg = c.purple },
  cssValueLength = { fg = c.orange },
  cssValueNumber = { fg = c.orange },

  ---------------------------------------------------------
  -- sass / scss
  ---------------------------------------------------------
  sassClass = { fg = c.orange },
  sassVariable = { fg = c.red },
  scssImport = { fg = c.purple },

  ---------------------------------------------------------
  -- JavaScript
  ---------------------------------------------------------
  javascript = { fg = c.red },
  javascriptReserved = { fg = c.purple },
  javascriptTSConstructor = { fg = c.none },
  javascriptTSKeywordReturn = { fg = c.purple },
  javascriptTSMethod = { fg = c.blue },
  javascriptTSProperty = { fg = c.none },
  -- javascriptTSVariable = { fg = c.orange },
  javascriptTSVariableBuiltin = { fg = c.red },
  jsArrowFunction = { fg = c.purple }, -- turns the parentheses purple as well as the arrow
  jsAsyncKeyword = { fg = c.purple },
  jsConditional = { fg = c.purple },
  jsExport = { fg = c.purple },
  jsExportDefault = { fg = c.red },
  jsForAwait = { fg = c.purple },
  jsFrom = { fg = c.purple },
  jsFuncBlock = { fg = c.none },
  jsFuncCall = { fg = c.blue },
  jsFunction = { fg = c.purple },
  jsFunctionKey = { fg = c.blue },
  jsGlobalObjects = { fg = c.red },
  jsImport = { fg = c.purple },
  jsModuleKeyword = { fg = c.red },
  jsObject = { fg = c.red },
  jsObjectFuncName = { fg = c.blue },
  jsObjectProp = { fg = c.orange },
  jsObjectValue = { fg = c.fg },
  jsOperator = { fg = c.cyan },
  jsReturn = { fg = c.purple },
  jsString = { fg = c.green },
  jsStorageClass = { fg = c.purple },
  jsThis = { fg = c.red },
  jsVariableDef = { fg = c.orange }, -- can't differentiate constants and variables

  ---------------------------------------------------------
  -- TypeScript
  ---------------------------------------------------------
  typescriptAliasDeclaration = { fg = c.yellow },
  typescriptArrowFunc = { fg = c.purple },
  typescriptArrowFuncDef = { fg = c.fg },
  typescriptBinaryOp = { fg = c.cyan },
  -- typescriptBlock = { fg = c.none },
  typescriptCall = { fg = c.fg },
  typescriptCastKeyword = { fg = c.fg },
  typescriptConditional = { fg = c.purple },
  typescriptDefault = { fg = c.red },
  typescriptDestructureVariable = { fg = c.orange },
  typescriptExport = { fg = c.purple },
  typescriptIdentifierName = { fg = c.red },
  typescriptImport = { fg = c.purple },
  typescriptInterfaceKeyword = { fg = c.purple },
  typescriptInterfaceName = { fg = c.yellow },
  typescriptMemberOptionality = { fg = c.cyan },
  typescriptObjectType = { fg = c.blue },
  typescriptPredefinedType = { fg = c.cyan },
  typescriptRepeat = { fg = c.purple },
  typescriptStatementKeyword = { fg = c.purple },
  typescriptString = { fg = c.green},
  typescriptTernaryOperator = { fg = c.fg },
  typescriptTypeReference = { fg = c.yellow },
  typescriptVariable = { fg = c.purple },
  typescriptVariableDeclaration = { fg = c.orange },

  typescriptTSBoolean = { fg = c.orange },
  typescriptTSFunction = { fg = c.blue },
  typescriptTSMethod = { fg = c.blue },
  typescriptTSVariable = { fg = c.none },
  typescriptTSVariableBuiltin = { fg = c.red },
  -- tsTSInclude = { fg = c.purple },

  ---------------------------------------------------------
  -- tsx
  ---------------------------------------------------------

  tsxTag = { fg = c.yellow },
  tsxTagName = { fg = c.yellow },
  -- tsxTSConstructor = { fg = c.red },
  tsxTSTag = { fg = c.yellow },
  tsxTSKeyword = { fg = c.purple },
  tsxTSParameter = { fg = c.none },
  tsxTSProperty = { fg = c.fg },
  tsxTSTypeBuiltin = { fg = c.none },
  tsxTSVariable = { fg = c.none },
  tsxTSFunction = { fg = c.blue },

  ---------------------------------------------------------
  -- python
  ---------------------------------------------------------
  pythonConditional = { fg = c.purple },
  pythonException = { fg = c.purple },
  pythonExceptions = { fg = c.cyan },
  pythonInclude = { fg = c.purple },
  pythonString = { fg = c.green },
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
  luaString = { fg = c.green },
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

  markdownTSTitle = { fg = c.red },
  markdownTSPunctSpecial = { fg = c.red },
  markdownTSTextReference = { fg = c.fg },

  ---------------------------------------------------------
  -- Vue.js
  ---------------------------------------------------------
  -- vueTSTag = { fg = c.yellow },
}
