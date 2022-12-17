-------------------------------------------------------------------------------
-- Reload this file on save
-------------------------------------------------------------------------------
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*nvim/lua/core/autocommands.lua",
  callback = function()
    vim.cmd("source", "<afile>")
  end,
  group = vim.api.nvim_create_augroup("autocommands", { clear = true }),
})

-------------------------------------------------------------------------------
-- Reload config on save
-------------------------------------------------------------------------------
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*nvim/lua/config.lua",
  callback = function()
    package.loaded["config"] = nil
    vim.cmd("source", "<afile>")
    -- TODO: Make sure this works properly
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
    vim.cmd("source", "<afile>")
  end,
  group = vim.api.nvim_create_augroup("utils", { clear = true }),
})

------------------------------------------------------------------------------
-- Sync Packer when plugins file is saved
------------------------------------------------------------------------------
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*nvim/lua/plugins/plugins.lua",
  callback = function()
    vim.cmd("source", "<afile>")
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
-- (and reload bufferline config for correct buffer styling)
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
  pattern = "*nvim/lua/colorschemes/davedark/**",
  callback = function()
    vim.cmd("colorscheme davedark")
  end,
  group = vim.api.nvim_create_augroup("davedark", { clear = true }),
})

------------------------------------------------------------------------------
-- Reload feline config on save
------------------------------------------------------------------------------
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*nvim/lua/plugins/feline/**",
  callback = function()
    require("plugins.feline").config()
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
