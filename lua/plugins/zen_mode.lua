return {
  "folke/zen-mode.nvim",
  config = function()
    local c = require("colorschemes.davedark.themes.default")
    local config = require("user_config")

    local settings = {
      window = {
        height = 0.9,
        width = 100,
        options = {
          signcolumn = "no",
          number = false,
          relativenumber = false,
          list = false,
        },
      },
      plugins = {
        options = {
          showcmd = false,
          laststatus = 0,
        },
        gitsigns = { enabled = true },
      },
      -- ZenMode seems to use the popup menu background, so this is a workaround
      on_open = function()
        local bg = config.transparent_background and c.none or c.bg
        vim.cmd("highlight Pmenu guibg=" .. bg)
      end,
      on_close = function()
        local pmenu_bg = config.transparent_background and c.none or c.pmenu_bg
        vim.cmd("highlight Pmenu guibg=" .. (pmenu_bg or "none"))
      end,
    }

    require("zen-mode").setup(settings)
  end,
}
