local c = require("colorschemes.davedark.themes.default")

local highlights = {
  StatusLine = { fg = c.test_green, bg = c.none }, -- bg seems important
  StatusLineNC = { fg = c.test_green, bg = c.test_green, bold = true },

  -- vim-mode
  FelineModeDefault = { bg = c.statusline_bg },
  FelineModeDefaultSep = { fg = c.test_green, bg = c.test_green },
  FelineModeNormal = { fg = c.fg_text_dark, bg = c.string },
  FelineModeNormalSep = { fg = c.statusline_tab_bg, bg = c.string },
  FelineModeInsert = { fg = c.fg_text_dark, bg = c.diff_delete },
  FelineModeInsertSep = { fg = c.statusline_tab_bg, bg = c.diff_delete },
  FelineModeVisual = { fg = c.fg_text_dark, bg = c.type },
  FelineModeVisualSep = { fg = c.statusline_tab_bg, bg = c.type },
  FelineModeCommand = { fg = c.fg_text_dark, bg = c.info },
  FelineModeCommandSep = { fg = c.statusline_tab_bg, bg = c.info },
  FelineModeConfirm = { fg = c.fg_text_dark, bg = c.diff_delete },
  FelineModeConfirmSep = { fg = c.statusline_tab_bg, bg = c.diff_delete },
  FelineModeReplace = { fg = c.fg_text_dark, bg = c.diff_delete },
  FelineModeReplaceSep = { fg = c.statusline_tab_bg, bg = c.diff_delete },
  FelineModeTerm = { fg = c.fg_text_dark, bg = c.keyword },
  FelineModeTermSep = { fg = c.statusline_tab_bg, bg = c.keyword },
  FelineModeOperatorPending = { fg = c.statusline_tab_bg, bg = c.operator },
  FelineModeOperatorPendingSep = { fg = c.statusline_tab_bg, bg = c.keyword },

  -- file-info / git-branch
  FelineFileInfo = { fg = c.fg, bg = c.statusline_tab_bg },
  FelineFileInfoRightSep = { fg = c.fg_text_dark, bg = c.statusline_tab_bg },

  -- git-diff
  FelineDiffAdded = { fg = c.diff_add, bg = c.statusline_bg },
  FelineDiffChanged = { fg = c.diff_change, bg = c.statusline_bg },
  FelineDiffRemoved = { fg = c.diff_delete, bg = c.statusline_bg },

  -- gps
  FelineNavicSep = { fg = c.statusline_navic_bg, bg = c.statusline_bg },

  -- diagnostics
  FelineDiagErrorSep = { fg = c.error, bg = c.statusline_navic_bg },
  FelineDiagError = { fg = c.fg_text_dark, bg = c.error },
  FelineDiagWarnSep = { fg = c.warn, bg = c.error },
  FelineDiagWarn = { fg = c.fg_text_dark, bg = c.warn },
  FelineDiagInfoSep = { fg = c.info, bg = c.warn },
  FelineDiagInfo = { fg = c.fg_text_dark, bg = c.info },
  FelineDiagHintSep = { fg = c.hint, bg = c.info },
  FelineDiagHint = { fg = c.fg_text_dark, bg = c.hint },
  -- FelineDiagHintSepRight = { fg = c.dark_blue_grey, bg = c.blue },

  -- file-type
  FelineFileTypeSep = { fg = c.statusline_tab_bg, bg = c.hint },
  FelineFileType = { bg = c.statusline_tab_bg },

  -- file-format
  FelineFileFormatSep = { fg = c.fg_text_dark, bg = c.statusline_tab_bg },
  FelineFileFormat = { bg = c.fg_text_dark },

  -- position
  FelinePositionSep = { fg = c.statusline_alt_bg, bg = c.statusline_bg },
  FelinePosition = { fg = c.fg_text_dark, bg = c.statusline_alt_bg },

  -- inactive-file-type
  FelineInactiveFileType = { fg = c.fg, bg = c.statusline_tab_bg },
  FelineInactiveFileTypeSep = { fg = c.fg_text_dark, bg = c.statusline_tab_bg },
}

for group, opts in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, opts)
end
