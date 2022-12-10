local M = {}

local lsp_installer = require("config.lsp.lsp-installer")
local diagnostic_config = require("config.lsp.diagnostic-config")

M.config = function()
  lsp_installer()
  diagnostic_config()
end

return M
