return function(theme_variant)
    local c = require("colorschemes.davedark.themes.default")

    if theme_variant then
        c = require("colorschemes.davedark.themes." .. theme_variant)
    end

    return {
        ---------------------------------------------------------
        -- html
        ---------------------------------------------------------
        htmlArg = { fg = c.attribute },
        htmlBold = { fg = c.fg },
        htmlComment = { link = "Comment" },
        htmlLink = { fg = c.fg },
        htmlSpecialTagName = { fg = c.tag },
        htmlString = { link = "String" },
        htmlTag = { fg = c.fg },
        htmlTagN = { fg = c.fg },
        htmlTagName = { fg = c.tag },
        htmlTitle = { link = "Title" },

        ---------------------------------------------------------
        -- css
        ---------------------------------------------------------
        cssAtRule = { link = "Include" },
        -- cssAttr = { link = "" },

        cssClassName = { fg = c.attribute },
        cssCommonAttr = { fg = c.fg },
        cssCustomProp = { fg = c.tag },
        cssDefinition = { fg = c.fg },
        cssFlexibleBoxAttr = { fg = c.fg },
        cssFontAttr = { fg = c.attribute },
        cssFunctionName = { link = "Function" },
        cssNoise = { fg = c.fg },
        cssObjectAttr = { fg = c.fg },
        cssPageProp = { fg = c.tag },
        cssPositioningAttr = { fg = c.fg },
        cssPseudoClassId = { fg = c.number },
        cssStringQ = { link = "String" },
        cssTagName = { fg = c.tag },
        cssUIProp = { fg = c.none },
        cssUnitDecorators = { link = "Number" },
        cssValueAngle = { link = "Number" },
        cssValueLength = { link = "Number" },
        cssValueNumber = { link = "Number" },
        cssValueTime = { link = "Number" },

        ---------------------------------------------------------
        -- sass / scss
        ---------------------------------------------------------
        sassClass = { fg = c.attribute },
        sassVariable = { fg = c.variable },
        scssImport = { link = "Include" },

        ---------------------------------------------------------
        -- less
        ---------------------------------------------------------
        lessAmpersand = { fg = c.attribute },
        lessClass = { fg = c.attribute },
        lessCssAttribute = { fg = c.variable },
        lessFunction = { fg = c.function_hl },
        lessInclude = { link = "Include" },
        lessVariable = { fg = c.variable },

        ---------------------------------------------------------
        -- JavaScript
        ---------------------------------------------------------
        javascript = { fg = c.variable },
        javascriptReserved = { fg = c.keyword },
        jsArrowFunction = { fg = c.keyword }, -- turns the parentheses purple as well as the arrow
        jsAsyncKeyword = { fg = c.keyword },
        jsCatch = { fg = c.keyword },
        jsClassDefinition = { fg = c.type },
        jsClassKeyword = { fg = c.keyword },
        jsConditional = { fg = c.keyword },
        jsExport = { link = "Include" },
        jsExportDefault = { fg = c.variable },
        jsForAwait = { fg = c.keyword },
        jsFrom = { fg = c.keyword },
        jsFuncBlock = { fg = c.none },
        jsFuncCall = { fg = c.function_hl },
        jsFunction = { fg = c.function_hl },
        jsFunctionKey = { fg = c.keyword },
        jsGlobalObjects = { fg = c.variable },
        jsImport = { link = "Include" },
        jsModuleKeyword = { fg = c.variable },
        jsNumber = { link = "Number" },
        jsObject = { fg = c.variable },
        jsObjectFuncName = { fg = c.function_hl },
        jsObjectProp = { fg = c.attribute },
        jsObjectValue = { fg = c.fg },
        jsOperator = { fg = c.operator },
        jsReturn = { fg = c.keyword },
        jsString = { fg = c.string },
        jsStorageClass = { fg = c.keyword },
        jsThis = { fg = c.variable },
        jsTry = { fg = c.keyword },
        jsVariableDef = { fg = c.constant }, -- can't differentiate constants and variables

        ---------------------------------------------------------
        -- TypeScript
        ---------------------------------------------------------
        -- ["@type.typescript"] = {},
        -- ["@lsp.typemod.property.declaration.typescript"] = { fg = c.fg },
        -- ["@lsp.typemod.parameter.declaration.typescript"] = { fg = c.fg },
        ["@lsp.mod.readonly.typescript"] = { fg = c.constant },
        ["@keyword.tsx"] = {},
        typescriptAliasDeclaration = { fg = c.type },
        typescriptAliasKeyword = { fg = c.keyword },
        typescriptAmbientDeclaration = { fg = c.keyword },
        typescriptArrayMethod = { link = "Function" },
        typescriptArrowFunc = { fg = c.keyword },
        typescriptArrowFuncArg = { fg = c.fg },
        typescriptArrowFuncDef = { fg = c.fg },
        typescriptBinaryOp = { fg = c.operator },
        -- typescriptBlock = { fg = c.none },
        typescriptCall = { fg = c.fg },
        typescriptCastKeyword = { fg = c.fg },
        typescriptConditional = { fg = c.keyword },
        typescriptConditionalParen = {},
        typescriptDefault = { fg = c.variable },
        typescriptDefaultImportName = { fg = c.variable },
        typescriptDestructureVariable = { fg = c.constant },
        typescriptExport = { link = "Include" },
        typescriptFuncCallArg = {},
        typescriptFuncKeyword = { fg = c.keyword },
        typescriptIdentifierName = { fg = c.variable },
        typescriptImport = { fg = c.keyword },
        typescriptImportType = { fg = c.keyword },
        typescriptInterfaceHeritage = { fg = c.string },
        typescriptInterfaceKeyword = { fg = c.keyword },
        typescriptInterfaceName = { fg = c.type },
        typescriptKeywordOp = { fg = c.keyword },
        typescriptMember = { fg = c.fg },
        typescriptMemberOptionality = { fg = c.operator },
        typescriptModule = { fg = c.keyword },
        typescriptNodeGlobal = { fg = c.variable },
        typescriptObjectType = { fg = c.type },
        typescriptObjectLiteral = {},
        typescriptOperator = { fg = c.keyword },
        typescriptPredefinedType = { fg = c.type_builtin },
        -- typescriptProp = { fg = c.test_fg },
        typescriptRepeat = { fg = c.keyword },
        typescriptStatementKeyword = { fg = c.keyword },
        typescriptString = { fg = c.string },
        typescriptTernaryOperator = { fg = c.fg },
        typescriptTypeAnnotation = { fg = c.type_builtin },
        typescriptTypeBlock = {},
        ["@type.tsx"] = { fg = c.type },
        -- typescriptTypeBlock = { fg = c.variable },
        typescriptTypeReference = { fg = c.type },
        typescriptVariable = { fg = c.keyword },
        typescriptVariableDeclaration = { fg = c.constant },

        -- NOTE: Neither the builtin syntax nor treesitter can differentiate between
        -- a TypeScript variable and a constant, so since we use constants more we're
        -- making them both that colour

        ---------------------------------------------------------
        -- jsx
        ---------------------------------------------------------
        jsxAttrib = { fg = c.attribute },
        jsxComponentName = { fg = c.type },
        jsxExpressionBlock = { fg = c.fg },
        jsxString = { link = "String" },
        jsxTag = { fg = c.type },
        jsxTagName = { fg = c.tag },

        ---------------------------------------------------------
        -- tsx
        ---------------------------------------------------------
        tsxTag = { fg = c.type },
        tsxTagName = { fg = c.type },

        ---------------------------------------------------------
        -- python
        ---------------------------------------------------------
        pythonBuiltinFunction = { fg = c.type_builtin },
        pythonClass = { fg = c.type },
        pythonClassVar = { fg = c.variable },
        pythonConditional = { fg = c.keyword },
        pythonException = { fg = c.keyword },
        pythonExClass = { fg = c.type, bold = true },
        pythonFloat = { fg = c.number },
        pythonInclude = { fg = c.keyword },
        pythonString = { link = "String" },
        pythonBuiltinType = { fg = c.type_builtin },

        ---------------------------------------------------------
        -- Django
        ---------------------------------------------------------
        djangoStatement = { fg = c.keyword },
        djangoTagBlock = { fg = c.type },
        djangoVarBlock = { fg = c.string },

        ---------------------------------------------------------
        -- php
        ---------------------------------------------------------
        phpClass = { fg = c.type },
        phpClassExtends = { fg = c.string },
        phpDefine = { fg = c.type_builtin },
        phpIdentifier = { fg = c.variable },
        phpInclude = { fg = c.keyword },
        phpRegion = { fg = c.fg },
        phpStorageClass = { fg = c.keyword },
        phpStringDouble = { link = "String" },
        phpStructure = { fg = c.keyword },
        -- phpUseAlias = { fg = c.fg },
        phpUseClass = { fg = c.type },
        phpKeyword = { fg = c.keyword },
        phpVarSelector = { fg = c.variable },

        ---------------------------------------------------------
        -- lua
        ---------------------------------------------------------
        luaCond = { fg = c.keyword },
        luaElse = { fg = c.keyword },
        luaErrHand = { fg = c.exception },
        luaFuncCall = { fg = c.function_hl },
        luaFuncKeyword = { fg = c.keyword },
        luaFuncName = { fg = c.function_hl },
        luaLocal = { fg = c.keyword },
        luaNumber = { fg = c.number },
        luaRepeat = { fg = c.keyword },
        luaSpecialValue = { fg = c.type_builtin },
        luaStatement = { fg = c.keyword },
        luaString = { link = "String" },
        luaTable = { fg = c.field },

        ---------------------------------------------------------
        -- markdown
        ---------------------------------------------------------
        mkdCode = { fg = c.string },
        mkdHeading = { fg = c.tag },
        mkdLineBreak = { link = "Normal" },

        ---------------------------------------------------------
        -- Prisma (via prisma/vim-prisma)
        ---------------------------------------------------------
        -- prismaList
        prismaType = { fg = c.operator },
        -- prismaField
        prismaModel = { fg = c.type },
        -- prismaValue
        -- prismaParans
        -- prismaString
        -- prismaComment
        -- prismaFunction
        -- prismaOperator
        prismaDirective = { fg = c.function_hl },
        prismaFunction = { fg = c.function_hl },
        -- prismaFunctionArgs
        -- prismaPartialDirective
        -- prismaMultiFieldDirective
        -- prismaTypeAliasDeclaration

        ---------------------------------------------------------
        -- LaTeX (via VimTeX syntax highlighting)
        ---------------------------------------------------------
        texCmd = { fg = c.function_hl },
        texCmdClass = { fg = c.keyword },
        texCmdPackage = { fg = c.keyword },
        texDelim = { fg = c.fg },
        texEnvArgName = { fg = c.number },
        texNewcmdArgBody = { fg = c.fg },
        texFileArg = { fg = c.type },
        texFilesArg = { fg = c.variable },
        texFilesOpt = { fg = c.number },
        texOpt = { fg = c.number },
        texPartArgTitle = { fg = c.string },
        texTitleArg = { fg = c.tag },

        ---------------------------------------------------------
        -- cmake
        ---------------------------------------------------------
        cmakeCommand = { fg = c.function_hl },
        cmakeCommandConditional = { fg = c.keyword },
        cmakeKWtarget_sources = { fg = c.operator },
        cmakeKWtarget_link_libraries = { fg = c.operator },
        cmakeVariableValue = { fg = c.constant },
        cmakeVariable = { fg = c.constant },
    }
end
