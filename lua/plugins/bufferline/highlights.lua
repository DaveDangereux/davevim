local c = require("colorschemes.davedark.palette").c

local highlights = {
  -------------------------------------------------------------------------------
  -- General
  -------------------------------------------------------------------------------
  fill = {
    fg = c.disabled,
    bg = c.disabled,
  },

  -------------------------------------------------------------------------------
  -- Tabs
  -------------------------------------------------------------------------------
  tab = {
    fg = c.disabled,
    bg = c.off_black,
  },
  tab_separator = {
    fg = c.off_black,
    bg = c.none,
  },
  tab_selected = {
    fg = c.fg,
    bg = c.tab_blue_grey,
  },
  tab_separator_selected = {
    fg = c.tab_blue_grey,
    bg = c.none,
  },

  -------------------------------------------------------------------------------
  -- Selected buffer
  -------------------------------------------------------------------------------
  buffer_selected = {
    fg = c.disabled,
    bg = c.tab_blue_grey,
    italic = false,
  },
  close_button_selected = {
    fg = c.disabled,
    bg = c.tab_blue_grey,
  },
  modified_selected = {
    fg = c.disabled,
    bg = c.tab_blue_grey,
  },
  separator_selected = {
    fg = c.black,
    bg = c.tab_blue_grey,
  },
  diagnostic_selected = {
    fg = c.disabled,
    bg = c.tab_blue_grey,
    bold_italic = true,
  },
  hint_selected = {
    fg = c.disabled,
    bg = c.tab_blue_grey,
    bold_italic = true,
  },
  hint_diagnostic_selected = {
    fg = c.disabled,
    bg = c.tab_blue_grey,
    bold_italic = true,
  },
  info_selected = {
    fg = c.disabled,
    bg = c.tab_blue_grey,
    sp = c.disabled,
    bold_italic = true,
  },
  info_diagnostic_selected = {
    fg = c.disabled,
    bg = c.tab_blue_grey,
    sp = c.disabled,
    bold_italic = true,
  },
  warning_selected = {
    fg = c.disabled,
    bg = c.tab_blue_grey,
    sp = c.disabled,
    bold_italic = true,
  },
  warning_diagnostic_selected = {
    fg = c.disabled,
    bg = c.tab_blue_grey,
    sp = c.disabled,
    bold_italic = true,
  },
  error_selected = {
    fg = c.disabled,
    bg = c.tab_blue_grey,
    sp = c.disabled,
    bold_italic = true,
  },
  error_diagnostic_selected = {
    fg = c.disabled,
    bg = c.tab_blue_grey,
    sp = c.disabled,
    bold_italic = true,
  },
  indicator_selected = {
    fg = c.disabled,
    bg = c.disabled,
  },
  duplicate_selected = {
    fg = c.duplicate_selected_fg_blue,
    bg = c.tab_blue_grey,
    bold = true,
    italic = true,
  },
  pick_selected = {
    fg = c.disabled,
    bg = c.disabled,
    bold_italic = true,
  },

  -------------------------------------------------------------------------------
  -- Unselected buffer
  -------------------------------------------------------------------------------
  buffer = {
    fg = c.disabled,
    bg = c.none,
  },
  background = {
    fg = c.disabled, -- this is the main foreground of inactive tabs
    bg = c.none, -- this is the main background of inactive tabs
  },
  close_button = {
    fg = c.disabled,
    bg = c.none,
  },
  modified = {
    fg = c.disabled,
    bg = c.none,
  },
  separator = {
    fg = c.black,
    bg = c.none,
  },
  diagnostic = {
    fg = c.disabled,
    bg = c.none,
  },
  hint = {
    fg = c.dark_hint_green,
    bg = c.none,
    bold_italic = true,
  },
  hint_diagnostic = {
    fg = c.dark_hint_green,
    bg = c.none,
    bold_italic = true,
  },
  info = {
    fg = c.dark_info_blue,
    bg = c.none,
    guisp = c.disabled,
  },
  info_diagnostic = {
    fg = c.dark_info_blue,
    bg = c.none,
    guisp = c.disabled,
  },
  warning = {
    fg = c.dark_warn_yellow,
    bg = c.none,
    guisp = c.disabled,
  },
  warning_diagnostic = {
    fg = c.dark_warn_yellow,
    bg = c.none,
    guisp = c.disabled,
  },
  error = {
    fg = c.dark_error_red,
    bg = c.none,
    guisp = c.disabled,
  },
  error_diagnostic = {
    fg = c.dark_error_red,
    bg = c.none,
    guisp = c.disabled,
  },
  duplicate = {
    fg = c.dark_duplicate_fg,
    bg = c.none,
    italic = true,
  },
  pick = {
    fg = c.disabled,
    bg = c.none,
    bold_italic = true,
  },

  -------------------------------------------------------------------------------
  -- Visible (background) buffer
  -------------------------------------------------------------------------------
  buffer_visible = {
    fg = c.disabled,
    bg = c.grey,
  },
  close_button_visible = {
    fg = c.disabled,
    bg = c.grey,
  },
  diagnostic_visible = {
    fg = c.disabled,
    bg = c.grey,
  },
  hint_visible = {
    fg = c.dark_hint_green,
    bg = c.grey,
    bold_italic = true,
  },
  hint_diagnostic_visible = {
    fg = c.dark_hint_green,
    bg = c.grey,
    bold_italic = true,
  },
  info_visible = {
    fg = c.dark_info_blue,
    bg = c.grey,
  },
  info_diagnostic_visible = {
    fg = c.dark_info_blue,
    bg = c.grey,
  },
  warning_visible = {
    fg = c.dark_warn_yellow,
    bg = c.grey,
  },
  warning_diagnostic_visible = {
    fg = c.dark_warn_yellow,
    bg = c.grey,
  },
  error_visible = {
    fg = c.dark_error_red,
    bg = c.grey,
  },
  error_diagnostic_visible = {
    fg = c.dark_error_red,
    bg = c.grey,
  },
  modified_visible = {
    fg = c.disabled,
    bg = c.grey,
  },
  separator_visible = {
    fg = c.black,
    bg = c.grey,
  },
  duplicate_visible = {
    fg = c.dark_duplicate_fg,
    bg = c.grey,
    italic = true,
  },
  pick_visible = {
    fg = c.disabled,
    bg = c.grey,
    bold_italic = true,
  },
}

return highlights
