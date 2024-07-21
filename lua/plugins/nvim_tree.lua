return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local function on_attach(bufnr)
      local api = require("nvim-tree.api")

      local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      -- node.navigate
      vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close Directory"))
      vim.keymap.set("n", "J", api.node.navigate.sibling.last, opts("Last Sibling"))
      vim.keymap.set("n", "K", api.node.navigate.sibling.first, opts("First Sibling"))
      vim.keymap.set("n", "]g", api.node.navigate.git.next, opts("Next Git"))
      vim.keymap.set("n", "[g", api.node.navigate.git.prev, opts("Prev Git"))
      vim.keymap.set("n", "]e", api.node.navigate.diagnostics.next, opts("Next Diagnostic"))
      vim.keymap.set("n", "[e", api.node.navigate.diagnostics.prev, opts("Prev Diagnostic"))
      vim.keymap.set("n", "P", api.node.navigate.parent, opts("Parent Directory"))

      -- node.open
      vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))
      vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Open"))
      vim.keymap.set("n", "v", api.node.open.vertical, opts("Open: Vertical Split"))
      vim.keymap.set("n", "t", api.node.open.tab, opts("Open: New Tab"))
      vim.keymap.set("n", "<Tab>", api.node.open.preview, opts("Open Preview"))
      vim.keymap.set("n", "<2-LeftMouse>", api.node.open.edit, opts("Open"))

      -- fs
      vim.keymap.set("n", "a", api.fs.create, opts("Create"))
      vim.keymap.set("n", "d", api.fs.remove, opts("Delete"))
      vim.keymap.set("n", "D", api.fs.trash, opts("Trash"))
      vim.keymap.set("n", "r", api.fs.rename, opts("Rename"))
      vim.keymap.set("n", "e", api.fs.rename_basename, opts("Rename: Basename"))
      vim.keymap.set("n", "<C-r>", api.fs.rename_sub, opts("Rename: Omit Filename"))
      vim.keymap.set("n", "c", api.fs.copy.node, opts("Copy"))
      vim.keymap.set("n", "x", api.fs.cut, opts("Cut"))
      vim.keymap.set("n", "p", api.fs.paste, opts("Paste"))
      vim.keymap.set("n", "y", api.fs.copy.filename, opts("Copy Name"))
      vim.keymap.set("n", "Y", api.fs.copy.relative_path, opts("Copy Relative Path"))
      vim.keymap.set("n", "gy", api.fs.copy.absolute_path, opts("Copy Absolute Path"))

      -- tree
      vim.keymap.set("n", "L", api.tree.expand_all, opts("Expand All"))
      vim.keymap.set("n", "H", api.tree.collapse_all, opts("Collapse"))
      vim.keymap.set("n", "C", api.tree.change_root_to_node, opts("CD"))
      vim.keymap.set("n", "-", api.tree.change_root_to_parent, opts("Up"))
      vim.keymap.set("n", ".", api.tree.toggle_hidden_filter, opts("Toggle Dotfiles"))
      vim.keymap.set("n", "b", api.tree.toggle_no_buffer_filter, opts("Toggle No Buffer"))
      vim.keymap.set("n", "gc", api.tree.toggle_git_clean_filter, opts("Toggle Git Clean"))
      vim.keymap.set("n", "i", api.tree.toggle_gitignore_filter, opts("Toggle Git Ignore"))
      vim.keymap.set("n", "q", api.tree.close, opts("Close"))
      vim.keymap.set("n", "R", api.tree.reload, opts("Refresh"))
      vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
      vim.keymap.set("n", "<2-RightMouse>", api.tree.change_root_to_node, opts("CD"))

      -- marks
      vim.keymap.set("n", "m", api.marks.toggle, opts("Toggle Bookmark"))
      vim.keymap.set("n", "M", api.marks.bulk.move, opts("Move Bookmarked"))

      -- live_filter
      vim.keymap.set("n", "F", api.live_filter.clear, opts("Clean Filter"))
      vim.keymap.set("n", "f", api.live_filter.start, opts("Filter"))

      -- misc
      vim.keymap.set("n", "o", api.node.run.system, opts("Run System"))
    end

    local settings = {
      on_attach = on_attach,
      auto_reload_on_write = true,
      respect_buf_cwd = true,
      view = {
        adaptive_size = true,
        float = {
          enable = true,
          open_win_config = {
            relative = "editor",
            border = "rounded",
            width = 30,
            height = 28,
            row = 1,
            col = 1,
          },
        },
      },
      renderer = {
        highlight_git = false,
        highlight_opened_files = "all",
        indent_markers = {
          enable = true,
        },
        icons = {
          git_placement = "after",
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
      diagnostics = {
        enable = true,
        icons = {
          error = "",
          warning = "",
          info = "",
          hint = "",
        },
        show_on_dirs = false,
      },
      filters = {
        dotfiles = true,
      },
      git = {
        ignore = true,
        show_on_open_dirs = false,
      },
      actions = {
        change_dir = {
          enable = true,
          global = true,
        },
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

    require("nvim-tree").setup(settings)
  end,
}
