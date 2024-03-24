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
    "*nvim/lua/plugins/feline/theme/**",
  },
  callback = function()
    utils.clear_packages_recursively("colorschemes.davedark")
    utils.clear_packages_recursively("plugins.feline")
    require("plugins.feline").config()
    vim.cmd("colorscheme davedark")
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

-------------------------------------------------------------------------------
-- Recognize .cls files as TeX files
-------------------------------------------------------------------------------
vim.api.nvim_exec(
  [[
  autocmd BufNewFile,BufRead *.cls set filetype=tex
]],
  false
)
