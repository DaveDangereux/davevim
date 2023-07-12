local M = {}

local settings = {
  use_treesitter = true,
  buftype_exclude = {
    "terminal",
    "nofile",
  },
  filetype_exclude = {
    "NvimTree",
    "alpha",
    "qf",
    "toggleterm",
    -- "help",
    -- "dashboard",
    -- "lspinfo",
    -- "packer",
    -- "Trouble",
    -- "checkhealth",
  },
  char = "▏",
  char_highlight_list = {
    "IndentBlanklineIndent",
  },
  show_current_context = true,
  -- show_current_context_start = true,
  context_char = "▏",
  context_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
    "IndentBlanklineIndent7",
  },
}

M.config = function()
  local status_ok, indent_blankline = pcall(require, "indent_blankline")
  if not status_ok then
    print("Failed to require indent_blankline")
  end

  indent_blankline.setup(settings)
end

return M
