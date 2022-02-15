local M = {}

M.default = require("plugins.feline.components.default")
M.vim_mode = require("plugins.feline.components.vim-mode")
M.git_branch = require("plugins.feline.components.git-branch")
M.file_info = require("plugins.feline.components.file-info")
M.gps = require("plugins.feline.components.gps")
M.git_diff = require("plugins.feline.components.git-diff")
M.diagnostics = require("plugins.feline.components.diagnostics")
M.file_type = require("plugins.feline.components.file-type")
M.file_format = require("plugins.feline.components.file-format")
M.file_encoding = require("plugins.feline.components.file-encoding")
M.position = require("plugins.feline.components.position")
M.line_percentage = require("plugins.feline.components.line-percentage")
M.inactive_file_info = require("plugins.feline.components.inactive-file-info")

return M
