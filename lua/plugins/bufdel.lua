local M = {}

local settings = {
  file = true
}

M.config = function()
  status_ok, bufdel = pcall(require, "bufdel")
  if not status_ok then
    print "Failed to load bufdel"
    return
  end

  bufdel.setup(settings)
end

return M
