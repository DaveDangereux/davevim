local M = {}

M.config = function()
  -- Refresh cache in case we're reloading after making changes
  local packages = {
    "plugins.feline",
    "plugins.feline.utils",
    "plugins.feline.components",
    "plugins.feline.components.default",
    "plugins.feline.components.vim-mode",
    "plugins.feline.components.vim-mode.mode-options",
    "plugins.feline.components.git-branch",
    "plugins.feline.components.file-info",
    "plugins.feline.components.git-diff",
    "plugins.feline.components.git-diff.added",
    "plugins.feline.components.git-diff.changed",
    "plugins.feline.components.git-diff.removed",
    "plugins.feline.components.diagnostics",
    "plugins.feline.components.diagnostics.error",
    "plugins.feline.components.diagnostics.warn",
    "plugins.feline.components.diagnostics.info",
    "plugins.feline.components.diagnostics.hint",
    "plugins.feline.components.file-type",
    "plugins.feline.components.file-format",
    "plugins.feline.components.file-encoding",
    "plugins.feline.components.position",
    "plugins.feline.components.line-percentage",
    "plugins.feline.components.navic",
    "plugins.feline.components.inactive-file-info",
    "plugins.feline.themes.davedark",
    "plugins.feline.themes.davedark.palette",
  }

  for _, pkg in pairs(packages) do
    package.loaded[pkg] = nil
  end

  require("plugins.feline.themes.davedark")

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
