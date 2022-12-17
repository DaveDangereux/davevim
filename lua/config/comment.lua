local M = {}

local settings = {
  pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
}

M.config = function()
  local status_ok, comment = pcall(require, "Comment")
  if not status_ok then
    print("Failed to require Comment")
    return
  end

  comment.setup(settings)
end

return M