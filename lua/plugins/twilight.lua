local M = {}

local settings = {
  dimming = {
    alpha = 0.3,
    color = { "Normal", "#ffffff" },
    -- Fully dim other windows when true
    inactive = true,
  },
  -- Lines to try and show around cursor
  context = 10,
  -- Use treesitter for the filetype when available
  treesitter = true,
  -- Control the types of nodes that should always be fully expanded
  expand = {
    "function",
    "method",
    "table",
    "if_statement",
  },
  exclude = {}, -- exclude these filetypes
}

--[[
-- In order to get transparent backgrounds to work with dimmed
-- text, edit config.lua in Twilight's source code. I use Packer, so
-- I found it here:
--
-- - ~/.local/share/nvim/site/pack/packer/start/twilight.nvim/lua/twilight/
--
-- In the function M.colors() before the vim.cmd line at the end, add:
--
-- local ok, hl = pcall(vim.api.nvim_get_hl_by_name, "Normal", true)
-- if hl["background"] == nil then
--   bg = "NONE"
-- end
--
-- Thanks to user matdexir on GitHub:
-- https://github.com/folke/twilight.nvim/issues/15
--]]

M.config = function()
  local status_ok, twilight = pcall(require, "twilight")
  if not status_ok then
    print "Failed to load twilight"
    return
  end

  twilight.setup(settings)
end

return M
