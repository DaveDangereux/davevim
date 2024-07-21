return {
  "folke/zen-mode.nvim",
  config = function()
    local settings = {
      window = {
        height = 0.9,
        width = 120,
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
        tmux = { enabled = false },
      },
    }

    require("zen-mode").setup(settings)
  end,
}
