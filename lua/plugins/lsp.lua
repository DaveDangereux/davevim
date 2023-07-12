return {
  -- Easy language server, dap, linter and formatter installation
  {
    "williamboman/mason.nvim",
    config = function()
      require("config.lsp.mason").config()
    end,
  },

  { "williamboman/mason-lspconfig.nvim" },

  -- Language server configuration
  { "neovim/nvim-lspconfig" },

  -- Formatting and linting
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("config.lsp.null-ls").config()
    end,
  },

  { "jayp0521/mason-null-ls.nvim" },

  -- Enhanced UI for LSP experience
  {
    "glepnir/lspsaga.nvim",
    opt = true,
    branch = "main",
    event = "LspAttach",
    config = function()
      require("config.lsp.lspsaga").config()
    end,
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  },

  -- Improved breadcrumbs for status line
  {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig",
    config = function()
      require("config.navic").config()
    end,
  },

  -- TypeScript auto-update imports on file rename
  { "jose-elias-alvarez/typescript.nvim" },

  -- VSCode-style icons in autocompletion window
  { "onsails/lspkind.nvim" },

  -- Highlight other instances of word under cursor
  {
    "RRethy/vim-illuminate",
    config = function()
      require("config.illuminate_config").config()
    end,
  },

  -- Diagnostics jump menu
  {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("config.trouble").config()
    end,
  },

  -- Function signature help
  {
    "ray-x/lsp_signature.nvim",
    config = function()
      require("config.lsp.lsp_signature").config()
      -- require("lsp_signature").setup({ hint_enable = false })
    end,
  },
}
