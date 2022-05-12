local M = {}

local status_ok, zenmode = pcall(require, "zen-mode")
if not status_ok then
  print("Failed to load zen-mode")
  return
end

local settings = {
  window = {
    height = 0.7,
    width = 0.55,
    options = {
      number = true,
      cursorline = false,
    },
  },
  plugins = {
    twilight = { enabled = false },
    tmux = { enabled = true },
    kitty = {
      enabled = true,
      font = "18",
    },
  },
  on_open = function()
    vim.cmd("highlight ZenBg guibg=bg")
  end,
}

M.config = function()
  zenmode.setup(settings)
end

return M
