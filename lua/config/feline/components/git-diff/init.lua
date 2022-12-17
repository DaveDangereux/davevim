local M = {}

M.added = require("config.feline.components.git-diff.added")
M.changed = require("config.feline.components.git-diff.changed")
M.removed = require("config.feline.components.git-diff.removed")

return M
