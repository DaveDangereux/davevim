local M = {}

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  print("Failed to load nvim-tree.config")
  return
end

-- git = {
--   unstaged = "✗",
--   staged = "S",
--   untracked = "U",
-- },

vim.g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "",
    staged = "✓",
    unmerged = "",
    renamed = "➜",
    deleted = "",
    untracked = "★",
    ignored = "◌",
  },
  folder = {
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
  },
}

vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_root_folder_modifier = table.concat({ ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" })
vim.g.nvim_tree_respect_buf_cwd = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_special_files = { ["README.md"] = 1 }

local tree_cb = nvim_tree_config.nvim_tree_callback

local settings = {
  actions = {
    open_file = {
      window_picker = {
        enable = false
      }
    }
  },
  diagnostics = {
    enable = true,
    icons = {
      error = "",
      warning = "",
      info = "",
      hint = "",
    },
  },
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  view = {
    mappings = {
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb("edit") },
        { key = "h", cb = tree_cb("close_node") },
        { key = "v", cb = tree_cb("vsplit") },
        { key = "C", cb = tree_cb("cd") },
      },
    },
  },
}

M.config = function()
  local status_ok, nvimtree = pcall(require, "nvim-tree")
  if not status_ok then
    print("Failed to load nvim-tree")
    return
  end

  nvimtree.setup(settings)
end

return M
