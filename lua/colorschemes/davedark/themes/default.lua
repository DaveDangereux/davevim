local config = require("user_config")

local c = {
  -- Neutral
  black = "#000000",
  cinder = "#0D1114",
  mirage = "#141a1f",
  cloud_burst = "#21284e",
  rhino = "#2e4d6b",
  waikawa_gray = "#5974a5",
  rock_blue = "#9faeca",
  white = "#ffffff",

  -- Rainbow
  light_carmine_pink = "#ed5e6a",
  faded_orange = "#e09956",
  sand = "#f0c36f",
  light_moss_green = "#95d16a",
  jellyfish = "#45c2d3",
  crystal_blue = "#54b0fc",
  light_purple = "#cc6be9",

  -- Test colours
  green = "#00ff00",
  magenta = "#ff00ff",
}

return {
  -- fg
  fg = c.rock_blue,
  fg_dim = c.rhino,
  fg_dark = c.cinder,

  -- bg
  bg = c.mirage,
  bg_visual = c.rhino,
  bg_fold = c.cinder,

  -- borders
  winseparator = c.cinder,
  float_border = c.sand,

  -- pmenu
  pmenu_bg = c.mirage,
  pmenu_scrollbar = c.cinder,

  -- telescope
  telescope_text_sel = c.jellyfish,

  -- bufferline
  bufferline_bg_buf_sel = c.rhino,
  bufferline_bg_buf_vis = c.rhino,
  bufferline_bg_buf_inactive = c.cinder,
  bufferline_fg_buf_sep = config.transparent_background and c.black or c.none,

  -- statusline
  statusline_bg = c.cinder,
  statusline_bg_tab = c.cloud_burst,
  statusline_bg_alt = c.jellyfish,

  -- diagnostics
  error = c.light_carmine_pink,
  warn = c.faded_orange,
  info = c.crystal_blue,
  hint = c.light_moss_green,

  -- diff
  diff_add = c.light_moss_green,
  diff_change = c.faded_orange,
  diff_delete = c.light_carmine_pink,
  diff_untracked = c.crystal_blue,

  -- syntax
  attribute = c.faded_orange,
  boolean = c.faded_orange,
  comment = c.waikawa_gray,
  constant = c.faded_orange,
  exception = c.jellyfish,
  field = c.light_carmine_pink,
  function_hl = c.crystal_blue,
  function_builtin = c.jellyfish,
  keyword = c.light_purple,
  number = c.faded_orange,
  operator = c.jellyfish,
  parameter = c.fg,
  property = c.rock_blue,
  string = c.light_moss_green,
  tag = c.light_carmine_pink,
  type = c.sand,
  type_builtin = c.jellyfish,
  variable = c.light_carmine_pink,

  -- markdown
  bold = c.faded_orange,
  italic = c.light_purple,
  link = c.jellyfish,

  -- icons
  file = c.crystal_blue,

  -- indents and brackets
  indent = c.mirage,
  indent_1 = c.sand,
  indent_2 = c.light_purple,
  indent_3 = c.crystal_blue,
  indent_4 = c.light_carmine_pink,
  indent_5 = c.light_moss_green,
  indent_6 = c.faded_orange,
  indent_7 = c.white,

  -- nvimtree
  nvimtree_file_open = c.light_moss_green,
  nvimtree_folder_name = c.crystal_blue,
  nvimtree_folder_name_open = c.faded_orange,
  nvimtree_special_file = c.faded_orange,

  -- illuminate
  illuminate_text = c.sand,
  illuminate_read = c.light_moss_green,
  illuminate_write = c.light_carmine_pink,

  -- utility
  none = "none",

  -- test
  test_fg = c.magenta,
  test_bg = c.green,
}
