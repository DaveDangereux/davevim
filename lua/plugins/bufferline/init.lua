local M = {}

local settings = {
  highlights = require("plugins.bufferline.highlights"),
  options = {
    close_command = "Bdelete! %d",
    right_mouse_command = "Bdelete! %d",
    left_mouse_command = "buffer %d",
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
    offsets = {
      { filetype = "NvimTree" },
    },
    show_tab_indicators = true,
    show_close_icon = false,
    separator_style = "slant",
    enforce_regular_tabs = false,
    custom_areas = {
      right = function()
        local result = {}
        local seve = vim.diagnostic.severity
        local error = #vim.diagnostic.get(0, { severity = seve.ERROR })
        local warning = #vim.diagnostic.get(0, { severity = seve.WARN })
        local info = #vim.diagnostic.get(0, { severity = seve.INFO })
        local hint = #vim.diagnostic.get(0, { severity = seve.HINT })

        if error ~= 0 then
          table.insert(result, { text = "  " .. error, guifg = "#EC5241" })
        end

        if warning ~= 0 then
          table.insert(result, { text = "  " .. warning, guifg = "#EFB839" })
        end

        if hint ~= 0 then
          table.insert(result, { text = "  " .. hint, guifg = "#A3BA5E" })
        end

        if info ~= 0 then
          table.insert(result, { text = "  " .. info, guifg = "#7EA9A7" })
        end
        return result
      end,
    },
  },
}

M.config = function()
  -- Refresh highlights cache in case we're reloading after making changes
  package.loaded["bufferline.highlights"] = nil

  local status_ok, bufferline = pcall(require, "bufferline")
  if not status_ok then
    print("Failed to require bufferline")
  end

  bufferline.setup(settings)
end

return M
