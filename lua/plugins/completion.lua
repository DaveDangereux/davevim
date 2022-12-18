return {
  -- Snippet engine
  { "L3MON4D3/LuaSnip" },

  -- Completion plugin
  {
    "hrsh7th/nvim-cmp",
    config = function()
      require("config.cmp").config()
    end,
  },

  -- Completion sources
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-nvim-lua" },
  { "saadparwaiz1/cmp_luasnip" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-calc" },
  { "hrsh7th/cmp-cmdline" },

  -- JSON schema completion
  { "b0o/SchemaStore.nvim" },

  ----------------------------------------------------------------------------
  -- Snippets
  ----------------------------------------------------------------------------
  -- Lots of snippets to start with
  { "rafamadriz/friendly-snippets" },

  -- TypeScript / React snippets
  {
    "dsznajder/vscode-react-javascript-snippets",
    run = "yarn install --frozen-lockfile && yarn compile",
  },

  -- Symfony and Twig snippets
  { "https://github.com/nalabdou/Symfony-code-snippets" },
}
