local M = {}

local settings = {
  open_mapping = "<Leader>`",
  direction = "float",
  float_opts = {
    border = "curved",
    highlights = {
      border = "ToggleTermBorder",
      background = "ToggleTermBg",
    }
  }
}

M.config = function()
  local status_ok, toggleterm = pcall(require, "toggleterm")
  if not status_ok then
    print "Failed to configure toggleterm"
  end

  toggleterm.setup(settings)
end

return M
