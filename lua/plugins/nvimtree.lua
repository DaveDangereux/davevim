local M = {}

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  print("Failed to require nvim-tree.config")
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

local settings = {
  respect_buf_cwd = false,
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb("edit") },
        { key = "h", cb = tree_cb("close_node") },
        { key = "v", cb = tree_cb("vsplit") },
        { key = "C", cb = tree_cb("cd") },
      },
    },
    float = {
      enable = true,
        open_win_config = {
          relative = "editor",
          border = "rounded",
          width = 30,
          height = 25,
          row = 1,
          col = 1,
        },
    },
  },
  renderer = {
    highlight_git = true,
    highlight_opened_files = "all",
    indent_markers = {
      enable = true,
    },
    icons = {
      glyphs = {
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
      },
    },
    root_folder_label = table.concat({ ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" }),
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
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
  filters = {
    dotfiles = true,
  },
  git = {
    ignore = true,
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
  update_cwd = true,
}

M.config = function()
  local status_ok, nvimtree = pcall(require, "nvim-tree")
  if not status_ok then
    print("Failed to require nvim-tree")
    return
  end

  nvimtree.setup(settings)
end

return M
