local M = {}

local settings = {
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  }
}

M.config = function()
  local status_ok, gitsigns = pcall(require, "gitsigns")
  if not status_ok then
    print "Failed to configure gitsigns"
    return
  end

  gitsigns.setup(settings)
end

return M
