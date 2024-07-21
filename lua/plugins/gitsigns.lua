return {
  "lewis6991/gitsigns.nvim",
  dependencies = { { "nvim-lua/plenary.nvim" } },
  opts = {
    signs = {
      add = { text = "┃" },
      change = { text = "┃" },
      delete = { text = "" },
      topdelete = { text = "" },
      changedelete = { text = "┃" },
      untracked = { text = "┃" },
    },
    current_line_blame = false,
    current_line_blame_opts = {
      delay = 0,
    },
    on_attach = function(bufnr)
      require("core.keymaps").gitsigns(bufnr)
    end,
  },
  event = "BufRead",
}
