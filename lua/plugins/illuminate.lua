local M = {}

M.config = function()
  vim.cmd("highlight LspReferenceRead gui=bold,underline guifg=#99FF99")
  vim.cmd("highlight LspReferenceWrite gui=bold,underline guifg=#FF9999")
  vim.cmd("highlight LspReferenceText gui=bold,underline guifg=#FFFF99")

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
