local utils = require("core.utils")

-------------------------------------------------------------------------------
-- Reload this file on save
-------------------------------------------------------------------------------
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*nvim/lua/core/autocommands.lua",
  callback = function()
    utils.clear_packages_recursively("core.autocommands")
    require("core.autocommands")
  end,
  group = vim.api.nvim_create_augroup("autocommands", { clear = true }),
})

-------------------------------------------------------------------------------
-- Reload config on save
-------------------------------------------------------------------------------
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*nvim/lua/user_config.lua",
  callback = function()
    package.loaded["user_config"] = nil
    package.loaded["core.options"] = nil
    require("core.options")
    -- TODO: Make sure this works for all configured modules
  end,
  group = vim.api.nvim_create_augroup("config", { clear = true }),
})

-------------------------------------------------------------------------------
-- Reload utils on save
-------------------------------------------------------------------------------
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*nvim/lua/core/utils.lua",
  callback = function()
    package.loaded["core.utils"] = nil
  end,
  group = vim.api.nvim_create_augroup("utils", { clear = true }),
})

------------------------------------------------------------------------------
-- Sync Packer when plugin files are saved
------------------------------------------------------------------------------
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*nvim/lua/plugins/**",
  callback = function()
    utils.clear_packages_recursively("plugins")
    utils.clear_packages_recursively("load_packer")
    require("load_packer")
    vim.cmd("PackerSync")
  end,
  group = vim.api.nvim_create_augroup("plugins", { clear = true }),
})

-------------------------------------------------------------------------------
-- Reload keymaps on save
-------------------------------------------------------------------------------
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*nvim/lua/core/keymaps.lua",
  callback = function()
    vim.cmd("source", "<afile>")
  end,
  group = vim.api.nvim_create_augroup("keymaps", { clear = true }),
})

------------------------------------------------------------------------------
-- Reload options on save
------------------------------------------------------------------------------
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*nvim/lua/core/options.lua",
  callback = function()
    vim.cmd("source", "<afile>")
  end,
  group = vim.api.nvim_create_augroup("options", { clear = true }),
})

------------------------------------------------------------------------------
-- Reload davedark colorscheme on save
------------------------------------------------------------------------------
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = {
    "*nvim/lua/colorschemes/davedark/**",
    "*nvim/lua/config/feline/theme/**",
  },
  callback = function()
    utils.clear_packages_recursively("colorschemes.davedark")
    vim.cmd("colorscheme davedark")
    require("config.feline").config()
    -- NOTE: Autocommands can't call other autocommands, so to get BufferLine
    -- to correctly reload highlights using its own autocommand requires the
    -- colorscheme to be changed manually as well
  end,
  group = vim.api.nvim_create_augroup("davedark", { clear = true }),
})

------------------------------------------------------------------------------
-- Reload feline config on save
------------------------------------------------------------------------------
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*nvim/lua/plugins/feline/**",
  callback = function()
    require("config.feline").config()
  end,
  group = vim.api.nvim_create_augroup("feline", { clear = true }),
})

-------------------------------------------------------------------------------
-- Reload colorizer on save
-------------------------------------------------------------------------------
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*",
  callback = function()
    package.loaded["colorizer"] = nil
    local colorizer_status_ok, colorizer = pcall(require, "colorizer")
    if not colorizer_status_ok then
      print("Failed to require colorizer")
      return
    end
    colorizer.setup()
    -- TODO: Make this apply to all buffers
    vim.cmd("ColorizerAttachToBuffer")
  end,
  group = vim.api.nvim_create_augroup("colorizer", { clear = true }),
})
