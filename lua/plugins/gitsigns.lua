local M = {}

local settings = {
  signs = {
    add = { hl = "GitSignsAdd", text = "┃", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn", },
    change = { hl = "GitSignsChange", text = "┃", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
    delete = { hl = "GitSignsDelete", text = "契", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
    topdelete = { hl = "GitSignsDelete", text = "契", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
    changedelete = { hl = "GitSignsChange", text = "┃", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
    -- TODO: Different symbol for untracked?
    untracked = { hl = "GitSignsUntracked", text = "┃", numhl = "GitSignsUntrackedNr", linehl = "GitSignsUntrackedLn" },
  },
  current_line_blame = true,
  current_line_blame_formatter = "<author>, <author_time:%d-%m-%Y> - <summary>",
  on_attach = function(bufnr)
    require("core.keymaps").gitsigns(bufnr)
  end,
}

M.config = function()
  local status_ok, gitsigns = pcall(require, "gitsigns")
  if not status_ok then
    print("Failed to configure gitsigns")
    return
  end

  gitsigns.setup(settings)
  print("Settings applied")
end

return M
