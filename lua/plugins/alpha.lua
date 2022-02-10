local M = {}

M.config = function ()
  local status_ok, alpha = pcall(require, "alpha")
  if not status_ok then
    print "Failed to configure alpha"
    return
  end

  local header = {
    type = "text",
    val = {
      "██████╗░░█████╗░██╗░░░██╗███████╗██╗░░░██╗██╗███╗░░░███╗",
      "██╔══██╗██╔══██╗██║░░░██║██╔════╝██║░░░██║██║████╗░████║",
      "██║░░██║███████║╚██╗░██╔╝█████╗░░╚██╗░██╔╝██║██╔████╔██║",
      "██║░░██║██╔══██║░╚████╔╝░██╔══╝░░░╚████╔╝░██║██║╚██╔╝██║",
      "██████╔╝██║░░██║░░╚██╔╝░░███████╗░░╚██╔╝░░██║██║░╚═╝░██║",
      "╚═════╝░╚═╝░░╚═╝░░░╚═╝░░░╚══════╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝",
    },
    opts = {
      position = "center",
      hl = "AlphaHeader"
    }
  }

  local function button(sc, txt, keybind)
    local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

    local opts = {
        position = "center",
        text = txt,
        shortcut = sc,
        cursor = 5,
        width = 24,
        align_shortcut = "right",
        hl_shortcut = "AlphaButtons",
        hl = "AlphaButtons",
    }
    if keybind then
        opts.keymap = {"n", sc_, keybind, {noremap = true, silent = true}}
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
    button( "LDR y", "   Explore" , ":Telescope file_browser<CR>"),
    button( "LDR h", "   Recents" , ":Telescope oldfiles<CR>"),
    button( "LDR /", "   Ripgrep" , ":Telescope live_grep<CR>"),
    -- button( "LDR b", "   Buffers" , ":Telescope buffers<CR>"),
    -- button( "MRK V", "   Options" , ":execute 'normal! `V'<CR>"),
    -- button( "MRK P", "   Plugins" , ":execute 'normal! `P'<CR>"),
    },
    opts = {
        spacing = 1,
    }
  }

  local opts = {
    layout = {
      { type = "padding", val = 5 },
      header,
      { type = "padding", val = 3 },
      -- section.heading,
      -- section.plugin_count,
      -- { type = "padding", val = 1 },
      buttons,
      -- { type = "padding", val = 1 },
      -- section.footer
    },
    opts = {
      margin = 5
    }
  }

  alpha.setup(opts)
end

return M
