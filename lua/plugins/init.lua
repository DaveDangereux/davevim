local plugins = require("plugins.plugins")

-------------------------------------------------------------------------------
-- Automagic Wizardry - clones and installs Packer if not present
-------------------------------------------------------------------------------

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd("packadd packer.nvim")
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Require Packer with a protected call
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  print("Failed to require packer")
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
    clone_timeout = 30,
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
packer.startup(function(use)
  use(plugins)

  if packer_bootstrap then
    require("packer").sync()
  end
end)
