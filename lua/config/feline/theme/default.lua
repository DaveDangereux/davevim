local c = require("colorschemes.davedark.themes.default")

local highlights = {
  StatusLine = { fg = c.test_fg, bg = c.none }, -- bg seems important
  StatusLineNC = { fg = c.test_fg, bg = c.test_bg, bold = true },

  -- vim-mode
  FelineModeDefault = { bg = c.statusline_bg },
  FelineModeDefaultSep = { fg = c.test_fg, bg = c.test_bg },
  FelineModeNormal = { fg = c.fg_dark, bg = c.string },
  FelineModeNormalSep = { fg = c.statusline_bg_tab, bg = c.string },
  FelineModeInsert = { fg = c.fg_dark, bg = c.diff_delete },
  FelineModeInsertSep = { fg = c.statusline_bg_tab, bg = c.diff_delete },
  FelineModeVisual = { fg = c.fg_dark, bg = c.type },
  FelineModeVisualSep = { fg = c.statusline_bg_tab, bg = c.type },
  FelineModeCommand = { fg = c.fg_dark, bg = c.info },
  FelineModeCommandSep = { fg = c.statusline_bg_tab, bg = c.info },
  FelineModeConfirm = { fg = c.fg_dark, bg = c.diff_delete },
  FelineModeConfirmSep = { fg = c.statusline_bg_tab, bg = c.diff_delete },
  FelineModeReplace = { fg = c.fg_dark, bg = c.diff_delete },
  FelineModeReplaceSep = { fg = c.statusline_bg_tab, bg = c.diff_delete },
  FelineModeTerm = { fg = c.fg_dark, bg = c.keyword },
  FelineModeTermSep = { fg = c.statusline_bg_tab, bg = c.keyword },
  FelineModeOperatorPending = { fg = c.statusline_bg_tab, bg = c.operator },
  FelineModeOperatorPendingSep = { fg = c.statusline_bg_tab, bg = c.keyword },

  -- file-info / git-branch
  FelineFileInfo = { fg = c.fg, bg = c.statusline_bg_tab },
  FelineFileInfoRightSep = { fg = c.statusline_bg, bg = c.statusline_bg_tab },

  -- git-diff
  FelineDiffAdded = { fg = c.diff_add, bg = c.statusline_bg },
  FelineDiffChanged = { fg = c.diff_change, bg = c.statusline_bg },
  FelineDiffRemoved = { fg = c.diff_delete, bg = c.statusline_bg },

  -- gps
  FelineNavicSep = { fg = c.statusline_bg_tab, bg = c.statusline_bg },

  -- diagnostics
  FelineDiagErrorSep = { fg = c.error, bg = c.statusline_bg_tab },
  FelineDiagError = { fg = c.fg_dark, bg = c.error },
  FelineDiagWarnSep = { fg = c.warn, bg = c.error },
  FelineDiagWarn = { fg = c.fg_dark, bg = c.warn },
  FelineDiagInfoSep = { fg = c.info, bg = c.warn },
  FelineDiagInfo = { fg = c.fg_dark, bg = c.info },
  FelineDiagHintSep = { fg = c.hint, bg = c.info },
  FelineDiagHint = { fg = c.fg_dark, bg = c.hint },
  -- FelineDiagHintSepRight = { fg = c.dark_blue_grey, bg = c.blue },

  -- file-type
  FelineFileTypeSep = { fg = c.statusline_bg_tab, bg = c.hint },
  FelineFileType = { bg = c.statusline_bg_tab },

  -- file-format
  FelineFileFormatSep = { fg = c.statusline_bg, bg = c.statusline_bg_tab },
  FelineFileFormat = { bg = c.statusline_bg },

  -- position
  FelinePositionSep = { fg = c.statusline_bg_alt, bg = c.statusline_bg },
  FelinePosition = { fg = c.fg_dark, bg = c.statusline_bg_alt },

  -- inactive-file-type
  FelineInactiveFileType = { fg = c.fg, bg = c.statusline_bg_tab },
  FelineInactiveFileTypeSep = { fg = c.fg_dark, bg = c.statusline_bg_tab },
}

for group, opts in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, opts)
end
