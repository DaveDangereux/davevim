-------------------------------------------------------------------------------
-- Setting up on_server_ready callback for lsp_installer
-------------------------------------------------------------------------------
-- lsp_installer takes an on_server_ready callback that calls setup
-- on each language server when it is available and passes in some general
-- options and options specific to the particular server being setup.
--
-- These options include on_attach, a callback that is executed when
-- a server is attached to a buffer, which provides some buffer-specific
-- settings.
--
-- The following is executed whenever a server is loaded:
--
-- lsp_installer.on_server_ready(server)
--   server.setup({
--     on_attach = function (server, bufnr)
--       lsp_highlight_document(server)
--       lsp_keymaps(bufnr)
--     end,
--     capabilities = capabilities,
--     ... settings, setup, other server-specific options etc.
--   })
-- end
-------------------------------------------------------------------------------

-- Prepare on_attach
local lsp_keymaps = require("core.keymaps").lsp

local on_attach = function(server, bufnr)
    -- By disabling the formatting functionality of the server, we avoid having
    -- to select between multiple formatting options, essentially defaulting to
    -- our preferred formatter (prettier via null-ls in this case)

  if server.name == "html" or server.name == "tsserver" then
    server.server_capabilities.document_formatting = false
  end

  if server.server_capabilities.documentSymbolProvider then
    local navic = require('nvim-navic')
    navic.attach(server, bufnr)
  end

  if server.server_capabilities.document_highlight then
    local status_ok, illuminate = pcall(require, "illuminate")
    if not status_ok then
      print("Failed to load illuminate in lsp-installer.lua")
      return
    end
    illuminate.on_attach(server)
  end

  lsp_keymaps(bufnr)
end

-- Prepare capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Prepare on_server_ready with on_attach and capabilities
local on_server_ready = function(server)
  local opts = {
    on_attach = on_attach,
    capabilities = capabilities,
  }

  if server.name == "jsonls" then
    local jsonls_opts = require("plugins.lsp.configs.jsonls")
    opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
  end

  if server.name == "sumneko_lua" then
    local sumneko_opts = require("plugins.lsp.configs.sumneko_lua")
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  if server.name == "emmet_ls" then
    local emmet_ls_opts = require("plugins.lsp.configs.emmet_ls")
    opts = vim.tbl_deep_extend("force", emmet_ls_opts, opts)
  end

  server:setup(opts)
end

-- Attach on_server_ready function to lsp_installer
return function()
  local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
  if not status_ok then
    print("Failed to load lsp_installer")
    return
  end

  lsp_installer.on_server_ready(on_server_ready)
end
