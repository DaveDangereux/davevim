local M = {}

M.config = function()
  vim.g.interestingWordsGUIColors = {
    "#f8fc46", -- neon yellow
    "#ffad2a", -- neon orange
    "#f8877f", -- neon red
    "#77e68a", -- neon green
    "#00c87a", -- olive_green
    "#3cbefc", -- neon_blue
    "#9d64e2", -- neon_violet
    "#fb83b3", -- neon_pink
    "#f447d1", -- lilac
    "#a7e8c8", -- pastel_green
    "#f8b6a8", -- pastel_orange
    "#fdffb4", -- pastel_yellow
    "#f7c2d6", -- pastel_pink
    "#c3bbec", -- pastel_violet
    "#c3effc", -- pastel_blue
  }
  vim.g.interestingWordsRandomiseColors = 1
end

return M
