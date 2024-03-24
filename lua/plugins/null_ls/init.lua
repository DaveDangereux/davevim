return {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    config = function()
        local config = require("user_config")

        local null_ls = require("null-ls")

        local code_actions = null_ls.builtins.code_actions
        local completion = null_ls.builtins.completion
        local formatting = null_ls.builtins.formatting
        local diagnostics = null_ls.builtins.diagnostics

        local format_on_save = function(bufnr)
            vim.lsp.buf.format({
                -- timeout_ms = 40000,
                filter = function(client)
                    return client.name == "null-ls"
                end,
                bufnr = bufnr,
            })
        end

        local lsp_formatting_augroup = vim.api.nvim_create_augroup("LspFormatting", {})

        local on_attach = function(client, bufnr)
            if client.supports_method("textDocument/formatting") then
                vim.api.nvim_clear_autocmds({
                    group = lsp_formatting_augroup,
                    buffer = bufnr,
                })
                vim.api.nvim_create_autocmd("BufWritePre", {
                    group = lsp_formatting_augroup,
                    buffer = bufnr,
                    callback = function()
                        if config.format_on_save then
                            format_on_save(bufnr)
                        end
                    end,
                })
            end
        end

        local sources = {
            -- Code actions
            -- code_actions.eslint, -- deprecated
            code_actions.gitsigns,

            -- Completion
            completion.luasnip.with({
                filetypes = { "lua" },
            }),

            -- Diagnostics
            -- diagnostics.chktex, -- deprecated
            -- diagnostics.ruff.with({
            --     extra_args = { "--config", vim.fn.expand("~/.config/nvim/lua/plugins/null_ls/configs/pyproject.toml") },
            -- }), -- deprecated
            diagnostics.stylelint.with({
                extra_args = {
                    "--config=" .. vim.fn.expand("~/.config/nvim/lua/plugins/null_ls/configs/.stylelintrc.json"),
                },
            }),

            -- Formatting
            formatting.asmfmt,
            formatting.black,
            formatting.clang_format,
            formatting.cmake_format,
            -- formatting.esLint_d, -- deprecated
            formatting.isort,
            -- formatting.latexindent, -- deprecated
            formatting.prettierd.with({
                disabled_filetypes = { "markdown", "vimwiki" },
            }),
            formatting.shfmt,
            formatting.stylelint,
            formatting.stylua.with({
                extra_args = {
                    "--config-path",
                    vim.fn.expand("~/.config/nvim/lua/plugins/null_ls/configs/stylua.toml"),
                },
            }),
            -- formatting.taplo, -- deprecated

            require("typescript.extensions.null-ls.code-actions"),
        }

        local settings = {
            -- Format on save
            -- TODO: Figure out a directory format shortcut
            border = "rounded",
            on_attach = on_attach,
            sources = sources,
            update_in_insert = true,
        }

        null_ls.setup(settings)
        -- Why is this here?
        vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formatting()' ]])
    end,
}
