local palette = {
  selected_bg = "#343E78",
  unselected_bg = "none",
  visible_bg = "#303030",
  dark_error_fg = "#762920",
  dark_warn_fg = "#775C1C",
  dark_hint_fg = "#515D2F",
  dark_info_fg = "#405453",
  duplicate_fg = "#24ADFF",
  dark_duplicate_fg = "#156799",
  fill_fg = { attribute = "bg", highlight = "Normal" },
  separator_fg = "#000000",
  none = "none",
  test_fg = "#FF00FF",
  test_bg = "#00FF00",
  test_sp = "#FFFF00",
  test_alt = "#00FFFF",
  disabled = nil,
}

-- This diagnostic palette can show us whether we've definitely
-- got control of all the bufferline highlights or not.
-- local palette = {
--   selected_bg = "#FF0000",
--   unselected_bg = "#FF0000",
--   visible_bg = "#FF0000",
--   fill_fg = "#FF0000",
--   black = "#FF0000",
--   none = "#FF0000",
--   test_fg = "#FF0000",
--   test_bg = "#FF0000",
--   test_sg = "#FF0000",
--   test_alt = "#FF0000",
--   disabled = "#FF0000",
-- }

local text_style = {
  bold_italic = "bold,italic",
  italic = "italic",
}

local highlights = {
  -------------------------------------------------------------------------------
  -- General
  -------------------------------------------------------------------------------

  fill = {
    fg = palette.disabled,
    bg = palette.disabled,
  },

  -------------------------------------------------------------------------------
  -- Tabs
  -------------------------------------------------------------------------------

  tab_selected = {
    fg = palette.disabled, -- tabline_sel_bg
    bg = palette.selected_bg,
  },
  tab_close = {
    fg = palette.test_fg,
    bg = palette.test_bg,
  },
  tab = {
    fg = palette.disabled,
    bg = palette.none,
  },

  -------------------------------------------------------------------------------
  -- Selected buffer
  -------------------------------------------------------------------------------

  buffer_selected = {
    fg = palette.disabled, -- normal_fg,
    bg = palette.selected_bg,
    bold_italic = true,
  },
  close_button_selected = {
    fg = palette.disabled,
    bg = palette.selected_bg,
  },
  modified_selected = {
    fg = palette.disabled,
    bg = palette.selected_bg,
  },
  separator_selected = {
    fg = palette.separator_fg,
    bg = palette.selected_bg,
  },
  diagnostic_selected = {
    fg = palette.disabled,
    bg = palette.selected_bg,
    bold_italic = true,
  },
  hint_selected = {
    fg = palette.disabled,
    bg = palette.selected_bg,
    bold_italic = true,
  },
  hint_diagnostic_selected = {
    fg = palette.disabled,
    bg = palette.selected_bg,
    bold_italic = true,
  },
  info_selected = {
    fg = palette.disabled,
    bg = palette.selected_bg,
    sp = palette.disabled,
    bold_italic = true,
  },
  info_diagnostic_selected = {
    fg = palette.disabled,
    bg = palette.selected_bg,
    sp = palette.disabled,
    bold_italic = true,
  },
  warning_selected = {
    fg = palette.disabled,
    bg = palette.selected_bg,
    sp = palette.disabled,
    bold_italic = true,
  },
  warning_diagnostic_selected = {
    fg = palette.disabled,
    bg = palette.selected_bg,
    sp = palette.disabled, -- warning_diagnostic_fg
    bold_italic = true,
  },
  error_selected = {
    fg = palette.disabled,
    bg = palette.selected_bg,
    sp = palette.disabled,
    bold_italic = true,
  },
  error_diagnostic_selected = {
    fg = palette.disabled,
    bg = palette.selected_bg,
    sp = palette.disabled,
    bold_italic = true,
  },
  indicator_selected = {
    fg = palette.disabled,
    bg = palette.disabled,
  },
  duplicate_selected = {
    fg = palette.duplicate_fg,
    bg = palette.selected_bg,
    italic = true,
  },
  pick_selected = {
    fg = palette.disabled,
    bg = palette.disabled,
    bold_italic = true,
  },

  -------------------------------------------------------------------------------
  -- Unselected buffer
  -------------------------------------------------------------------------------

  buffer = {
    fg = palette.disabled,
    bg = palette.unselected_bg,
  },
  background = {
    fg = palette.disabled, -- this is the main foreground of inactive tabs
    bg = palette.unselected_bg, -- this is the main background of inactive tabs
  },
  close_button = {
    fg = palette.disabled,
    bg = palette.unselected_bg,
  },
  modified = {
    fg = palette.disabled,
    bg = palette.unselected_bg,
  },
  separator = {
    fg = palette.separator_fg,
    bg = palette.unselected_bg,
  },
  diagnostic = {
    fg = palette.disabled,
    bg = palette.unselected_bg,
  },
  hint = {
    fg = palette.dark_hint_fg,
    bg = palette.unselected_bg,
    bold_italic = true,
  },
  hint_diagnostic = {
    fg = palette.dark_hint_fg,
    bg = palette.unselected_bg,
    bold_italic = true,
  },
  info = {
    fg = palette.dark_info_fg,
    bg = palette.unselected_bg,
    guisp = palette.disabled,
  },
  info_diagnostic = {
    fg = palette.dark_info_fg,
    bg = palette.unselected_bg,
    guisp = palette.disabled,
  },
  warning = {
    fg = palette.dark_warn_fg,
    bg = palette.unselected_bg,
    guisp = palette.disabled,
  },
  warning_diagnostic = {
    fg = palette.dark_warn_fg,
    bg = palette.unselected_bg,
    guisp = palette.disabled,
  },
  error = {
    fg = palette.dark_error_fg,
    bg = palette.unselected_bg,
    guisp = palette.disabled,
  },
  error_diagnostic = {
    fg = palette.dark_error_fg,
    bg = palette.unselected_bg,
    guisp = palette.disabled,
  },
  duplicate = {
    fg = palette.dark_duplicate_fg,
    bg = palette.unselected_bg,
    italic = true,
  },
  pick = {
    fg = palette.disabled,
    bg = palette.unselected_bg,
    bold_italic = true,
  },

  -------------------------------------------------------------------------------
  -- Visible (background) buffer
  -------------------------------------------------------------------------------

  buffer_visible = {
    fg = palette.disabled,
    bg = palette.visible_bg,
  },
  close_button_visible = {
    fg = palette.disabled,
    bg = palette.visible_bg,
  },
  diagnostic_visible = {
    fg = palette.disabled,
    bg = palette.visible_bg,
  },
  hint_visible = {
    fg = palette.dark_hint_fg,
    bg = palette.visible_bg,
    bold_italic = true,
  },
  hint_diagnostic_visible = {
    fg = palette.dark_hint_fg,
    bg = palette.visible_bg,
    bold_italic = true,
  },
  info_visible = {
    fg = palette.dark_info_fg,
    bg = palette.visible_bg,
  },
  info_diagnostic_visible = {
    fg = palette.dark_info_fg,
    bg = palette.visible_bg,
  },
  warning_visible = {
    fg = palette.dark_warn_fg,
    bg = palette.visible_bg,
  },
  warning_diagnostic_visible = {
    fg = palette.dark_warn_fg,
    bg = palette.visible_bg,
  },
  error_visible = {
    fg = palette.dark_error_fg,
    bg = palette.visible_bg,
  },
  error_diagnostic_visible = {
    fg = palette.dark_error_fg,
    bg = palette.visible_bg,
  },
  modified_visible = {
    fg = palette.disabled,
    bg = palette.visible_bg,
  },
  separator_visible = {
    fg = palette.separator_fg,
    bg = palette.visible_bg,
  },
  duplicate_visible = {
    fg = palette.dark_duplicate_fg,
    bg = palette.visible_bg,
    italic = true,
  },
  pick_visible = {
    fg = palette.disabled,
    bg = palette.visible_bg,
    bold_italic = true,
  },
}

return highlights
