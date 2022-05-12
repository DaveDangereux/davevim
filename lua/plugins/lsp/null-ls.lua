local M = {}

local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
  print("Failed to configure null-ls")
  return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local settings = {
  sources = {
    formatting.stylua,
    formatting.eslint_d,
    formatting.prettier,
    formatting.black,
    diagnostics.eslint_d,
    -- diagnostics.flake8,
    diagnostics.twigcs,
  },
}

M.config = function()
  null_ls.setup(settings)
  vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formatting()' ]])
end

return M
