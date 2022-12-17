return {
  -- Telescope / finder
  {
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("config.telescope").config()
    end,
  },

  -- Fuzzy file finder for Telescope
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make",
  },

  -- File browser
  { "nvim-telescope/telescope-file-browser.nvim" },

  -- Bookmark browser
  { "dhruvmanila/telescope-bookmarks.nvim" },
}
