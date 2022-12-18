local c = require("colorschemes.davedark.palette")

return {
  ---------------------------------------------------------
  -- html
  ---------------------------------------------------------
  htmlArg = { fg = c.orange },
  htmlBold = { fg = c.fg },
  htmlComment = { fg = c.light_blue_grey, italic = true },
  htmlLink = { fg = c.fg },
  htmlSpecialTagName = { fg = c.red },
  htmlString = { fg = c.green },
  htmlTag = { fg = c.none },
  htmlTagN = { fg = c.fg },
  htmlTagName = { fg = c.red },
  htmlTitle = { link = "Title" },

  ---------------------------------------------------------
  -- css
  ---------------------------------------------------------
  cssAtRule = { fg = c.purple },
  cssClassName = { fg = c.orange },
  cssCommonAttr = { fg = c.fg },
  cssFlexibleBoxAttr = { fg = c.fg },
  cssFontAttr = { fg = c.orange },
  cssFunctionName = { fg = c.blue },
  cssObjectAttr = { fg = c.fg },
  cssPageProp = { fg = c.red },
  cssPositioningAttr = { fg = c.fg },
  cssPseudoClassId = { fg = c.orange },
  cssStringQ = { fg = c.green },
  cssTagName = { fg = c.red },
  cssUIProp = { fg = c.red },
  cssUnitDecorators = { fg = c.orange },
  cssValueAngle = { fg = c.orange },
  cssValueLength = { fg = c.orange },
  cssValueNumber = { fg = c.orange },
  cssValueTime = { fg = c.orange },

  ---------------------------------------------------------
  -- sass / scss
  ---------------------------------------------------------
  sassClass = { fg = c.orange },
  sassVariable = { fg = c.red },
  scssImport = { fg = c.purple },

  ---------------------------------------------------------
  -- less
  ---------------------------------------------------------
  lessAmpersand = { fg = c.orange },
  lessClass = { fg = c.orange },
  lessCssAttribute = { fg = c.red },
  lessFunction = { fg = c.blue },
  lessInclude = { fg = c.purple },
  lessVariable = { fg = c.red },

  ---------------------------------------------------------
  -- JavaScript
  ---------------------------------------------------------
  javascript = { fg = c.red },
  javascriptReserved = { fg = c.purple },
  jsArrowFunction = { fg = c.purple }, -- turns the parentheses purple as well as the arrow
  jsAsyncKeyword = { fg = c.purple },
  jsCatch = { fg = c.purple },
  jsClassDefinition = { fg = c.yellow },
  jsClassKeyword = { fg = c.purple },
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
  jsTry = { fg = c.purple },
  jsVariableDef = { fg = c.orange }, -- can't differentiate constants and variables

  ---------------------------------------------------------
  -- TypeScript
  ---------------------------------------------------------
  typescriptAliasDeclaration = { fg = c.yellow },
  typescriptArrowFunc = { fg = c.purple },
  typescriptArrowFuncArg = { fg = c.fg },
  typescriptArrowFuncDef = { fg = c.fg },
  typescriptBinaryOp = { fg = c.cyan },
  -- typescriptBlock = { fg = c.none },
  typescriptCall = { fg = c.fg },
  typescriptCastKeyword = { fg = c.fg },
  typescriptConditional = { fg = c.purple },
  typescriptDefault = { fg = c.red },
  typescriptDestructureVariable = { fg = c.orange },
  typescriptExport = { fg = c.purple },
  typescriptFuncKeyword = { fg = c.purple },
  typescriptIdentifierName = { fg = c.red },
  typescriptImport = { fg = c.purple },
  typescriptInterfaceKeyword = { fg = c.purple },
  typescriptInterfaceName = { fg = c.yellow },
  typescriptKeywordOp = { fg = c.purple },
  typescriptMemberOptionality = { fg = c.cyan },
  typescriptObjectType = { fg = c.blue },
  typescriptPredefinedType = { fg = c.cyan },
  typescriptRepeat = { fg = c.purple },
  typescriptStatementKeyword = { fg = c.purple },
  typescriptString = { fg = c.green },
  typescriptTernaryOperator = { fg = c.fg },
  typescriptTypeReference = { fg = c.yellow },
  typescriptVariable = { fg = c.purple },
  typescriptVariableDeclaration = { fg = c.orange },

  ---------------------------------------------------------
  -- jsx
  ---------------------------------------------------------
  jsxAttrib = { fg = c.orange },
  jsxComponentName = { fg = c.yellow },
  jsxString = { fg = c.green },
  jsxTag = { fg = c.yellow },
  jsxTagName = { fg = c.red },

  ---------------------------------------------------------
  -- tsx
  ---------------------------------------------------------
  tsxTag = { fg = c.yellow },
  tsxTagName = { fg = c.yellow },

  ---------------------------------------------------------
  -- python
  ---------------------------------------------------------
  pythonClass = { fg = c.yellow },
  pythonClassVar = { fg = c.red },
  pythonConditional = { fg = c.purple },
  pythonException = { fg = c.purple },
  pythonExceptions = { fg = c.cyan },
  pythonFloat = { fg = c.orange },
  pythonInclude = { fg = c.purple },
  pythonString = { fg = c.green },

  ---------------------------------------------------------
  -- Django
  ---------------------------------------------------------
  djangoStatement = { fg = c.purple },
  djangoTagBlock = { fg = c.yellow },
  djangoVarBlock = { fg = c.green },

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

  ---------------------------------------------------------
  -- lua
  ---------------------------------------------------------
  luaCond = { fg = c.purple },
  luaElse = { fg = c.purple },
  luaErrHand = { fg = c.blue },
  luaFuncCall = { fg = c.blue },
  luaFuncKeyword = { fg = c.purple },
  luaFuncName = { fg = c.blue },
  luaLocal = { fg = c.purple },
  luaNumber = { fg = c.orange },
  luaRepeat = { fg = c.purple },
  luaSpecialValue = { fg = c.blue },
  luaStatement = { fg = c.purple },
  luaString = { fg = c.green },

  ---------------------------------------------------------
  -- markdown
  ---------------------------------------------------------
  mkdCode = { fg = c.green },
  mkdHeading = { fg = c.red },
  mkdLineBreak = { link = "Normal" },
}
