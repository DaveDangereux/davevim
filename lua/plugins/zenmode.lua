local M = {}

local status_ok, zenmode = pcall(require, "zen-mode")
if not status_ok then
  print("Failed to load zen-mode")
  return
end

local settings = {
  window = {
    height = 0.9, -- height of the Zen window
    width = 0.55, -- width of the Zen window
    options = {
      signcolumn = "no", -- disable sign column
      number = true, -- disable number column
      cursorline = false,                  -- disable cursor line
    },
  },
  plugins = {
    tmux = { enabled = true },
  },
  on_open = function()
    vim.cmd("highlight ZenBg guibg=bg")
  end,
}

M.config = function()
  zenmode.setup(settings)
end

return M
