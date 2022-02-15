local M = {}

M.error = require("plugins.feline.components.diagnostics.error")
M.warn = require("plugins.feline.components.diagnostics.warn")
M.info = require("plugins.feline.components.diagnostics.info")
M.hint = require("plugins.feline.components.diagnostics.hint")

return M
