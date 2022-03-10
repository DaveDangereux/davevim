local M = {}

M.config = function()
  vim.g.Illuminate_delay = 1000

  vim.g.Illuminate_ftwhitelist = {
    "lua",
    "vim",
    "python",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
  }
end

return M
