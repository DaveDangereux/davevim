local lsp_keymaps = require("core.keymaps").lsp

local on_attach = function(_, bufnr)
  lsp_keymaps(bufnr)
end

return function()
  local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
  if not status_ok then
    print "Failed to load lsp_installer"
    return
  end

  -- Register a handler that will be called for each installed server
  -- when it's ready (i.e. when installation is finished or if the server
  -- is already installed).
  local on_server_ready = function(server)
    local opts = {
      on_attach = on_attach
    }

    if server.name == "sumneko_lua" then
      local sumneko_opts = require "plugins.lsp.configs.sumneko_lua"
      opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
    end

    server:setup(opts)
  end
  lsp_installer.on_server_ready(on_server_ready)
end
