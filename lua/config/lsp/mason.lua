local M = {}

local mason_lspconfig_options = {
  automatic_installation = true,
}

M.config = function()
  ----------------------------------------------------------------------------
  -- on_attach
  ----------------------------------------------------------------------------
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

  ----------------------------------------------------------------------------
  -- Setup
  ----------------------------------------------------------------------------
  require("mason").setup()

  local mason_lspconfig = require("mason-lspconfig")
  mason_lspconfig.setup(mason_lspconfig_options)

  require("mason-null-ls").setup({ automatic_installation = true })
  require("config.lsp.diagnostic-config")()

  local capabilities = require("cmp_nvim_lsp").default_capabilities()
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
      require("typescript").setup({
        server = {
          capabilities = capabilities,
          on_attach = on_attach,
        },
      })
    end,

    --------------------------------------------------------------------------
    -- lua_ls
    --------------------------------------------------------------------------
    ["lua_ls"] = function(server_name)
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

    --------------------------------------------------------------------------
    -- cssls
    --------------------------------------------------------------------------
    ["cssls"] = function(server_name)
      require("lspconfig")[server_name].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
          css = {
            lint = {
              unknownAtRules = "ignore",
            },
          },
        },
      })
    end,

    --------------------------------------------------------------------------
    -- pylsp
    --------------------------------------------------------------------------
    ["pylsp"] = function(server_name)
      require("lspconfig")[server_name].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
          pylsp = {
            plugins = {
              pyflakes = { enabled = false },
            },
          },
        },
      })
    end,
  })
end

return M
