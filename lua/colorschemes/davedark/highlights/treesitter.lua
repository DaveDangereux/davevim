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
    ["@constant.builtin"] = { fg = c.test_fg },
    ["@constant.macro"] = { link = "Define" },
    ["@constructor"] = { link = "Special" },
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
    ["@method"] = { fg = c.none },
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
    ["@string.escape"] = { fg = c.test_fg },
    ["@string.special"] = { fg = c.test_fg },
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

    -----------------------------------------------------------------------------
    -- File-specific disables
    -----------------------------------------------------------------------------
    -- html
    ["@constant.html"] = {},
    ["@tag.delimiter.html"] = { fg = c.fg },

    -- css
    ["@string.css"] = {},
    ["@property.css"] = {},
    ["@type.css"] = {},

    -- javascript
    -- ["@constructor.javascript"] = {},
    ["@variable.javascript"] = {},

    -- typescript
    ["@type.typescript"] = {},
    ["@variable.typescript"] = { fg = c.constant },

    -- tsx
    ["@constructor.tsx"] = {},
    ["@include.tsx"] = {},
    ["@property.tsx"] = {},
    ["@variable.tsx"] = {},
    ["@tag.tsx"] = {},
    ["@type.tsx"] = {},
    ["@tag.attribute.tsx"] = {},

    -- python
    ["@variable.python"] = {},

    -- lua
    -- ["@field.lua"] = {},
  }
end
