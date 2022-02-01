local fn = vim.fn

local plugins = {
  { "wbthomason/packer.nvim" },           -- Have Packer manage itself
  { "Tastyep/structlog.nvim" }
}

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

-- Autocommand that syncs Packer whenever you save a file in the plugins directory
vim.cmd [[
  augroup packer_config
    autocmd!
    autocmd BufWritePost *nvim/lua/plugins/* source <afile> | PackerSync
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