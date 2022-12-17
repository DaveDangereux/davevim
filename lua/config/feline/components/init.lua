local M = {}

M.default = require("config.feline.components.default")
M.vim_mode = require("config.feline.components.vim-mode")
M.git_branch = require("config.feline.components.git-branch")
M.file_info = require("config.feline.components.file-info")
M.git_diff = require("config.feline.components.git-diff")
M.diagnostics = require("config.feline.components.diagnostics")
M.file_type = require("config.feline.components.file-type")
M.file_format = require("config.feline.components.file-format")
M.file_encoding = require("config.feline.components.file-encoding")
M.position = require("config.feline.components.position")
M.line_percentage = require("config.feline.components.line-percentage")
M.inactive_file_info = require("config.feline.components.inactive-file-info")
M.navic = require("config.feline.components.navic")

return M
