local M = {}

local settings = {
  check_ts = true,
  ts_config = {
    lua = { "string" },
    javascript = { "template_string" },
  },
}

M.config = function()
  local status_ok, autopairs = pcall(require, "nvim-autopairs")
  if not status_ok then
    print("Failed to require autopairs")
    return
  end

  autopairs.setup(settings)
end

return M
