local M = {}

local settings = {
  action_keys = {
    close = "<Leader>c",
    open_vsplit = { "<Leader>v" },
    open_split = { "<Leader>h" },
    open_tab = { "<CA-t>" },
  }
}

M.config = function ()
  local status_ok, trouble = pcall(require, "trouble")
  if not status_ok then
    print "Failed to configure trouble"
    return
  end

  trouble.setup(settings)
end

return M
