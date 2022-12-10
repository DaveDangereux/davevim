local M = {}

local settings = {
  providers = {
    'lsp',
    'treesitter',
    'regex',
  },
  delay = 1000,
  filetypes_denylist = {
    'markdown',
    'NvimTree',
  },
  filetypes_allowlist = {
    "lua",
    "vim",
    "python",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
  },
  under_cursor = true,
}

M.config = function()
  require("illuminate").configure(settings)
end

return M
