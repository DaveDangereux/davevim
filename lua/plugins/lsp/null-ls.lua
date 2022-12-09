local M = {}

local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
  print("Failed to configure null-ls")
  return
end

local code_actions = null_ls.builtins.code_actions
local completion = null_ls.builtins.completion
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local settings = {
  sources = {
    code_actions.eslint,
    completion.luasnip.with({
      filetypes = { "lua" },
    }),
    formatting.stylua,
    formatting.eslint,
    -- TODO: Reference a default config for prettier
    formatting.prettier.with({
        disabled_filetypes = { "markdown" }
      }),
    formatting.black,
    formatting.stylelint,
    -- diagnostics.eslint_d, -- same for this
    -- diagnostics.flake8,
    diagnostics.twigcs,
    diagnostics.stylelint,
  },
}

M.config = function()
  null_ls.setup(settings)
  vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formatting()' ]])
end

return M
