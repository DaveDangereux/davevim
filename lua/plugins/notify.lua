return {
  "rcarriga/nvim-notify",
  config = function()
    local settings = {
      stages = "slide",
      icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = "✎",
      },
    }

    local notify = require("notify")
    notify.setup(settings)
    vim.notify = notify
  end,
}
