local M = {}

M.error = require("config.feline.components.diagnostics.error")
M.warn = require("config.feline.components.diagnostics.warn")
M.info = require("config.feline.components.diagnostics.info")
M.hint = require("config.feline.components.diagnostics.hint")

return M
