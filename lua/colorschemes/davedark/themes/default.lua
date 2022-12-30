local config = require("user_config")

local c = {
  -- Neutral
  black = "#000000",
  cinder = "#0D1114",
  cinder_light = "#101519",
  mirage = "#141a1f",
  mirage_light = "#151c21",
  dark = "#19232d",
  cloud_burst = "#21284e",
  rhino_dim = "#343e78",
  waikawa_gray = "#5974a5",
  cadet_grey = "#90a4ae",
  rock_blue = "#9faeca",
  pastel_grey = "#cccccc",
  half_dutch_white = "#fff8dc",

  -- Rainbow bright
  light_carmine_pink = "#ed5e6a",
  rose_madder = "#e72333",
  dark_orange = "#ff8c00",
  sand = "#f0c36f",
  test_yellow = "#ffff00",
  rubber_ducky_yellow = "#ffd700",
  spring_green = "#7cf800",
  test_green = "#00ff00",
  test_cyan = "#00ffff",
  jellyfish = "#45c2d3",
  butterfly_blue = "#24adff",
  test_magenta = "#ff00ff",

  -- Rainbow dark
  brownish_orange = "#d27a27",
  crystal_blue = "#54b0fc",
  peacock_blue = "#156799",
  rhino = "#2e4d6b",
  dark_blue_grey = "#20354b",

  -- Rainbow desaturated
  orchid = "#da70d6",
  coral_pink = "#fa8072",
  faded_orange = "#e09956",
  light_moss_green = "#95d16a",
  green_snake = "#73c23b",
  day_sky_blue = "#87cefa",
  light_purple = "#cc6be9",
}

return {
  -- fg
  fg = c.rock_blue,
  fg_text_dim = c.rhino,
  fg_text_dark = c.cinder,

  -- bg
  bg = c.mirage,
  bg_cursorline = c.dark_blue_grey,
  bg_matchparen = c.dark_blue_grey,
  bg_term = c.cinder_light,
  bg_search = c.rhino,
  bg_visual = c.rhino,

  -- borders
  winseparator = c.cinder_light,
  float_border = c.sand,

  -- pmenu
  pmenu_bg = c.mirage,
  pmenu_sel_bg = c.pastel_grey,
  pmenu_scrollbar = c.cinder_light,

  -- folds
  fold_fg = c.waikawa_gray,
  fold_bg = c.cinder_light,

  -- telescope
  telescope_text_sel = c.jellyfish,

  -- bufferline
  bufferline_buf_sel_bg = c.rhino_dim,
  bufferline_buf_vis_bg = c.cloud_burst,
  bufferline_buf_inactive_bg = c.cinder,
  bufferline_buf_sep_fg = config.transparent_background and c.black or c.none,
  bufferline_text_dup_sel = c.butterfly_blue,
  bufferline_text_dup_vis = c.peacock_blue,

  -- statusline
  statusline_bg = c.cinder,
  statusline_tab_bg = c.dark_blue_grey,
  statusline_alt_bg = c.jellyfish,
  statusline_navic_bg = c.dark,

  -- diagnostics
  error = c.rose_madder,
  warn = c.brownish_orange,
  info = c.butterfly_blue,
  hint = c.green_snake,

  -- diff
  diff_add = c.light_moss_green,
  diff_change = c.faded_orange,
  diff_delete = c.light_carmine_pink,
  diff_untracked = c.crystal_blue,

  -- syntax
  attribute = c.faded_orange,
  boolean = c.test_green,
  comment = c.waikawa_gray,
  constant = c.faded_orange,
  exception = c.jellyfish,
  field = c.light_carmine_pink,
  function_hl = c.crystal_blue,
  function_builtin = c.jellyfish,
  keyword = c.light_purple,
  number = c.faded_orange,
  operator = c.jellyfish,
  property = c.rock_blue,
  string = c.light_moss_green,
  tag = c.light_carmine_pink,
  todo = c.rock_blue,
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
  indent_1 = c.rubber_ducky_yellow,
  indent_2 = c.orchid,
  indent_3 = c.day_sky_blue,
  indent_4 = c.coral_pink,
  indent_5 = c.spring_green,
  indent_6 = c.dark_orange,
  indent_7 = c.half_dutch_white,

  -- nvimtree
  nvimtree_bg = c.mirage_light,
  nvimtree_folder = c.cadet_grey,
  nvimtree_folder_name = c.butterfly_blue,
  nvimtree_folder_name_open = c.light_purple,
  nvimtree_special_file = c.faded_orange,

  -- utility
  none = "none",

  -- test
  test_magenta = c.test_magenta,
  test_cyan = c.test_cyan,
  test_green = c.test_green,
  test_yellow = c.test_yellow,
}
