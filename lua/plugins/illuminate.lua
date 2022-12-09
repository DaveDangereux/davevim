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
  local status_ok, illuminate = pcall(require, "illuminate")
  if not status_ok then
    print "Failed to configure illuminate"
  end

  illuminate.configure(settings)
end

return M
