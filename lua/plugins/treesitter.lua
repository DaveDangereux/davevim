return {
  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("config.treesitter").config()
    end,
  },

  -- Rainbow brackets
  {
    "p00f/nvim-ts-rainbow",
    requires = { { "nvim-treesitter/nvim-treesitter" } },
    -- Config in config/treesitter.lua
  },

  -- Autotag
  {
    "windwp/nvim-ts-autotag",
    requires = { { "nvim-treesitter/nvim-treesitter" } },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  -- Playground (required for TSHighlightCapturesUnderCursor)
  {
    "nvim-treesitter/playground",
    requires = { { "nvim-treesitter/nvim-treesitter" } },
  },

  -- Treesitter text objects
  { "nvim-treesitter/nvim-treesitter-textobjects" },
}
