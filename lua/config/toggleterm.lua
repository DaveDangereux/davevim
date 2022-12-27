local M = {}

local config = require("user_config")

local settings = {
  size = function(term)
    if term.direction == "horizontal" then
      return 12
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.33
    end
  end,
  highlights = {
    FloatBorder = {
      link = "FloatBorder",
    },
  },
  shade_terminals = false,
  -- open_mapping = "<Leader>#",
  direction = "vertical",
  -- direction = "float",
  float_opts = {
    border = "curved",
  },
}

M.config = function()
  local status_ok, toggleterm = pcall(require, "toggleterm")
  if not status_ok then
    print("Failed to require toggleterm")
  end

  toggleterm.setup(settings)
end

return M
