local M = {}

local lsp_installer = require("plugins.lsp.lsp-installer")
local diagnostic_config = require("plugins.lsp.diagnostic-config")

M.config = function()
  lsp_installer()
  diagnostic_config()
end

return M
