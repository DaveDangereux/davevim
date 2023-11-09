local M = {}

local settings = {
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
}

M.config = function()
  local status_ok, gitsigns = pcall(require, "gitsigns")
  if not status_ok then
    print("Failed to require gitsigns")
    return
  end

  gitsigns.setup(settings)
  print("Settings applied")
end

return M
