local M = {}

M.added = require("plugins.feline.components.git-diff.added")
M.changed = require("plugins.feline.components.git-diff.changed")
M.removed = require("plugins.feline.components.git-diff.removed")

return M
