return {
  "lewis6991/gitsigns.nvim",
  dependencies = { { "nvim-lua/plenary.nvim" } },
  opts = {
    signs = {
      add = { hl = "GitSignsAdd", text = "┃", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
      change = { hl = "GitSignsChange", text = "┃", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
      delete = { hl = "GitSignsDelete", text = "", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
      topdelete = { hl = "GitSignsDelete", text = "", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
      changedelete = { hl = "GitSignsChange", text = "┃", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
      -- TODO: Different symbol for untracked?
      untracked = {
        hl = "GitSignsUntracked",
        text = "┃",
        numhl = "GitSignsUntrackedNr",
        linehl = "GitSignsUntrackedLn",
      },
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
