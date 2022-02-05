local M = {}

local settings = {
  options = {
    numbers = "none",
    offsets = {
      { filetype = "NvimTree" }
    }
  }
}

M.config = function()
  local status_ok, bufferline = pcall(require, "bufferline")
  if not status_ok then
    print "Failed to load bufferline"
  end

  bufferline.setup(settings)
end

return M
