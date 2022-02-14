local M = {}

M.config = function()
  local status_ok, alpha = pcall(require, "alpha")
  if not status_ok then
    print("Failed to configure alpha")
    return
  end


  local header_piece1 = "██████╗░░█████╗░██╗░░░██╗███████╗██╗░░░██╗██╗███╗░░░███╗"
  local header_piece2 = "██╔══██╗██╔══██╗██║░░░██║██╔════╝██║░░░██║██║████╗░████║"
  local header_piece3 = "██║░░██║███████║╚██╗░██╔╝█████╗░░╚██╗░██╔╝██║██╔████╔██║"
  local header_piece4 = "██║░░██║██╔══██║░╚████╔╝░██╔══╝░░░╚████╔╝░██║██║╚██╔╝██║"
  local header_piece5 = "██████╔╝██║░░██║░░╚██╔╝░░███████╗░░╚██╔╝░░██║██║░╚═╝░██║"
  local header_piece6 = "╚═════╝░╚═╝░░╚═╝░░░╚═╝░░░╚══════╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝"

  local header1 = { type = "text", val = header_piece1, opts = { position = "center", hl = "AlphaHeader1", }, }
  local header2 = { type = "text", val = header_piece2, opts = { position = "center", hl = "AlphaHeader2", }, }
  local header3 = { type = "text", val = header_piece3, opts = { position = "center", hl = "AlphaHeader3", }, }
  local header4 = { type = "text", val = header_piece4, opts = { position = "center", hl = "AlphaHeader4", }, }
  local header5 = { type = "text", val = header_piece5, opts = { position = "center", hl = "AlphaHeader5", }, }
  local header6 = { type = "text", val = header_piece6, opts = { position = "center", hl = "AlphaHeader6", }, }

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
      -- ⏱️
      button("e", "📂 > Explore", ":Telescope file_browser <CR>"),
      button("p", "🌳 > Projects", ":Telescope projects <CR>"),
      button("r", "⏰ > Recently opened", ":Telescope oldfiles <CR>"),
      button("f", "🔎 > Find file", ":cd $HOME | Telescope find_files <CR>"),
      button("g", "📜 > Find text", ":Telescope live_grep <CR>"),
      button("q", "🚪 > Quit", ":q <CR>"),
      -- button( "LDR b", "   Buffers" , ":Telescope buffers<CR>"),
      -- button( "MRK V", "   Options" , ":execute 'normal! `V'<CR>"),
      -- button( "MRK P", "   Plugins" , ":execute 'normal! `P'<CR>"),
    },
    opts = {
      spacing = 1,
    },
  }

  local opts = {
    layout = {
      { type = "padding", val = 5 },
      header1,
      header2,
      header3,
      header4,
      header5,
      header6,
      { type = "padding", val = 3 },
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
