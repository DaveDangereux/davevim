return {
  "nvimtools/none-ls.nvim",
  config = function()
    local config = require("user_config")

    local null_ls = require("null-ls")

    local code_actions = null_ls.builtins.code_actions
    local completion = null_ls.builtins.completion
    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics

    local lsp_formatting = function(bufnr)
      if config.format_on_save then
        vim.lsp.buf.format({
          timeout_ms = 40000,
          filter = function(client)
            return client.name == "null-ls"
          end,
          bufnr = bufnr,
        })
      end
    end

    local lsp_formatting_augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    local settings = {
      -- Format on save
      -- TODO: Figure out a directory format shortcut
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = lsp_formatting_augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = lsp_formatting_augroup,
            buffer = bufnr,
            callback = function()
              lsp_formatting(bufnr)
            end,
          })
        end
      end,
      sources = {
        code_actions.eslint,
        code_actions.gitsigns,

        completion.luasnip.with({
          filetypes = { "lua" },
        }),

        diagnostics.mypy,
        diagnostics.ruff,

        formatting.stylua,
        formatting.eslint_d,
        formatting.prettierd.with({
          disabled_filetypes = { "markdown", "vimwiki" },
        }),
        formatting.ruff,
        formatting.stylelint,
        formatting.autopep8,
        formatting.clang_format,

        -- diagnostics.twigcs,
        diagnostics.stylelint.with({
          extra_args = function()
            if config.use_stylelint_default_config then
              return { "--config=" .. config.stylelint_default_config_location }
            end
          end,
        }),

        require("typescript.extensions.null-ls.code-actions"),
      },
    }

    null_ls.setup(settings)
    -- Why is this here?
    -- vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formatting()' ]])
  end,
}
