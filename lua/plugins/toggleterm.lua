local M = {}

local settings = {
  size = function(term)
    if term.direction == "horizontal" then
      return 12
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.3
    end
  end,
  open_mapping = "<Leader>/",
  direction = "vertical",
  -- float_opts = {
  --   border = "curved",
  --   highlights = {
  --     border = "ToggleTermBorder",
  --     background = "ToggleTermBg",
  --   }
  -- }
}

M.config = function()
  local status_ok, toggleterm = pcall(require, "toggleterm")
  if not status_ok then
    print "Failed to configure toggleterm"
  end

  toggleterm.setup(settings)
end

return M
