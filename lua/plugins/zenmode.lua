local M = {}

local status_ok, zenmode = pcall(require, "zen-mode")
if not status_ok then
  print("Failed to require zen-mode")
  return
end

local settings = {
  window = {
    height = 0.85,
    width = 80,
    options = {
      signcolumn = "no",
      number = false,
      cursorline = false,
    },
  },
  plugins = {
    twilight = { enabled = false },
    gitsigns = { enabled = true },
    tmux = { enabled = false },
    -- kitty = {
    --   enabled = true,
    --   font = "16",
    -- },
  },
  on_open = function()
    vim.cmd("highlight ZenBg guibg=bg")
  end,
}

M.config = function()
  zenmode.setup(settings)
end

return M
