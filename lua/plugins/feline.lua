local M = {}

-- local settings = {}

M.config = function()
  local status_ok, feline = pcall(require, "feline")
  if not status_ok then
    print "Failed to configure feline"
    return
  end

  feline.setup()
end

return M
