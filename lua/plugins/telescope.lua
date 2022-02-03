local M = {}

local settings = {
  defaults = {
    prompt_prefix = "  ", -- alternatively 
    selection_caret = "  ", 
    entry_prefix = "   ",
    dynamic_preview_title = true,
    path_display = { "smart" },
    sorting_strategy = "ascending",
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8
      } 
    },
    mappings = {
      n = {
        ["<C-c>"] = "close"
      }
    }
  },
  pickers = {
    live_grep = {
      only_sort_text = true
    }
  },
  -- extensions = {
  --   bookmarks = {
  --     selected_browser = "chrome"
  --   }
  -- }
}

M.config = function()
  local status_ok, telescope = pcall(require, "telescope")
  if not status_ok then
    print "Failed to load telescope"
  end

  telescope.setup(settings)
  telescope.load_extension("fzf")
  -- telescope.load_extension("bookmarks")
end

return M
