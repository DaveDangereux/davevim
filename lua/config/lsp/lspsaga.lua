local M = {}

local settings = {
  border_style = "rounded",
  preview_lines_above = 2,
  max_preview_lines = 30,
  lightbulb = {
    enable = false,
    sign = false,
    virtual_text = false,
  },
  finder_action_keys = {
    vsplit = "<Leader>v",
  },
  definition_action_keys = {
    edit = "<CR>",
    vsplit = "<Leader>v",
  },
  show_outline = {
    win_position = "right",
    win_width = 60,
  },
  symbol_in_winbar = {
    enable = false,
  },
}

M.config = function()
  local status_ok, lspsaga = pcall(require, "lspsaga")
  if not status_ok then
    print("Failed to require lspsaga")
    return
  end

  lspsaga.setup(settings)
end

return M
