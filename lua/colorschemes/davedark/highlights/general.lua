local config = require("user_config")

return function(theme_variant)
  local c = require("colorschemes.davedark.themes.default")

  if theme_variant then
    c = require("colorschemes.davedark.themes." .. theme_variant)
  end

  return {
    ---------------------------------------------------------
    -- UI
    ---------------------------------------------------------
    CursorLine = {},
    Directory = { fg = c.nvimtree_folder_name },
    LineNr = { fg = c.fg_dim },
    ErrorMsg = { fg = c.error, bg = config.transparent_background and c.none or c.bg, bold = true },
    FoldColumn = { fg = c.fg_dim, bg = config.transparent_background and c.none or c.bg },
    Folded = { fg = c.comment, bg = c.bg_fold, italic = true },
    ModeMsg = { fg = c.fg },
    NonText = { fg = c.comment }, -- remove style?
    Normal = { fg = c.fg, bg = config.transparent_background and c.none or c.bg },
    Search = { fg = c.none, bg = c.bg_visual, bold = true },
    SignColumn = { bg = config.transparent_background and c.none or c.bg },
    StatusLine = nil, -- these seem to cause carets to appear when set
    StatusLineNC = nil, -- these seem to cause carets to appear when set
    TabLineSel = { fg = c.test_fg, bg = c.test_bg },
    Visual = { bg = c.bg_visual },
    WinSeparator = {
      fg = config.transparent_background and c.winseparator or c.bg,
    },

    ---------------------------------------------------------
    -- Syntax highlighting
    ---------------------------------------------------------
    Boolean = { fg = c.boolean },
    Character = { link = "Constant" },
    Comment = { fg = c.comment, italic = true },
    Constant = { fg = c.constant },
    Debug = { link = "Special" },
    Define = { link = "PreProc" },
    Delimiter = { fg = c.none, bg = c.none }, -- seems to highlight parentheses under cursor
    Error = { fg = c.error, bg = c.none, sp = c.error }, -- may want to be white with underline
    Exception = { link = "Statement" },
    Float = { link = "Number" },
    Function = { fg = c.function_hl },
    Identifier = { fg = c.none },
    Include = { fg = c.keyword },
    Keyword = { fg = c.keyword },
    Label = { fg = c.tag },
    Macro = { fg = c.none },
    MatchParen = { bg = c.bg_visual, bold = true },
    Number = { fg = c.number },
    Operator = { link = "Statement" },
    PreProc = { fg = c.number },
    Repeat = { link = "Statement" },
    Special = { fg = c.fg },
    SpecialChar = { link = "Special" },
    Statement = { fg = c.none },
    StorageClass = { link = "Type" },
    String = { fg = c.string },
    Structure = { link = "Type" },
    Tag = { fg = c.tag },
    Title = { fg = c.fg },
    Todo = { fg = c.none, bg = config.transparent_background and c.none or c.bg }, -- doesn't affect the fg?
    Type = { fg = c.type },
    TypeDef = { link = "Type" },
    Underlined = { fg = c.function_hl, bold = true, underline = true },

    ---------------------------------------------------------
    -- Diff
    ---------------------------------------------------------
    DiffAdd = { fg = c.diff_add, bg = config.transparent_background and c.none or c.bg }, -- does this do anything?
    DiffChange = { fg = c.diff_change, bg = config.transparent_background and c.none or c.bg },
    DiffDelete = { fg = c.diff_delete, bg = config.transparent_background and c.none or c.bg },
    DiffAdded = { fg = c.diff_add },
    DiffRemoved = { fg = c.diff_delete },
    DiffFile = { fg = c.test_fg, bg = c.test_bg },
    DiffIndexLine = { fg = c.test_fg, bg = c.test_bg },
    DiffText = { fg = c.diff_delete },

    ---------------------------------------------------------
    -- Popup menu
    ---------------------------------------------------------
    Pmenu = { fg = c.fg, bg = config.pmenu_transparent_background and c.none or c.pmenu_bg },

    ---------------------------------------------------------
    -- Float
    ---------------------------------------------------------
    FloatBorder = { fg = c.float_border, bg = c.none },
  }
end
