local M = {}

local settings = {
  defaults = {
    prompt_prefix = "  ", -- alternatively 
    selection_caret = "  ",
    entry_prefix = "   ",
    dynamic_preview_title = true,
    results_title = "",
    path_display = { "smart" },
    sorting_strategy = "ascending",
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    layout_strategy = "vertical",
    layout_config = {
      horizontal = {
        width = 0.85,
        height = 0.85,
        prompt_position = "top",
        preview_width = 0.55,
      },
      vertical = {
        height = 0.85,
        mirror = true,
        prompt_position = "top",
      },
    },
    mappings = {
      i = {
        ["<C-c>"] = "close",
        ["<C-w>"] = "close",
        ["<C-v>"] = "select_vertical",
        ["<C-h>"] = "select_horizontal",
      },
      n = {
        ["<C-c>"] = "close",
        ["<C-w>"] = "close",
        ["<Leader>c"] = "close",
        ["q"] = "close",
        ["v"] = "select_vertical",
        ["<C-v>"] = "select_vertical",
        ["<Leader>v"] = "select_vertical",
        ["h"] = "select_horizontal",
        ["<C-h>"] = "select_horizontal",
        ["<Leader>h"] = "select_horizontal",
      },
    },
  },
  pickers = {
    live_grep = {
      only_sort_text = true,
    },
  },
}

M.config = function()
  local status_ok, telescope = pcall(require, "telescope")
  if not status_ok then
    print("Failed to require telescope")
  end

  telescope.setup(settings)
  telescope.load_extension("fzf")
  telescope.load_extension("notify")
  telescope.load_extension("projects")
end

return M
