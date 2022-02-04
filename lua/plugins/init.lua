local fn = vim.fn

local plugins = {
  -------------------------------------
  -- General Plugins
  -------------------------------------

  -- Have Packer manage itself
  { "wbthomason/packer.nvim" },

  -- Auto brackets
  { "windwp/nvim-autopairs",
    config = function()
      require("plugins.autopairs").config()
    end
  },

  -- File explorer
  { "kyazdani42/nvim-web-devicons" },
  { "kyazdani42/nvim-tree.lua",
    config = function()
      require("plugins.nvimtree").config()
    end,
    setup = function()
      require("core.keymaps").nvimtree()
    end
  },

  -- Zen mode
  { "folke/zen-mode.nvim",
    config = function()
      require("plugins.zenmode").config()
    end,
    setup = function()
      require("core.keymaps").zenmode()
    end
  },

  -- Comment
  {
    "numToStr/Comment.nvim",
    config = function()
      require("plugins.comment").config()
    end
  },

  -- Tab line
  {
    "akinsho/bufferline.nvim",
    config = function()
      require("plugins.bufferline").config()
    end,
    setup = function()
      require("core.keymaps").bufferline()
    end
  },

  -- Better buffer deletion
  {
    "moll/vim-bbye",
    setup = function()
      require("core.keymaps").bbye()
    end
  },

  -------------------------------------
  -- LSP
  -------------------------------------

  -- Language server configuration
  {
    "neovim/nvim-lspconfig"
  },

  -- Easy language server installation
  {
    "williamboman/nvim-lsp-installer",
    config = function()
      require("plugins.lsp").config()
    end
  },

  -------------------------------------
  -- Completion
  -------------------------------------

  -- {
  --   "hrsh7th/nvim-cmp"
  -- },

  -------------------------------------
  -- Telescope and Extensions
  -------------------------------------

  -- Telescope / finder
  {
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("plugins.telescope").config()
    end,
    setup = function()
      require("core.keymaps").telescope()
    end
  },

  -- Fuzzy file finder for Telescope
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make"
  },
  -- {
  --   "dhruvmanila/telescope-bookmarks.nvim"
  -- },

  -------------------------------------
  -- Treesitter and Friends
  -------------------------------------

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("plugins.treesitter").config()
    end
  },

  -- Rainbow brackets
  {
    "p00f/nvim-ts-rainbow"
    -- Config in plugins/treesitter.lua
  },

  -- Playground
  {
    "nvim-treesitter/playground"
    -- Config in plugins/treesitter.lua
  },

  -- Twilight
  {
    "folke/twilight.nvim",
    config = function()
      require("plugins.twilight").config()
    end,
    setup = function()
      require("core.keymaps").twilight()
    end
  }
}

-------------------------------------------------------------------------------
-- Automagic Wizardry - clones and installs Packer if not present
-------------------------------------------------------------------------------

local packer_bootstrapped = false

-- Check to see if Packer exists
local packer_install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

-- If it doesn't, clone it from GitHub
if fn.empty(fn.glob(packer_install_path)) > 0 then
  -- Remove the directory before cloning
  fn.delete(packer_install_path, "rf")

  print "Cloning Packer..."
  packer_bootstrapped =
    fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    packer_install_path
  }

  vim.cmd "packadd packer.nvim"
end

-- Autocommand that syncs Packer whenever you save this file
vim.cmd [[
  augroup packer_config
    autocmd!
    autocmd BufWritePost *nvim/lua/plugins/init.lua source <afile> | PackerSync
  augroup end
]]

-- Require Packer with a protected call
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  print("Unable to load Packer")
  return
end

-- Configure Packer
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end
  },
  git = {
    clone_timeout = 300,
    subcommands = {
      -- This is more efficient than what Packer is using
      fetch = "fetch --no-tags --no-recurse-submodules --update-shallow --progress",
    }
  },
  max_jobs = 50,
  auto_clean = true,
  compile_on_sync = true
}

-- Load plugins
local plugins_loaded, _ =
  pcall(
  function()
    packer.startup(
      function(use)
        use(plugins)
      end
    )

    -- Automatically set up configuration after cloning packer.nvim
    if packer_bootstrapped then
      require("packer").sync()
    end
  end
)
if not plugins_loaded then
  print "Problems detected while loading plugins"
end
