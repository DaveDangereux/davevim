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
  group = vim.api.nvim_create_augroup("packer_config", { clear = true }),
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
  group = vim.api.nvim_create_augroup("feline_commands", { clear = true }),
})
