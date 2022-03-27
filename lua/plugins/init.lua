local fn = vim.fn

local plugins = {
  -----------------------------------------------------------------------------
  -- General Plugins
  -----------------------------------------------------------------------------

  -- Have Packer manage itself
  { "wbthomason/packer.nvim" },

  -- Auto brackets
  {
    "windwp/nvim-autopairs",
    config = function()
      require("plugins.autopairs").config()
    end,
  },

  -- Shortcuts for bracketing
  { "tpope/vim-surround" },

  -- File explorer
  { "kyazdani42/nvim-web-devicons" },
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("plugins.nvimtree").config()
    end,
    setup = function()
      require("core.keymaps").nvimtree()
    end,
  },

  -- Zen mode
  {
    "folke/zen-mode.nvim",
    config = function()
      require("plugins.zenmode").config()
    end,
    setup = function()
      require("core.keymaps").zenmode()
    end,
  },

  -- Comment
  {
    "numToStr/Comment.nvim",
    config = function()
      require("plugins.comment").config()
    end,
  },

  -- Tab line
  {
    "akinsho/bufferline.nvim",
    config = function()
      require("plugins.bufferline").config()
    end,
    setup = function()
      require("core.keymaps").bufferline()
    end,
  },

  -- Better buffer deletion
  {
    "moll/vim-bbye",
    setup = function()
      require("core.keymaps").bbye()
    end,
  },

  -- Project management and root folder cd
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("plugins.project").config()
    end,
  },

  -- VS Code style symbol renaming
  {
    "filipdutescu/renamer.nvim",
    branch = "master",
    requires = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("renamer").setup()
    end,
    setup = function()
      require("core.keymaps").renamer()
    end,
  },

  -- Git
  {
    "lewis6991/gitsigns.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("plugins.gitsigns").config()
    end,
    event = "BufRead",
  },

  -- Status line
  {
    "feline-nvim/feline.nvim",
    config = function()
      require("plugins.feline").config()
    end,
  },

  -- Breadcrumbs for status line
  {
    "SmiteshP/nvim-gps",
    requires = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("plugins.gps").config()
    end,
  },

  -- Notifications
  {
    "rcarriga/nvim-notify",
    config = function()
      require("plugins.notify").config()
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
      require("plugins.alpha").config()
    end,
  },

  -- Toggleterm
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("plugins.toggleterm").config()
    end,
    setup = function()
      require("core.keymaps").toggleterm()
    end,
  },

  -- Recognise json with comments
  { "neoclide/jsonc.vim" },

  -- Enable working with protected files without sudo-ing
  {
    "lambdalisue/suda.vim",
    config = function()
      require("plugins.suda").config()
    end,
  },

  -- Destroy all buffers that aren't open in windows or tabs
  {
    "artnez/vim-wipeout",
    setup = function()
      require("core.keymaps").wipeout()
    end,
  },

  -- Visualise indentation
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("plugins.indent_blankline").setup()
    end,
  },

  -- Lots of syntax highlighting improvements
  { "sheerun/vim-polyglot" },

  -----------------------------------------------------------------------------
  -- Color schemes
  -----------------------------------------------------------------------------

  { "jacoborus/tender.vim" },
  { "rakr/vim-one" },
  { "rafamadriz/neon" },
  { "tomasiser/vim-code-dark" },
  { "Mofiqul/vscode.nvim" },
  { "marko-cerovac/material.nvim" },
  { "bluz71/vim-nightfly-guicolors" },

  -----------------------------------------------------------------------------
  -- LSP
  -----------------------------------------------------------------------------

  -- Language server configuration
  { "neovim/nvim-lspconfig" },

  -- Easy language server installation
  {
    "williamboman/nvim-lsp-installer",
    config = function()
      require("plugins.lsp").config()
    end,
  },

  -- JSON schema completion
  { "b0o/SchemaStore.nvim" },

  -- Highlight other instances of word under cursor
  {
    "RRethy/vim-illuminate",
    config = function()
      require("plugins.illuminate").config()
    end,
  },

  -- Diagnostics jump menu
  {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("plugins.trouble").config()
    end,
    setup = function()
      require("core.keymaps").trouble()
    end,
  },

  -- Function signature help
  {
    "ray-x/lsp_signature.nvim",
    config = function()
      require("plugins.lsp.lsp-signature").config()
    end,
  },

  -- Formatting and linting
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("plugins.lsp.null-ls").config()
    end,
  },

  -----------------------------------------------------------------------------
  -- Snippets
  -----------------------------------------------------------------------------

  -- Snippet engine
  { "L3MON4D3/LuaSnip" },

  -- Lots of snippets to start with
  { "rafamadriz/friendly-snippets" },

  -- TypeScript / React snippets
  {
    "dsznajder/vscode-react-javascript-snippets",
    run = "yarn install --frozen-lockfile && yarn compile",
  },

  -- Symfony and Twig snippets
  { "https://github.com/nalabdou/Symfony-code-snippets" },

  -----------------------------------------------------------------------------
  -- Completion
  -----------------------------------------------------------------------------

  -- Completion plugin
  {
    "hrsh7th/nvim-cmp",
    config = function()
      require("plugins.cmp").config()
    end,
  },

  -- Completion sources
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-nvim-lua" },
  { "saadparwaiz1/cmp_luasnip" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-calc" },

  -----------------------------------------------------------------------------
  -- Treesitter and Friends
  -----------------------------------------------------------------------------

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("plugins.treesitter").config()
    end,
    setup = function()
      require("core.keymaps").treesitter()
    end,
  },

  -- Rainbow brackets
  {
    "p00f/nvim-ts-rainbow",
    requires = { { "nvim-treesitter/nvim-treesitter" } },
    -- Config in plugins/treesitter.lua
  },

  -- Playground
  {
    "nvim-treesitter/playground",
    requires = { { "nvim-treesitter/nvim-treesitter" } },
    -- Config in plugins/treesitter.lua
  },

  -- Twilight
  {
    "folke/twilight.nvim",
    requires = { { "nvim-treesitter/nvim-treesitter" } },
    config = function()
      require("plugins.twilight").config()
    end,
    setup = function()
      require("core.keymaps").twilight()
    end,
  },

  -- Autotag
  {
    "windwp/nvim-ts-autotag",
    requires = { { "nvim-treesitter/nvim-treesitter" } },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  -----------------------------------------------------------------------------
  -- Telescope and Extensions
  -----------------------------------------------------------------------------

  -- Telescope / finder
  {
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("plugins.telescope").config()
    end,
    setup = function()
      require("core.keymaps").telescope()
    end,
  },

  -- Fuzzy file finder for Telescope
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make",
  },

  -- File browser
  { "nvim-telescope/telescope-file-browser.nvim" },

  -- Bookmare browser
  { "dhruvmanila/telescope-bookmarks.nvim" },
}

