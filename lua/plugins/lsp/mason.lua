local M = {}

M.config = function()
  -- Protected calls
  local mason_status_ok, mason = pcall(require, "mason")
  if not mason_status_ok then
    print("Failed to require mason")
    return
  end

  local mason_lspconfig_status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
  if not mason_lspconfig_status_ok then
    print("Failed to require mason-lspconfig")
    return
  end

  local mason_null_ls_status_ok, mason_null_ls = pcall(require, "mason-null-ls")
  if not mason_null_ls_status_ok then
    print("Failed to require mason-null-ls")
    return
  end

  local cmp_nvim_lsp_status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
  if not cmp_nvim_lsp_status_ok then
    print("Failed to require cmp_nvim_lsp")
    return
  end

  local typescript_status_ok, typescript = pcall(require, "typescript")
  if not typescript_status_ok then
    return
  end

  local on_attach = function(client, bufnr)
    if client.server_capabilities.documentSymbolProvider then
      require("nvim-navic").attach(client, bufnr)
    end

    if client.server_capabilities.document_highlight then
      require("illuminate").on_attach(client)
    end

    -- Load custom keymaps for the buffer
    require("core.keymaps").lsp(bufnr)

    -- TODO: Load custom keymaps for TypeScript plugin
    -- if client.name == "tsserver" then
    -- end
  end

  local capabilities = cmp_nvim_lsp.default_capabilities()

  mason.setup()
  mason_lspconfig.setup({ automatic_installation = true })
  mason_null_ls.setup({ automatic_installation = true })
  require("plugins.lsp.diagnostic-config")()

  mason_lspconfig.setup_handlers({
    --------------------------------------------------------------------------
    -- Generic handler
    --------------------------------------------------------------------------
    function(server_name)
      require("lspconfig")[server_name].setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })
    end,

    ["tsserver"] = function()
      typescript.setup({
        server = {
          capabilities = capabilities,
          on_attach = on_attach,
        },
      })
    end,

    --------------------------------------------------------------------------
    -- sumneko_lua
    --------------------------------------------------------------------------
    ["sumneko_lua"] = function(server_name)
      require("lspconfig")[server_name].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
          Lua = {
            runtime = {
              version = "LuaJIT",
            },
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = {
                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
              },
            },
          },
        },
      })
    end,

    --------------------------------------------------------------------------
    -- jsonls
    --------------------------------------------------------------------------
    ["jsonls"] = function(server_name)
      require("lspconfig")[server_name].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
          json = {
            schemas = require("schemastore").json.schemas(),
          },
        },
        setup = {
          commands = {
            Format = {
              function()
                vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line("$"), 0 })
              end,
            },
          },
        },
      })
    end,
  })
end

return M
