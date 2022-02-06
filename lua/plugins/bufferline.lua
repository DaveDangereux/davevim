local M = {}

local palette = {
  diagnostic1 = "#FFFF00",
  diagnostic2 = "#00FFFF",
  active_background = "#444444",
  visible_background = "#00FF00",
  inactive_background = "#0000FF",
  black = "#000000",
  none = "none"
}

local settings = {
  highlights = {

    ---------------------------------------------------------------------------
    -- Selected
    ---------------------------------------------------------------------------

    tab_selected = {
      guibg = palette.diagnostic1,
      guifg = palette.diagnostic2
    },
    buffer_selected = {
      guibg = palette.active_background
    },
    close_button_selected = {
      guibg = palette.active_background
    },
    diagnostic_selected = {
      guibg = palette.active_background
    },
    info_selected = {
      guibg = palette.active_background,
      gui = "bold,italic",
      guisp = palette.diagnostic1
    },
    info_diagnostic_selected = {
      guibg = palette.active_background,
      gui = "bold,italic",
      guisp = palette.diagnostic1
    },
    warning_selected = {
      guibg = palette.active_background,
      gui = "bold,italic",
      guisp = palette.diagnostic1
    },
    warning_diagnostic_selected = {
      guibg = palette.active_background,
      gui = "bold,italic",
      guisp = palette.diagnostic1
    },
    error_selected = {
      guibg = palette.active_background,
      gui = "bold,italic",
      guisp = palette.diagnostic1
    },
    error_diagnostic_selected = {
      guibg = palette.active_background,
      gui = "bold,italic",
      guisp = palette.diagnostic1
    },
    modified_selected = {
      guibg = palette.active_background,
    },
    duplicate_selected = {
      gui = "italic",
      guibg = palette.diagnostic2
    },
    separator_selected = {
      guifg = palette.black,
      guibg = palette.active_background
    },
    indicator_selected = {
      guifg = palette.diagnostic1,
      guibg = palette.diagnostic2
    },
    pick_selected = {
      guifg = palette.diagnostic1,
      guibg = palette.diagnostic2,
      gui = "bold,italic"
    },

    ---------------------------------------------------------------------------
    -- Visible
    ---------------------------------------------------------------------------

    separator_visible = {
      guifg = palette.black,
      -- guibg = palette.visible_background
    },

    ---------------------------------------------------------------------------
    -- Unselected
    ---------------------------------------------------------------------------

    separator = {
      guifg = palette.black,
      -- guibg = palette.inactive_background
    },

    ---------------------------------------------------------------------------
    -- Other
    ---------------------------------------------------------------------------

    fill = {
      guibg = palette.none
    },

  },
  options = {
    numbers = function()
      return ""
    end,
    diagnostics = "nvim_lsp",
    offsets = {
      { filetype = "NvimTree" }
    },
    show_close_icon = false,
    separator_style = "slant",
    enforce_regular_tabs = false,
    custom_areas = {
      right = function()
        local result = {}
        local seve = vim.diagnostic.severity
        local error = #vim.diagnostic.get(0, {severity = seve.ERROR})
        local warning = #vim.diagnostic.get(0, {severity = seve.WARN})
        local info = #vim.diagnostic.get(0, {severity = seve.INFO})
        local hint = #vim.diagnostic.get(0, {severity = seve.HINT})

        if error ~= 0 then
          table.insert(result, {text = "  " .. error, guifg = "#EC5241"})
        end

        if warning ~= 0 then
          table.insert(result, {text = "  " .. warning, guifg = "#EFB839"})
        end

        if hint ~= 0 then
          table.insert(result, {text = "  " .. hint, guifg = "#A3BA5E"})
        end

        if info ~= 0 then
          table.insert(result, {text = "  " .. info, guifg = "#7EA9A7"})
        end
        return result
      end,
    }
  }
}

M.config = function()
  local status_ok, bufferline = pcall(require, "bufferline")
  if not status_ok then
    print "Failed to load bufferline"
  end

  bufferline.setup(settings)
end

return M
