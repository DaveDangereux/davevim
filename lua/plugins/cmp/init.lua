return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "onsails/lspkind.nvim",
    "L3MON4D3/LuaSnip",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-calc",
    "hrsh7th/cmp-cmdline",
    "rafamadriz/friendly-snippets",
    "https://github.com/nalabdou/Symfony-code-snippets",
    "b0o/SchemaStore.nvim",
    {
      "tzachar/cmp-tabnine",
      build = "./install.sh'",
      dependencies = "hrsh7th/nvim-cmp",
    },
    {
      "dsznajder/vscode-react-javascript-snippets",
      build = "yarn install --frozen-lockfile && yarn compile",
    },
  },
  config = function()
    --------------------------------------------------------------------------
    -- setup snippet engine
    --------------------------------------------------------------------------
    local luasnip = require("luasnip")
    require("luasnip/loaders/from_vscode").lazy_load()

    --------------------------------------------------------------------------
    -- setup cmp
    --------------------------------------------------------------------------
    local check_backspace = function()
      local col = vim.fn.col(".") - 1
      return col == 0 or vim.fn.getline("."):sub(col, col):match("%s")
    end

    local cmp = require("cmp")

    local cmp_settings = {
      enabled = function()
        local in_syntax_group = require("cmp.config.context").in_syntax_group
        return not in_syntax_group("Comment")
      end,
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = {
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }), -- does this work?
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expandable() then
            luasnip.expand()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif check_backspace() then
            fallback()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      },
      formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
          local source_names = {
            nvim_lua = "vim.lsp",
            nvim_lsp = "LSP",
            luasnip = "Luasnip",
            buffer = "Buffer",
            path = "Path",
            calc = "Calc",
            cmdline = "Cmdline",
            cmp_tabnine = "TabNine",
          }

          local duplicates = {
            buffer = 0, -- was 1
            path = 0, -- was 1
            nvim_lsp = 0,
            luasnip = 0, -- was 1
          }
          local duplicates_default = 0

          local lspkind_vim_item =
            require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)

          -- Hack to fix missing TypeParameter icon
          if string.match(lspkind_vim_item.kind, "TypeParameter") then
            lspkind_vim_item.kind = " TypeParameter"
          end

          if string.match(lspkind_vim_item.kind, "TabNine") then
            lspkind_vim_item.kind = "󱐋 TabNine"
          end

          local strings = vim.split(lspkind_vim_item.kind, "%s", { trimempty = true })
          lspkind_vim_item.kind = " " .. strings[1] .. " "

          local source_name = source_names[entry.source.name]
          if not source_name then
            print("No source_name for " .. entry.source.name)
          else
            lspkind_vim_item.menu = "    (" .. strings[2] .. ", " .. source_names[entry.source.name] .. ")"
          end

          lspkind_vim_item.dup = duplicates[entry.source.name] or duplicates_default

          return lspkind_vim_item
        end,
      },
      window = {
        completion = cmp.config.window.bordered({
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
          col_offset = -4,
          side_padding = 0,
        }),
        documentation = cmp.config.window.bordered({
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
          col_offset = -4,
          side_padding = 0,
        }),
      },
      experimental = {
        ghost_text = false,
        native_menu = false,
      },
      sources = cmp.config.sources({
        { name = "cmp_tabnine" },
        { name = "nvim_lsp", entry_filter = require("plugins.cmp.utils").lsp_entry_filter },
        { name = "luasnip" },
        { name = "nvim_lua" },
        { name = "buffer" },
        { name = "path" },
        { name = "calc" },
      }),
      sorting = {
        comparators = {
          cmp.config.compare.exact,
          require("plugins.cmp.utils").kind_comparator,
          -- cmp.config.compare.offset,
          -- cmp.config.compare.score,
          -- cmp.config.compare.recently_used,
          -- cmp.config.compare.kind,
          -- cmp.config.compare.sort_text,
          -- cmp.config.compare.length,
          -- cmp.config.compare.order,
          -- cmp.config.compare.locality,
          -- cmp.config.compare.scope,
        },
      },
    }

    cmp.setup(cmp_settings)

    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

    cmp.setup.cmdline(":", {
      sources = cmp.config.sources({
        { name = "path" },
        { name = "cmdline" },
      }),
    })

    cmp.setup.cmdline({ "/", "?" }, {
      sources = {
        { name = "buffer" },
      },
    })
  end,
}
