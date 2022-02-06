local M = {}

local settings = {
  stages = "slide",
  icons = {
      ERROR = "",
      WARN = "",
      INFO = "",
      DEBUG = "",
      TRACE = "✎",
  },
}

M.config = function()
  local status_ok, notify = pcall(require, "notify")
  if not status_ok then
    print "Failed to configure notify"
    return
  end

  notify.setup(settings)
  vim.notify = notify
end

return M
