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
  italic = "italic"
}

local highlights = {
-------------------------------------------------------------------------------
-- General
-------------------------------------------------------------------------------

  fill = {
      guifg = palette.disabled,
      guibg = palette.disabled,
  },

-------------------------------------------------------------------------------
-- Tabs
-------------------------------------------------------------------------------

  tab_selected = {
      guifg = palette.disabled, -- tabline_sel_bg
      guibg = palette.selected_bg,
  },
  tab_close = {
      guifg = palette.test_fg,
      guibg = palette.test_bg,
  },
  tab = {
      guifg = palette.disabled,
      guibg = palette.none,
  },

-------------------------------------------------------------------------------
-- Selected buffer
-------------------------------------------------------------------------------

  buffer_selected = {
      guifg = palette.disabled, -- normal_fg,
      guibg = palette.selected_bg,
      gui = text_style.bold_italic
  },
  close_button_selected = {
      guifg = palette.disabled,
      guibg = palette.selected_bg
  },
  modified_selected = {
      guifg = palette.disabled,
      guibg = palette.selected_bg,
  },
  separator_selected = {
      guifg = palette.separator_fg,
      guibg = palette.selected_bg,
  },
  diagnostic_selected = {
      guifg = palette.disabled,
      guibg = palette.selected_bg,
      gui = text_style.bold_italic
  },
  hint_selected = {
    guifg = palette.disabled,
    guibg = palette.selected_bg,
    gui = text_style.bold_italic
  },
  hint_diagnostic_selected = {
    guifg = palette.disabled,
    guibg = palette.selected_bg,
    gui = text_style.bold_italic
  },
  info_selected = {
      guifg = palette.disabled,
      guibg = palette.selected_bg,
      guisp = palette.disabled,
      gui = text_style.bold_italic,
  },
  info_diagnostic_selected = {
      guifg = palette.disabled,
      guibg = palette.selected_bg,
      guisp = palette.disabled,
      gui = text_style.bold_italic,
  },
  warning_selected = {
      guifg = palette.disabled,
      guibg = palette.selected_bg,
      guisp = palette.disabled,
      gui = text_style.bold_italic,
  },
  warning_diagnostic_selected = {
      guifg = palette.disabled,
      guibg = palette.selected_bg,
      guisp = palette.disabled, -- warning_diagnostic_fg
      gui = text_style.bold_italic,
  },
  error_selected = {
      guifg = palette.disabled,
      guibg = palette.selected_bg,
      guisp = palette.disabled,
      gui = text_style.bold_italic,
  },
  error_diagnostic_selected = {
      guifg = palette.disabled,
      guibg = palette.selected_bg,
      guisp = palette.disabled,
      gui = text_style.bold_italic,
  },
  indicator_selected = {
      guifg = palette.disabled,
      guibg = palette.disabled,
  },
  duplicate_selected = {
      guifg = palette.duplicate_fg,
      guibg = palette.selected_bg,
      gui = text_style.italic,
  },
  pick_selected = {
      guifg = palette.disabled,
      guibg = palette.disabled,
      gui = text_style.bold_italic
  },

-------------------------------------------------------------------------------
-- Unselected buffer
-------------------------------------------------------------------------------

  buffer = {
    guifg = palette.disabled,
    guibg = palette.unselected_bg,
  },
  background = {
      guifg = palette.disabled,      -- this is the main foreground of inactive tabs
      guibg = palette.unselected_bg, -- this is the main background of inactive tabs
  },
  close_button = {
      guifg = palette.disabled,
      guibg = palette.unselected_bg,
  },
  modified = {
      guifg = palette.disabled,
      guibg = palette.unselected_bg,
  },
  separator = {
      guifg = palette.separator_fg,
      guibg = palette.unselected_bg,
  },
  diagnostic = {
      guifg = palette.disabled,
      guibg = palette.unselected_bg,
  },
  hint = {
    guifg = palette.dark_hint_fg,
    guibg = palette.unselected_bg,
    gui = text_style.bold_italic
  },
  hint_diagnostic = {
    guifg = palette.dark_hint_fg,
    guibg = palette.unselected_bg,
    gui = text_style.bold_italic
  },
  info = {
      guifg = palette.dark_info_fg,
      guibg = palette.unselected_bg,
      guisp = palette.disabled,
  },
  info_diagnostic = {
      guifg = palette.dark_info_fg,
      guibg = palette.unselected_bg,
      guisp = palette.disabled,
  },
  warning = {
      guifg = palette.dark_warn_fg,
      guibg = palette.unselected_bg,
      guisp = palette.disabled,
  },
  warning_diagnostic = {
      guifg = palette.dark_warn_fg,
      guibg = palette.unselected_bg,
      guisp = palette.disabled,
  },
  error = {
      guifg = palette.dark_error_fg,
      guibg = palette.unselected_bg,
      guisp = palette.disabled
  },
  error_diagnostic = {
      guifg = palette.dark_error_fg,
      guibg = palette.unselected_bg,
      guisp = palette.disabled
  },
  duplicate = {
      guifg = palette.dark_duplicate_fg,
      guibg = palette.unselected_bg,
      gui = text_style.italic,
  },
  pick = {
      guifg = palette.disabled,
      guibg = palette.unselected_bg,
      gui = text_style.bold_italic
  },

-------------------------------------------------------------------------------
-- Visible (background) buffer
-------------------------------------------------------------------------------

  buffer_visible = {
      guifg = palette.disabled,
      guibg = palette.visible_bg,
  },
  close_button_visible = {
      guifg = palette.disabled,
      guibg = palette.visible_bg,
  },
  diagnostic_visible = {
      guifg = palette.disabled,
      guibg = palette.visible_bg,
  },
  hint_visible = {
    guifg = palette.dark_hint_fg,
    guibg = palette.visible_bg,
    gui = text_style.bold_italic
  },
  hint_diagnostic_visible = {
    guifg = palette.dark_hint_fg,
    guibg = palette.visible_bg,
    gui = text_style.bold_italic
  },
  info_visible = {
      guifg = palette.dark_info_fg,
      guibg = palette.visible_bg,
  },
  info_diagnostic_visible = {
      guifg = palette.dark_info_fg,
      guibg = palette.visible_bg,
  },
  warning_visible = {
      guifg = palette.dark_warn_fg,
      guibg = palette.visible_bg,
  },
  warning_diagnostic_visible = {
      guifg = palette.dark_warn_fg,
      guibg = palette.visible_bg,
  },
  error_visible = {
      guifg = palette.dark_error_fg,
      guibg = palette.visible_bg,
  },
  error_diagnostic_visible = {
      guifg = palette.dark_error_fg,
      guibg = palette.visible_bg,
  },
  modified_visible = {
      guifg = palette.disabled,
      guibg = palette.visible_bg,
  },
  separator_visible = {
      guifg = palette.separator_fg,
      guibg = palette.visible_bg,
  },
  duplicate_visible = {
      guifg = palette.dark_duplicate_fg,
      guibg = palette.visible_bg,
      gui = text_style.italic,
  },
  pick_visible = {
      guifg = palette.disabled,
      guibg = palette.visible_bg,
      gui = text_style.bold_italic
  },
}

return highlights
