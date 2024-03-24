return function(theme_variant)
  local c = require("colorschemes.davedark.themes.default")

  if theme_variant then
    c = require("colorschemes.davedark.themes." .. theme_variant)
  end

  return {
    ---------------------------------------------------------
    -- Treesitter
    ---------------------------------------------------------
    ["@boolean"] = { link = "Boolean" },
    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },
    ["@comment"] = { link = "Comment" },
    ["@conditional"] = { link = "Conditional" },
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { fg = c.constant },
    ["@constant.macro"] = { link = "Define" },
    ["@constructor"] = {},
    ["@debug"] = { link = "Debug" },
    ["@define"] = { link = "Define" },
    ["@exception"] = { link = "Exception" },
    ["@field"] = { fg = c.field },
    ["@float"] = { link = "Float" },
    ["@function"] = { fg = c.function_hl },
    ["@function.builtin"] = { fg = c.function_builtin },
    ["@function.macro"] = { link = "Macro" },
    ["@include"] = { link = "Include" },
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.return"] = { link = "Include" },
    ["@label"] = { link = "Label" },
    ["@macro"] = { link = "Macro" },
    ["@namespace"] = { link = "Identifier" },
    ["@method"] = { fg = c.function_hl },
    ["@number"] = { link = "Number" },
    ["@operator"] = { link = "Operator" },
    ["@parameter"] = { link = "Identifier" },
    ["@preproc"] = { link = "PreProc" },
    ["@property"] = { link = "Identifier" },
    ["@punctuation"] = { link = "Delimiter" },
    ["@punctuation.bracket"] = { link = "Delimeter" },
    ["@repeat"] = { link = "Keyword" },
    ["@storageclass"] = { link = "StorageClass" },
    ["@string"] = { link = "String" },
    ["@string.escape"] = { fg = c.operator },
    -- ["@string.special"] = { fg = c.test_fg },
    ["@structure"] = { link = "Structure" },
    ["@tag"] = { link = "Tag" },
    ["@tag.attribute"] = { link = "Number" },
    ["@tag.delimiter"] = { link = "Delimiter" },
    ["@text.literal"] = { link = "Comment" },
    ["@text.reference"] = { link = "Identifier" },
    ["@text.title"] = { link = "Title" },
    ["@text.todo"] = { link = "Todo" },
    ["@text.underline"] = { link = "Underlined" },
    ["@text.uri"] = { fg = c.string, underline = true },
    ["@type"] = { link = "Type" },
    ["@type.definition"] = { link = "TypeDef" },
    ["@variable"] = { fg = c.variable },

    -----------------------------------------------------------------------------
    -- File-specific mods
    -----------------------------------------------------------------------------

    -- c++
    ["@exception.cpp"] = { fg = c.keyword },
    ["@operator.cpp"] = { fg = c.keyword },
    ["@type.cpp"] = { fg = c.type },
    ["@type.builtin.cpp"] = { fg = c.keyword },
    ["@type.qualifier.cpp"] = { fg = c.keyword },
    ["@conditional.cpp"] = { fg = c.keyword },
    ["@storageclass.cpp"] = { fg = c.keyword },
    ["@module.cpp"] = { fg = c.fg },
    ["@function.builtin.cpp"] = { fg = c.keyword },

    -- c
    ["@operator.c"] = { fg = c.keyword },
    ["@type.c"] = { fg = c.type },
    ["@type.builtin.c"] = { fg = c.keyword },
    ["@type.qualifier.c"] = { fg = c.keyword },
    ["@variable.parameter.c"] = { fg = c.fg },

    -- html
    ["@constant.html"] = {},
    ["@tag.delimiter.html"] = { fg = c.fg },

    -- css
    ["@string.css"] = {},
    ["@property.css"] = {},
    ["@type.css"] = {},

    -- tsx
    -- ["@constructor.tsx"] = {},
    -- ["@include.tsx"] = {},
    -- ["@property.tsx"] = {},
    ["@tag.tsx"] = {},
    -- ["@type.tsx"] = {},
    -- ["@tag.attribute.tsx"] = {},

    -- lua
    -- ["@field.lua"] = {},

    -- markdown
    ["@markup.heading.1.markdown"] = { fg = c.variable },
    ["@markup.heading.2.markdown"] = { fg = c.variable },
    ["@markup.heading.3.markdown"] = { fg = c.variable },
    ["@markup.heading.4.markdown"] = { fg = c.variable },
    ["@markup.heading.5.markdown"] = { fg = c.variable },
    ["@markup.heading.6.markdown"] = { fg = c.variable },

    -- prisma
    ["@function.prisma"] = {},
    ["@property.prisma"] = {},
  }
end
