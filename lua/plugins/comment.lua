local M = {}

local settings = {
  -- pre_hook = function(ctx)
  --   return require("ts_context_commentstring.internal").calculate_commentstring()
  -- end
}

M.config = function()
  local status_ok, comment = pcall(require, "Comment")
  if not status_ok then
    print "Failed to load Comment"
    return
  end

  comment.setup(settings)
end

return M
