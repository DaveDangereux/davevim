return {
  "williamboman/mason.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvimtools/none-ls.nvim",
    "jay-babu/mason-null-ls.nvim",
    "williamboman/mason-lspconfig.nvim",
    "RRethy/vim-illuminate",
    "SmiteshP/nvim-navic",
    "jay-babu/mason-nvim-dap.nvim",
  },
  config = function()
    --------------------------------------------------------------------------
    -- Setup mason
    --------------------------------------------------------------------------
    local mason_options = {
      ensure_installed = {
        "autopep8",
        "clang-format",
        "clangd",
        "codelldb",
        "commitlint",
        "css-lsp",
        "debugpy",
        "emmet-ls",
        "eslint_d",
        "html-lsp",
        "json-lsp",
        "lua-language-server",
        "mypy",
        "prettierd",
        "prisma-language-server",
        "pyright",
        "ruff",
        "stylelint",
        "stylua",
        "tailwindcss-language-server",
        "typescript-language-server",
        "vim-language-server",
      },
    }

    require("mason").setup(mason_options)
    require("plugins.mason.diagnostic-config")()
    require("mason-null-ls").setup({ automatic_installation = true })

    --------------------------------------------------------------------------
    -- Setup mason-lspconfig
    --------------------------------------------------------------------------
    local on_attach = function(client, bufnr)
      if client.server_capabilities.documentSymbolProvider then
        require("nvim-navic").attach(client, bufnr)
      end

      if client.server_capabilities.document_highlight then
        require("illuminate").on_attach(client)
      end

      -- Load custom keymaps for the buffer
      require("core.keymaps").lsp(bufnr)

      if client.name == "clangd" then
        client.server_capabilities.signatureHelpProvider = false
      end

      -- TODO: Load custom keymaps for TypeScript plugin
      -- if client.name == "tsserver" then
      -- end
    end

    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    capabilities.textDocument.foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    }

    local handlers = {
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
    }

    local mason_lspconfig_options = {
      automatic_installation = true,
    }

    local mason_lspconfig = require("mason-lspconfig")
    mason_lspconfig.setup(mason_lspconfig_options)
    mason_lspconfig.setup_handlers(handlers)
  end,
}
