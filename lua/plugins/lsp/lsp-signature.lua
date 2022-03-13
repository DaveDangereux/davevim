local M = {}

local settings = {
  hint_enable = false,
}

M.config = function ()
  local status_ok, lsp_signature = pcall(require, "lsp_signature")
  if not status_ok then
    print ("Failed to configure lsp-signature")
    return
  end

  lsp_signature.setup(settings)
end

return M
