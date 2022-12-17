local c = require("colorschemes.davedark.palette").c

return {
  ---------------------------------------------------------
  -- Error
  ---------------------------------------------------------
  DiagnosticError = { fg = c.error_red },
  DiagnosticSignError = { fg = c.error_red },
  DiagnosticUnderlineError = { undercurl = true, sp = c.error_red },
  DiagnosticFloatingError = { fg = c.error_red },
  DiagnosticVirtualTextError = { fg = c.light_blue_grey },
  ---------------------------------------------------------
  -- Error (testing)
  ---------------------------------------------------------
  LspDiagnosticsError = { fg = c.test_pink, bg = c.test_yellow },
  LspDiagnosticsDefaultError = { fg = c.test_pink, bg = c.test_yellow },
  LspDiagnosticsFloatingError = { fg = c.test_pink, bg = c.test_yellow },
  LspDiagnosticsSignError = { fg = c.test_pink, bg = c.test_yellow },
  LspDiagnosticsUnderlineError = { fg = c.test_pink, bg = c.test_yellow, underline = true },
  LspDiagnosticsVirtualTextError = { fg = c.test_pink, bg = c.test_yellow },

  ---------------------------------------------------------
  -- Warning
  ---------------------------------------------------------
  DiagnosticWarn = { fg = c.orange },
  DiagnosticSignWarn = { fg = c.orange },
  DiagnosticUnderlineWarn = { undercurl = true, sp = c.orange },
  DiagnosticFloatingWarn = { fg = c.orange },
  DiagnosticVirtualTextWarn = { fg = c.light_blue_grey },
  ---------------------------------------------------------
  -- Warning (testing)
  ---------------------------------------------------------
  LspDiagnosticsWarning = { fg = c.test_pink, bg = c.test_yellow },
  LspDiagnosticsDefaultWarning = { fg = c.test_pink, bg = c.test_yellow },
  LspDiagnosticsFloatingWarning = { fg = c.test_pink, bg = c.test_yellow },
  LspDiagnosticsSignWarning = { fg = c.test_pink, bg = c.test_yellow },
  LspDiagnosticsUnderlineWarning = { fg = c.test_pink, bg = c.test_yellow },
  LspDiagnosticsVirtualTextWarning = { fg = c.test_pink, bg = c.test_yellow },

  ---------------------------------------------------------
  -- Information
  ---------------------------------------------------------
  DiagnosticInfo = { fg = c.green },
  DiagnosticSignInfo = { fg = c.green },
  DiagnosticUnderlineInfo = { undercurl = true, sp = c.green },
  DiagnosticFloatingInfo = { fg = c.green },
  DiagnosticVirtualTextInfo = { fg = c.light_blue_grey },
  ---------------------------------------------------------
  -- Information (testing)
  ---------------------------------------------------------
  LspDiagnosticsInformation = { fg = c.test_pink, bg = c.test_yellow },
  LspDiagnosticsDefaultInformation = { fg = c.test_pink, bg = c.test_yellow },
  LspDiagnosticsFloatingInformation = { fg = c.test_pink, bg = c.test_yellow },
  LspDiagnosticsSignInformation = { fg = c.test_pink, bg = c.test_yellow },
  LspDiagnosticsUnderlineInformation = { fg = c.test_pink, bg = c.test_yellow },
  LspDiagnosticsVirtualTextInformation = { fg = c.test_pink, bg = c.test_yellow },

  ---------------------------------------------------------
  -- Hint
  ---------------------------------------------------------
  DiagnosticHint = { fg = c.blue },
  DiagnosticSignHint = { fg = c.blue },
  DiagnosticUnderlineHint = { sp = c.blue },
  DiagnosticFloatingHint = { fg = c.blue },
  DiagnosticVirtualTextHint = { fg = c.light_blue_grey },
  ---------------------------------------------------------
  -- Hint (testing)
  ---------------------------------------------------------
  LspDiagnosticsHint = { fg = c.test_pink, bg = c.test_yellow },
  LspDiagnosticsDefaultHint = { fg = c.test_pink, bg = c.test_yellow },
  LspDiagnosticsFloatingHint = { fg = c.test_pink, bg = c.test_yellow },
  LspDiagnosticsSignHint = { fg = c.test_pink, bg = c.test_yellow },
  LspDiagnosticsUnderlineHint = { fg = c.test_pink, bg = c.test_yellow },
  LspDiagnosticsVirtualTextHint = { fg = c.test_pink, bg = c.test_yellow },
}
