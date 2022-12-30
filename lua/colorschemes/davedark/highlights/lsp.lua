return function(theme_variant)
  local c = require("colorschemes.davedark.themes.default")

  if theme_variant then
    c = require("colorschemes.davedark.themes." .. theme_variant)
  end

  return {
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
    DiagnosticUnderlineHint = { sp = c.hint },
    DiagnosticFloatingHint = { fg = c.hint },
    DiagnosticVirtualTextHint = { fg = c.comment },
  }
end
