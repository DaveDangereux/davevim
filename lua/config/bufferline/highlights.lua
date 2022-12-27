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
    bg = c.bufferline_buf_sel_bg,
    italic = false,
  },
  close_button_selected = {
    bg = c.bufferline_buf_sel_bg,
  },
  modified_selected = {
    bg = c.bufferline_buf_sel_bg,
  },
  separator_selected = {
    fg = c.bufferline_buf_sep_fg,
    bg = c.bufferline_buf_sel_bg,
  },
  diagnostic_selected = {
    bg = c.bufferline_buf_sel_bg,
    italic = false,
  },
  hint_selected = {
    bg = c.bufferline_buf_sel_bg,
    italic = false,
  },
  hint_diagnostic_selected = {
    bg = c.bufferline_buf_sel_bg,
  },
  info_selected = {
    bg = c.bufferline_buf_sel_bg,
    italic = false,
  },
  info_diagnostic_selected = {
    bg = c.bufferline_buf_sel_bg,
  },
  warning_selected = {
    bg = c.bufferline_buf_sel_bg,
    italic = false,
  },
  warning_diagnostic_selected = {
    bg = c.bufferline_buf_sel_bg,
  },
  error_selected = {
    bg = c.bufferline_buf_sel_bg,
    italic = false,
  },
  error_diagnostic_selected = {
    bg = c.bufferline_buf_sel_bg,
  },
  indicator_selected = {},
  duplicate_selected = {
    fg = c.bufferline_text_dup_sel,
    bg = c.bufferline_buf_sel_bg,
  },
  pick_selected = {
    bg = c.bufferline_buf_sel_bg,
  },

  -------------------------------------------------------------------------------
  -- Visible (unselected) buffer
  -------------------------------------------------------------------------------
  buffer_visible = {
    bg = c.bufferline_buf_vis_bg,
  },
  close_button_visible = {
    bg = c.bufferline_buf_vis_bg,
  },
  diagnostic_visible = {
    bg = c.bufferline_buf_vis_bg,
  },
  hint_visible = {
    -- fg = c.hint,
    bg = c.bufferline_buf_vis_bg,
  },
  hint_diagnostic_visible = {
    -- fg = c.hint,
    bg = c.bufferline_buf_vis_bg,
  },
  info_visible = {
    -- fg = c.info,
    bg = c.bufferline_buf_vis_bg,
  },
  info_diagnostic_visible = {
    -- fg = c.info,
    bg = c.bufferline_buf_vis_bg,
  },
  warning_visible = {
    -- fg = c.warn,
    bg = c.bufferline_buf_vis_bg,
  },
  warning_diagnostic_visible = {
    -- fg = c.warn,
    bg = c.bufferline_buf_vis_bg,
  },
  error_visible = {
    -- fg = c.error,
    bg = c.bufferline_buf_vis_bg,
  },
  error_diagnostic_visible = {
    -- fg = c.error,
    bg = c.bufferline_buf_vis_bg,
  },
  modified_visible = {
    bg = c.bufferline_buf_vis_bg,
  },
  separator_visible = {
    fg = c.bufferline_buf_sep_fg,
    bg = c.bufferline_buf_vis_bg,
  },
  duplicate_visible = {
    fg = c.bufferline_text_dup_vis,
    bg = c.bufferline_buf_vis_bg,
  },
  pick_visible = {
    bg = c.bufferline_buf_vis_bg,
  },

  -------------------------------------------------------------------------------
  -- Inactive buffer
  -------------------------------------------------------------------------------
  background = {
    bg = c.bufferline_buf_inactive_bg,
  },
  close_button = {
    bg = c.bufferline_buf_inactive_bg,
  },
  modified = {
    bg = c.bufferline_buf_inactive_bg,
  },
  separator = {
    fg = c.bufferline_buf_sep_fg,
    bg = c.bufferline_buf_inactive_bg,
  },
  diagnostic = {
    bg = c.bufferline_buf_inactive_bg,
  },
  hint = {
    bg = c.bufferline_buf_inactive_bg,
  },
  hint_diagnostic = {
    bg = c.bufferline_buf_inactive_bg,
  },
  info = {
    bg = c.bufferline_buf_inactive_bg,
  },
  info_diagnostic = {
    bg = c.bufferline_buf_inactive_bg,
  },
  warning = {
    bg = c.bufferline_buf_inactive_bg,
  },
  warning_diagnostic = {
    bg = c.bufferline_buf_inactive_bg,
  },
  error = {
    bg = c.bufferline_buf_inactive_bg,
  },
  error_diagnostic = {
    bg = c.bufferline_buf_inactive_bg,
  },
  duplicate = {
    fg = c.bufferline_text_dup_vis,
    bg = c.bufferline_buf_inactive_bg,
  },
  pick = {
    bg = c.bufferline_buf_inactive_bg,
  },

  -------------------------------------------------------------------------------
  -- Tabs
  -------------------------------------------------------------------------------
  tab = {
    bg = c.bufferline_buf_inactive_bg,
  },
  tab_separator = {
    fg = c.bufferline_buf_inactive_bg,
  },
  tab_selected = {
    fg = c.fg,
    bg = c.bufferline_buf_sel_bg,
  },
  tab_separator_selected = {
    fg = c.bufferline_buf_sel_bg,
  },
}

return highlights
