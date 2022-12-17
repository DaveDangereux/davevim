local c = require("plugins.feline.themes.davedark.palette")

local highlights = {
  StatusLine = { fg = c.off_black },
  StatusLineNC = { fg = c.off_black },

  -- vim-mode
  FelineModeDefault = { fg = c.fg, bg = c.off_black },
  FelineModeDefaultSep = { fg = c.dark_blue_grey, bg = c.off_black },
  FelineModeNormal = { fg = c.off_black, bg = c.green },
  FelineModeNormalSep = { fg = c.dark_blue_grey, bg = c.green },
  FelineModeInsert = { fg = c.off_black, bg = c.red },
  FelineModeInsertSep = { fg = c.dark_blue_grey, bg = c.red },
  FelineModeVisual = { fg = c.off_black, bg = c.yellow },
  FelineModeVisualSep = { fg = c.dark_blue_grey, bg = c.yellow },
  FelineModeCommand = { fg = c.off_black, bg = c.light_blue },
  FelineModeCommandSep = { fg = c.dark_blue_grey, bg = c.light_blue },
  FelineModeConfirm = { fg = c.off_black, bg = c.red },
  FelineModeConfirmSep = { fg = c.dark_blue_grey, bg = c.red },
  FelineModeReplace = { fg = c.off_black, bg = c.red },
  FelineModeReplaceSep = { fg = c.dark_blue_grey, bg = c.red },
  FelineModeTerm = { fg = c.off_black, bg = c.purple },
  FelineModeTermSep = { fg = c.dark_blue_grey, bg = c.purple },
  FelineModeOperatorPending = { fg = c.dark_blue_grey, bg = c.cyan },
  FelineModeOperatorPendingSep = { fg = c.dark_blue_grey, bg = c.purple },

  -- file-info / git-branch
  FelineFileInfo = { fg = c.fg, bg = c.dark_blue_grey },
  FelineFileInfoRightSep = { fg = c.off_black, bg = c.dark_blue_grey },

  -- git-diff
  FelineDiffAdded = { fg = c.green, bg = c.off_black },
  FelineDiffChanged = { fg = c.orange, bg = c.off_black },
  FelineDiffRemoved = { fg = c.red, bg = c.off_black },

  -- gps
  FelineGps = { fg = c.off_black, bg = c.silver },
  FelineGpsSep = { fg = c.silver, bg = c.off_black },

  -- diagnostics
  FelineDiagErrorSep = { fg = c.dark_red, bg = c.silver },
  FelineDiagError = { fg = c.off_black, bg = c.dark_red },
  FelineDiagWarnSep = { fg = c.dark_orange, bg = c.dark_red },
  FelineDiagWarn = { fg = c.off_black, bg = c.dark_orange },
  FelineDiagInfoSep = { fg = c.dark_green, bg = c.dark_orange },
  FelineDiagInfo = { fg = c.off_black, bg = c.dark_green },
  FelineDiagHintSep = { fg = c.blue, bg = c.dark_green },
  FelineDiagHint = { fg = c.off_black, bg = c.blue },
  -- FelineDiagHintSepRight = { fg = c.dark_blue_grey, bg = c.blue },

  -- file-type
  FelineFileTypeSep = { fg = c.dark_blue_grey, bg = c.blue },
  FelineFileType = { bg = c.dark_blue_grey },

  -- file-format
  FelineFileFormatSep = { fg = c.off_black, bg = c.dark_blue_grey },
  FelineFileFormat = { bg = c.off_black },

  -- position
  FelinePositionSep = { fg = c.cyan, bg = c.off_black },
  FelinePosition = { fg = c.off_black, bg = c.cyan },

  -- inactive-file-type
  FelineInactiveFileType = { fg = c.fg, bg = c.dark_blue_grey },
  FelineInactiveFileTypeSep = { fg = c.off_black, bg = c.dark_blue_grey },
}

for group, opts in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, opts)
end
