local M = {}

local settings = {
  auto_reload_on_write = true,
  disable_netrw = true,
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = { "l", "<CR>", "o" }, action = "edit" },
        { key = "h", action = "close_node" },
        { key = "v", action = "vsplit" },
        { key = "L", action = "expand_all" },
        { key = "H", action = "collapse_all" },
        { key = "M", action = "bulk_move" },
        { key = "?", action = "toggle_help" },
        { key = "K", action = "toggle_file_info" },
        { key = ".", action = "toggle_dotfiles" },
        { key = "C", action = "cd" },
        { key = "gc", action = "toggle_git_clean" },
        { key = "i", action = "toggle_dotfiles" },
        { key = "]g", action = "next_git_item" },
        { key = "[g", action = "prev_git_item" },

      },
    },
    float = {
      enable = true,
      open_win_config = {
        relative = "editor",
        border = "rounded",
        width = 30,
        height = 26,
        row = 1,
        col = 1,
      },
    },
  },
  renderer = {
    highlight_git = true,
    highlight_opened_files = "none",
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
    update_root = true,
  },
  diagnostics = {
    enable = true,
    icons = {
      error = "",
      warning = "",
      info = "",
      hint = "",
    },
    show_on_dirs = true,
  },
  filters = {
    dotfiles = true,
  },
  git = {
    ignore = true,
  },
  actions = {
    use_system_clipboard = true,
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
  live_filter = {
    always_show_folders = false,
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
