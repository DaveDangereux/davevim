-------------------------------------------------------------------------------
-- Prepare on_attach
-------------------------------------------------------------------------------

local lsp_keymaps = require("core.keymaps").lsp

local on_attach = function(_, bufnr)
  lsp_keymaps(bufnr)
end

-------------------------------------------------------------------------------
-- Prepare capabilities
-------------------------------------------------------------------------------

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-------------------------------------------------------------------------------
-- Attach on_server_ready function to lsp_installer
--
-- The on_server_ready function takes a server object and calls
-- setup on it, passing in a table with on_attach, capabilities and
-- any server-specific options defined in the configs folder.
--
-- Presently, on_attach simply adds keymaps to the buffer.
-- Meanwhile, without capabilities we don't seem to...
-------------------------------------------------------------------------------

return function()
  local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
  if not status_ok then
    print "Failed to load lsp_installer"
    return
  end

  local on_server_ready = function(server)
    local opts = {
      on_attach = on_attach,
      capabilities = capabilities
    }

    if server.name == "jsonls" then
      local jsonls_opts = require "plugins.lsp.configs.jsonls"
      opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
    end

    if server.name == "sumneko_lua" then
      local sumneko_opts = require "plugins.lsp.configs.sumneko_lua"
      opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
    end

    server:setup(opts)
  end

  lsp_installer.on_server_ready(on_server_ready)
end
