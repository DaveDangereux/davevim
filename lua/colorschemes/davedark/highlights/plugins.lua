local c = require("colorschemes.davedark.palette")
local config = require("colorschemes.davedark.config")

return {
  ---------------------------------------------------------
  -- nvim-tree
  ---------------------------------------------------------
  NvimTreeIndentMarker = { fg = c.fg },
  NvimTreeNormal = { bg = config.transparent_background and c.none or c.nvim_tree_bg },
  NvimTreeVertSplit = nil,
  NvimTreeFolderName = { fg = c.blue },
  NvimTreeOpenedFolderName = { fg = c.purple, style = "italic" },
  NvimTreeSpecialFile = { fg = c.orange, style = "bold,italic" },
  NvimTreeGitStaged = { fg = c.green },
  NvimTreeCursorLine = nil,
  NvimTreeGitNew = { fg = c.green },
  NvimTreeGitDirty = { fg = c.orange },
  NvimTreeGitDeleted = { fg = c.error_red },
  NvimTreeRootFolder = { fg = c.fg, style = "bold" },

  -- nvim-tree (testing)
  -- NvimTreeFolderIcon = { fg = c.test_fg, bg = c.test_bg },
  -- NvimTreeImageFile = { fg = c.test_fg, bg = c.test_bg },
  -- NvimTreeGitMerge = { fg = c.test_fg, bg = c.test_bg },
  -- NvimTreeGitRenamed = { fg = c.test_fg, bg = c.test_bg },
  -- NvimTreeSymlink = { fg = c.test_fg, bg = c.test_bg },
  -- NvimTreeExecFile = { fg = c.test_fg, bg = c.test_bg },

  ---------------------------------------------------------
  -- Telescope
  ---------------------------------------------------------
  TelescopeSelection = { fg = c.cyan },
  TelescopeMatching = { fg = c.yellow, style = "bold" },
  TelescopeBorder = { fg = c.cyan, bg = config.transparent_background and c.none or c.bg },
  TelescopePromptPrefix = { fg = c.purple },

  ---------------------------------------------------------
  -- Notify
  ---------------------------------------------------------
  NotifyERRORBorder = { fg = c.error_red },
  NotifyERRORIcon = { fg = c.error_red },
  NotifyERRORTitle = { fg = c.error_red },
  NotifyERRORBody = { fg = c.fg },
  NotifyWARNBorder = { fg = c.orange },
  NotifyWARNIcon = { fg = c.orange },
  NotifyWARNTitle = { fg = c.orange },
  NotifyWARNBody = { fg = c.fg },
  NotifyINFOBorder = { fg = c.green },
  NotifyINFOIcon = { fg = c.green },
  NotifyINFOTitle = { fg = c.green },
  NotifyINFOBody = { fg = c.fg },
  NotifyDEBUGBorder = { fg = c.hot_pink },
  NotifyDEBUGIcon = { fg = c.hot_pink },
  NotifyDEBUGTitle = { fg = c.hot_pink },
  NotifyDEBUGBody = { fg = c.fg },
  NotifyTRACEBorder = { fg = c.purple },
  NotifyTRACEIcon = { fg = c.purple },
  NotifyTRACETitle = { fg = c.purple },
  NotifyTRACEBody = { fg = c.fg },

  ---------------------------------------------------------
  -- Illuminate
  ---------------------------------------------------------
  IlluminatedWordText = { fg = c.illuminate_text, style = "bold" },
  IlluminatedWordRead = { fg = c.illuminate_read, style = "bold" },
  IlluminatedWordWrite = { fg = c.illuminate_write, style = "bold" },

  ---------------------------------------------------------
  -- Alpha
  ---------------------------------------------------------
  AlphaHeader1 = { fg = c.red },
  AlphaHeader2 = { fg = c.orange },
  AlphaHeader3 = { fg = c.yellow },
  AlphaHeader4 = { fg = c.green },
  AlphaHeader5 = { fg = c.blue },
  AlphaHeader6 = { fg = c.purple },
  AlphaButton = { fg = c.fg },
  AlphaButtonShortcut = { fg = c.orange },

  ---------------------------------------------------------
  -- toggleterm
  ---------------------------------------------------------
  ToggleTermBorder = { fg = c.cyan, bg = config.transparent_background and c.none or c.bg },
  ToggleTermBg = { bg = config.transparent_background and c.none or c.term_bg },

  ---------------------------------------------------------
  -- indent-blankline
  ---------------------------------------------------------
  IndentBlanklineIndent1 = { fg = c.indent1 },
  IndentBlanklineIndent2 = { fg = c.indent2 },
  IndentBlanklineIndent3 = { fg = c.indent3 },
  IndentBlanklineIndent4 = { fg = c.indent4 },
  IndentBlanklineIndent5 = { fg = c.indent5 },
  IndentBlanklineIndent6 = { fg = c.indent6 },
  IndentBlanklineIndent7 = { fg = c.indent7 },

  ---------------------------------------------------------
  -- lsp_signature
  ---------------------------------------------------------
  LspSignatureActiveParameter = { fg = c.blue, style = "bold" },

  ---------------------------------------------------------
  -- lspconfig
  ---------------------------------------------------------
  LspInfoTitle = { fg = c.yellow, style = "bold" },

  ---------------------------------------------------------
  -- gitsigns
  ---------------------------------------------------------

  GitSignsUntracked = { fg = c.blue },
  GitSignsUntrackedNr = { fg = c.blue },
  GitSignsUntrackedLn = { fg = c.blue },
}