-------------------------------------------------------------------------------
-- Automagic Wizardry - clones and installs Packer if not present
-------------------------------------------------------------------------------

local packer_bootstrapped = false

-- Check to see if Packer exists
local packer_install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

-- If it doesn't, clone it from GitHub
if fn.empty(fn.glob(packer_install_path)) > 0 then
  -- Remove the directory before cloning
  fn.delete(packer_install_path, "rf")

  print("Cloning Packer...")
  packer_bootstrapped = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    packer_install_path,
  })

  vim.cmd("packadd packer.nvim")
end

-- Autocommand that syncs Packer whenever you save this file
vim.cmd([[
  augroup packer_config
    autocmd!
    autocmd BufWritePost *nvim/lua/plugins/init.lua source <afile> | PackerSync
  augroup end
]])

-- Require Packer with a protected call
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  print("Unable to load Packer")
  return
end

-- Configure Packer
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
  git = {
    clone_timeout = 300,
    subcommands = {
      -- This is more efficient than what Packer is using
      fetch = "fetch --no-tags --no-recurse-submodules --update-shallow --progress",
    },
  },
  max_jobs = 50,
  auto_clean = true,
  compile_on_sync = true,
})

-- Load plugins
local plugins_loaded, _ = pcall(function()
  packer.startup(function(use)
    use(plugins)
  end)

  -- Automatically set up configuration after cloning packer.nvim
  if packer_bootstrapped then
    require("packer").sync()
  end
end)
if not plugins_loaded then
  print("Problems detected while loading plugins")
end
