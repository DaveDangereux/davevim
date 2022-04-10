local c = require("colorschemes.davedark.palette")
-- local config = require("colorschemes.davedark.config")

return {
  ---------------------------------------------------------
  -- Error
  ---------------------------------------------------------
  DiagnosticError = { fg = c.error_red },
  DiagnosticSignError = { fg = c.error_red },
  DiagnosticUnderlineError = { style = "undercurl", special = c.error_red },
  DiagnosticFloatingError = { fg = c.error_red },
  DiagnosticVirtualTextError = { fg = c.light_blue_grey },
  ---------------------------------------------------------
  -- Error (testing)
  ---------------------------------------------------------
  LspDiagnosticsError = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsDefaultError = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsFloatingError = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsSignError = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsUnderlineError = { fg = c.test_fg, bg = c.test_bg, style = "underline" },
  LspDiagnosticsVirtualTextError = { fg = c.test_fg, bg = c.test_bg },

  ---------------------------------------------------------
  -- Warning
  ---------------------------------------------------------
  DiagnosticWarn = { fg = c.orange },
  DiagnosticSignWarn = { fg = c.orange },
  DiagnosticUnderlineWarn = { style = "undercurl", special = c.orange },
  DiagnosticFloatingWarn = { fg = c.orange },
  DiagnosticVirtualTextWarn = { fg = c.light_blue_grey },
  ---------------------------------------------------------
  -- Warning (testing)
  ---------------------------------------------------------
  LspDiagnosticsWarning = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsDefaultWarning = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsFloatingWarning = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsSignWarning = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsUnderlineWarning = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsVirtualTextWarning = { fg = c.test_fg, bg = c.test_bg },

  ---------------------------------------------------------
  -- Information
  ---------------------------------------------------------
  DiagnosticInfo = { fg = c.green },
  DiagnosticSignInfo = { fg = c.green },
  DiagnosticUnderlineInfo = { style = "undercurl", special = c.green },
  DiagnosticFloatingInfo = { fg = c.green },
  DiagnosticVirtualTextInfo = { fg = c.light_blue_grey },
  ---------------------------------------------------------
  -- Information (testing)
  ---------------------------------------------------------
  LspDiagnosticsInformation = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsDefaultInformation = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsFloatingInformation = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsSignInformation = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsUnderlineInformation = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsVirtualTextInformation = { fg = c.test_fg, bg = c.test_bg },

  ---------------------------------------------------------
  -- Hint
  ---------------------------------------------------------
  DiagnosticHint = { fg = c.blue },
  DiagnosticSignHint = { fg = c.blue },
  DiagnosticUnderlineHint = { style = "undercurl", special = c.blue },
  DiagnosticFloatingHint = { fg = c.blue },
  DiagnosticVirtualTextHint = { fg = c.light_blue_grey },
  ---------------------------------------------------------
  -- Hint (testing)
  ---------------------------------------------------------
  LspDiagnosticsHint = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsDefaultHint = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsFloatingHint = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsSignHint = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsUnderlineHint = { fg = c.test_fg, bg = c.test_bg },
  LspDiagnosticsVirtualTextHint = { fg = c.test_fg, bg = c.test_bg },
}
