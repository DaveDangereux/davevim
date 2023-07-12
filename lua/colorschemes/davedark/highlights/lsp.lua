return function(theme_variant)
  local c = require("colorschemes.davedark.themes.default")

  if theme_variant then
    c = require("colorschemes.davedark.themes." .. theme_variant)
  end

  return {
    ["@lsp.type.class"] = {},
    ["@lsp.type.decorator"] = {},
    ["@lsp.type.enum"] = {},
    ["@lsp.type.enumMember"] = {},
    ["@lsp.type.function"] = {},
    ["@lsp.type.interface"] = {},
    ["@lsp.type.macro"] = {},
    ["@lsp.type.method"] = { fg = c.function_hl },
    ["@lsp.type.member"] = {},
    ["@lsp.type.namespace"] = {},
    ["@lsp.type.parameter"] = { fg = c.parameter },
    ["@lsp.type.property"] = { fg = c.parameter },
    ["@lsp.type.struct"] = {},
    ["@lsp.type.type"] = { fg = c.type },
    ["@lsp.type.typeParameter"] = {},
    ["@lsp.type.variable"] = { fg = c.variable },
    ["@lsp.typemod.function.readonly"] = { fg = c.function_hl },
    ["@lsp.typemod.variable.readonly"] = { fg = c.constant },
    ---------------------------------------------------------
    -- Error
    ---------------------------------------------------------
    DiagnosticError = { fg = c.error },
    DiagnosticSignError = { fg = c.error },
    DiagnosticUnderlineError = { underline = true, sp = c.error },
    DiagnosticFloatingError = { fg = c.error },
    DiagnosticVirtualTextError = { fg = c.comment },

    ---------------------------------------------------------
    -- Warning
    ---------------------------------------------------------
    DiagnosticWarn = { fg = c.warn },
    DiagnosticSignWarn = { fg = c.warn },
    DiagnosticUnderlineWarn = { underline = true, sp = c.warn },
    DiagnosticFloatingWarn = { fg = c.warn },
    DiagnosticVirtualTextWarn = { fg = c.comment },

    ---------------------------------------------------------
    -- Information
    ---------------------------------------------------------
    DiagnosticInfo = { fg = c.info },
    DiagnosticSignInfo = { fg = c.info },
    DiagnosticUnderlineInfo = { underline = true, sp = c.info },
    DiagnosticFloatingInfo = { fg = c.info },
    DiagnosticVirtualTextInfo = { fg = c.comment },

    ---------------------------------------------------------
    -- Hint
    ---------------------------------------------------------
    DiagnosticHint = { fg = c.hint },
    DiagnosticSignHint = { fg = c.hint },
    DiagnosticUnderlineHint = { underline = true, sp = c.hint },
    DiagnosticFloatingHint = { fg = c.hint },
    DiagnosticVirtualTextHint = { fg = c.comment },
  }
end
