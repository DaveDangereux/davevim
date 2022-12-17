local M = {}

local utils = require("core.utils")

M.config = function()
  -- Refresh cache in case we're reloading after making changes
  utils.clear_packages_recursively("plugins.feline")

  require("plugins.feline.theme.davedark")

  local c = require("plugins.feline.components")

  local components = {
    active = {
      { -- left
        c.vim_mode,
        c.git_branch,
        c.file_info,
        c.git_diff.added,
        c.git_diff.changed,
        c.git_diff.removed,
        c.default,
      },
      { -- right
        c.navic,
        c.diagnostics.error,
        c.diagnostics.warn,
        c.diagnostics.info,
        c.diagnostics.hint,
        c.file_type,
        c.file_format,
        c.file_encoding,
        c.position,
        c.line_percentage,
      },
    },
    inactive = {
      { -- left
        c.inactive_file_info,
        c.default,
      },
      { -- right
      },
    },
  }

  local status_ok, feline = pcall(require, "feline")
  if not status_ok then
    print("Failed to require feline")
    return
  end

  feline.setup({
    components = components,
    disable = {
      filetypes = {
        "NvimTree",
        "alpha",
        "qf",
        "toggleterm",
      },
    },
  })
end

return M
