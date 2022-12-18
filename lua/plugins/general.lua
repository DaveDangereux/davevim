return {
  -- Have Packer manage itself
  { "wbthomason/packer.nvim" },

  -- Auto brackets
  {
    "windwp/nvim-autopairs",
    config = function()
      require("config.autopairs").config()
    end,
  },

  -- Shortcuts for bracketing
  { "tpope/vim-surround" },

  -- File explorer
  { "nvim-tree/nvim-web-devicons" },
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("config.nvimtree").config()
    end,
  },

  -- Zen mode
  {
    "folke/zen-mode.nvim",
    config = function()
      require("config.zenmode").config()
    end,
  },

  -- Comment
  {
    "numToStr/Comment.nvim",
    config = function()
      require("config.comment").config()
    end,
  },

  -- Fix jsx / tsx commenting
  { "JoosepAlviste/nvim-ts-context-commentstring" },

  -- Tab line
  {
    "akinsho/bufferline.nvim",
    config = function()
      require("config.bufferline").config()
    end,
  },

  -- Better buffer deletion
  { "moll/vim-bbye" },

  -- Project management and root folder cd
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("config.project").config()
    end,
  },

  -- Git
  {
    "lewis6991/gitsigns.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("config.gitsigns").config()
    end,
    setup = function()
      require("core.keymaps").gitsigns()
    end,
    event = "BufRead",
  },

  -- Status line
  {
    "feline-nvim/feline.nvim",
    config = function()
      require("config.feline").config()
    end,
  },

  -- Notifications
  {
    "rcarriga/nvim-notify",
    config = function()
      require("config.notify").config()
    end,
  },

  -- Color preview
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },

  -- Dashboard
  {
    "goolord/alpha-nvim",
    requires = { "kyazdani42/nvim-web-devicons" },
    config = function()
      require("config.alpha").config()
    end,
  },

  -- Toggleterm
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("config.toggleterm").config()
    end,
  },

  -- Recognise json with comments
  { "neoclide/jsonc.vim" },

  -- Enable working with protected files without sudo-ing
  {
    "lambdalisue/suda.vim",
    config = function()
      require("config.suda").config()
    end,
  },

  -- Destroy all buffers that aren't open in windows or tabs
  { "artnez/vim-wipeout" },

  -- Visualise indentation
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("config.indent_blankline").config()
    end,
  },

  -- Lots of syntax highlighting improvements
  { "sheerun/vim-polyglot" },

  -- Ruby Signature syntax highlighting
  { "pocke/rbs.vim" },

  -- Automated saving and restoring of views
  { "vim-scripts/restore_view.vim" },

  -- Highlight interesting words
  {
    "lfv89/vim-interestingwords",
    config = function()
      require("config.interesting_words").config()
    end,
  },

  -- Better looking folds
  {
    "anuvyklack/pretty-fold.nvim",
    config = function()
      require("config.pretty_fold").config()
    end,
  },

  -- Editable quickfix window
  { "stefandtw/quickfix-reflector.vim" },

  -- Use lazygit
  { "kdheepak/lazygit.nvim" },

  -- Session management
  {
    "Shatur/neovim-session-manager",
    config = function()
      require("config.session").config()
    end,
  },

  -- Todo highlight and search
  {
    "folke/todo-comments.nvim",
    config = function()
      require("config.todocomments").config()
    end,
  },

  -- Display buffer colours with :ColorSwatchGenerate
  { "cocopon/colorswatch.vim" },

  -- Better undo history
  {
    "mbbill/undotree",
    config = function()
      require("config.undotree").config()
    end,
  },

  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require("config.symbols_outline").config()
    end,
  },

  -- TODO: Add debugger
}
