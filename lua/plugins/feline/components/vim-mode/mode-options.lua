-- OP
-- REPLACE
-- V-REPLACE
-- ENTER
-- MORE
-- SHELL
-- NONE

return {
  NORMAL = {
    text = "NORMAL",
    hl = "FelineModeNormal",
    right_sep_hl = "FelineModeNormalSep"
  },
  INSERT = {
    text = "INSERT",
    hl = "FelineModeInsert",
    right_sep_hl = "FelineModeInsertSep"
  },
  VISUAL = {
    text = "VISUAL",
    hl = "FelineModeVisual",
    right_sep_hl = "FelineModeVisualSep"
  },
  LINES = {
    text = "V-LINE",
    hl = "FelineModeVisual",
    right_sep_hl = "FelineModeVisualSep"
  },
  BLOCK = {
    text = "V-BLOCK",
    hl = "FelineModeVisual",
    right_sep_hl = "FelineModeVisualSep"
  },
  COMMAND = {
    text = "COMMAND",
    hl = "FelineModeCommand",
    right_sep_hl = "FelineModeCommandSep"
  },
  CONFIRM = {
    text = "REPLACE",
    hl = "FelineModeReplace",
    right_sep_hl = "FelineModeReplaceSep"
  },
  SELECT = {
    text = "SELECT",
    hl = "FelineModeVisual",
    right_sep_hl = "FelineModeVisualSep"
  },
  TERM = {
    text = "TERMINAL",
    hl = "FelineModeTerm",
    right_sep_hl = "FelineModeTermSep"
  },
  REPLACE = {
    text = "REPLACE",
    hl = "FelineModeReplace",
    right_sep_hl = "FelineModeReplaceSep"
  },
  DEFAULT = {
    text = "UNKNOWN MODE",
    hl = "FelineModeDefault",
    right_sep_hl = "FelineModeDefaultSep"
  }
}
