local M = {}

M.config = function()
  local status_ok, alpha = pcall(require, "alpha")
  if not status_ok then
    print("Failed to require alpha")
    return
  end

  local header_pieces = {
    "██████╗   █████╗  ██╗   ██╗ ███████╗ ██╗   ██╗ ██╗ ███╗   ███╗",
    "██╔══██╗ ██╔══██╗ ██║   ██║ ██╔════╝ ██║   ██║ ██║ ████╗ ████║",
    "██║  ██║ ███████║ ╚██╗ ██╔╝ █████╗   ╚██╗ ██╔╝ ██║ ██╔████╔██║",
    "██║  ██║ ██╔══██║  ╚████╔╝  ██╔══╝    ╚████╔╝  ██║ ██║╚██╔╝██║",
    "██████╔╝ ██║  ██║   ╚██╔╝   ███████╗   ╚██╔╝   ██║ ██║ ╚═╝ ██║",
    "╚═════╝  ╚═╝  ╚═╝    ╚═╝    ╚══════╝    ╚═╝    ╚═╝ ╚═╝     ╚═╝",
  }

  local header1 = { type = "text", val = header_pieces[1], opts = { position = "center", hl = "AlphaHeader1" } }
  local header2 = { type = "text", val = header_pieces[2], opts = { position = "center", hl = "AlphaHeader2" } }
  local header3 = { type = "text", val = header_pieces[3], opts = { position = "center", hl = "AlphaHeader3" } }
  local header4 = { type = "text", val = header_pieces[4], opts = { position = "center", hl = "AlphaHeader4" } }
  local header5 = { type = "text", val = header_pieces[5], opts = { position = "center", hl = "AlphaHeader5" } }
  local header6 = { type = "text", val = header_pieces[6], opts = { position = "center", hl = "AlphaHeader6" } }

  local function button(sc, txt, keybind)
    local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

    local opts = {
      position = "center",
      text = txt,
      shortcut = sc,
      cursor = 5,
      width = 24,
      align_shortcut = "right",
      hl_shortcut = "AlphaButtonShortcut",
      hl = "AlphaButton",
    }
    if keybind then
      opts.keymap = { "n", sc_, keybind, { noremap = true, silent = true } }
    end

    return {
      type = "button",
      val = txt,
      on_press = function()
        local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
        vim.api.nvim_feedkeys(key, "normal", false)
      end,
      opts = opts,
    }
  end

  local buttons = {
    type = "group",
    val = {
      button("e", "📂 > Explore", ":NvimTreeOpen <CR>"),
      button("w", "💽 > Previous session", ":SessionManager load_last_session<CR>"),
      button("d", "💻 > Directory session", ":SessionManager load_current_dir_session<CR>"),
      button("t", "🍒 > Todo", ":TodoTelescope<CR>"),
      button("p", "🌳 > Projects", ":Telescope projects <CR>"),
      button("r", "⏰ > Recently opened", ":Telescope oldfiles <CR>"),
      button("f", "🔎 > Find file", ":Telescope find_files <CR>"),
      button("g", "📚 > Find text", ":Telescope live_grep <CR>"),
      button("c", "🔧 > Config", ":e ~/.config/nvim/lua/user_config.lua <CR>"),
      button("s", "🪛 > Setup", ":NvimTreeOpen <CR> :cd ~/.config/nvim/ <CR>"),
      button("l", "💾 > LazyGit", ":LazyGit <CR>"),
      button("n", "🗒 > Notes", ":NvimTreeOpen <CR> :cd ~/web-dev/notes/ <CR>"),
      button("q", "🚪 > Quit", ":q <CR>"),
    },
    opts = {
      spacing = 0,
    },
  }
  local opts = {
    layout = {
      { type = "padding", val = 4 },
      header1,
      header2,
      header3,
      header4,
      header5,
      header6,
      { type = "padding", val = 2 },
      -- section.heading,
      -- section.plugin_count,
      -- { type = "padding", val = 1 },
      buttons,
      -- { type = "padding", val = 1 },
      -- section.footer
    },
    opts = {
      margin = 5,
    },
  }

  alpha.setup(opts)
end

return M
