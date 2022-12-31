local c = require("colorschemes.davedark.themes.default")

local highlights = {
  -------------------------------------------------------------------------------
  -- General
  -------------------------------------------------------------------------------
  fill = {},

  -------------------------------------------------------------------------------
  -- Selected buffer
  -------------------------------------------------------------------------------
  buffer_selected = {
    bg = c.bufferline_bg_buf_sel,
    italic = false,
  },
  close_button_selected = {
    bg = c.bufferline_bg_buf_sel,
  },
  modified_selected = {
    bg = c.bufferline_bg_buf_sel,
  },
  separator_selected = {
    fg = c.bufferline_fg_buf_sep,
    bg = c.bufferline_bg_buf_sel,
  },
  diagnostic_selected = {
    bg = c.bufferline_bg_buf_sel,
    italic = false,
  },
  hint_selected = {
    bg = c.bufferline_bg_buf_sel,
    italic = false,
  },
  hint_diagnostic_selected = {
    bg = c.bufferline_bg_buf_sel,
  },
  info_selected = {
    bg = c.bufferline_bg_buf_sel,
    italic = false,
  },
  info_diagnostic_selected = {
    bg = c.bufferline_bg_buf_sel,
  },
  warning_selected = {
    bg = c.bufferline_bg_buf_sel,
    italic = false,
  },
  warning_diagnostic_selected = {
    bg = c.bufferline_bg_buf_sel,
  },
  error_selected = {
    bg = c.bufferline_bg_buf_sel,
    italic = false,
  },
  error_diagnostic_selected = {
    bg = c.bufferline_bg_buf_sel,
  },
  indicator_selected = {},
  duplicate_selected = {
    fg = c.info,
    bg = c.bufferline_bg_buf_sel,
  },
  pick_selected = {
    bg = c.bufferline_bg_buf_sel,
  },

  -------------------------------------------------------------------------------
  -- Visible (unselected) buffer
  -------------------------------------------------------------------------------
  buffer_visible = {
    bg = c.bufferline_bg_buf_vis,
  },
  close_button_visible = {
    bg = c.bufferline_bg_buf_vis,
  },
  diagnostic_visible = {
    bg = c.bufferline_bg_buf_vis,
  },
  hint_visible = {
    bg = c.bufferline_bg_buf_vis,
  },
  hint_diagnostic_visible = {
    bg = c.bufferline_bg_buf_vis,
  },
  info_visible = {
    bg = c.bufferline_bg_buf_vis,
  },
  info_diagnostic_visible = {
    bg = c.bufferline_bg_buf_vis,
  },
  warning_visible = {
    bg = c.bufferline_bg_buf_vis,
  },
  warning_diagnostic_visible = {
    bg = c.bufferline_bg_buf_vis,
  },
  error_visible = {
    bg = c.bufferline_bg_buf_vis,
  },
  error_diagnostic_visible = {
    bg = c.bufferline_bg_buf_vis,
  },
  modified_visible = {
    bg = c.bufferline_bg_buf_vis,
  },
  separator_visible = {
    fg = c.bufferline_fg_buf_sep,
    bg = c.bufferline_bg_buf_vis,
  },
  duplicate_visible = {
    fg = c.info,
    bg = c.bufferline_bg_buf_vis,
  },
  pick_visible = {
    bg = c.bufferline_bg_buf_vis,
  },

  -------------------------------------------------------------------------------
  -- Inactive buffer
  -------------------------------------------------------------------------------
  background = {
    bg = c.bufferline_bg_buf_inactive,
  },
  close_button = {
    bg = c.bufferline_bg_buf_inactive,
  },
  modified = {
    bg = c.bufferline_bg_buf_inactive,
  },
  separator = {
    fg = c.bufferline_fg_buf_sep,
    bg = c.bufferline_bg_buf_inactive,
  },
  diagnostic = {
    bg = c.bufferline_bg_buf_inactive,
  },
  hint = {
    bg = c.bufferline_bg_buf_inactive,
  },
  hint_diagnostic = {
    bg = c.bufferline_bg_buf_inactive,
  },
  info = {
    bg = c.bufferline_bg_buf_inactive,
  },
  info_diagnostic = {
    bg = c.bufferline_bg_buf_inactive,
  },
  warning = {
    bg = c.bufferline_bg_buf_inactive,
  },
  warning_diagnostic = {
    bg = c.bufferline_bg_buf_inactive,
  },
  error = {
    bg = c.bufferline_bg_buf_inactive,
  },
  error_diagnostic = {
    bg = c.bufferline_bg_buf_inactive,
  },
  duplicate = {
    fg = c.info,
    bg = c.bufferline_bg_buf_inactive,
  },
  pick = {
    bg = c.bufferline_bg_buf_inactive,
  },

  -------------------------------------------------------------------------------
  -- Tabs
  -------------------------------------------------------------------------------
  tab = {
    bg = c.bufferline_bg_buf_inactive,
  },
  tab_separator = {
    fg = c.bufferline_bg_buf_inactive,
  },
  tab_selected = {
    fg = c.fg,
    bg = c.bufferline_bg_buf_sel,
  },
  tab_separator_selected = {
    fg = c.bufferline_bg_buf_sel,
  },
}

return highlights
