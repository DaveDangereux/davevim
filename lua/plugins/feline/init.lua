local c = require("plugins.feline.components")
require("plugins.feline.themes.davedark")

local M = {}

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
      c.gps,
      c.diagnostics.error,
      c.diagnostics.warn,
      c.diagnostics.info,
      c.diagnostics.hint,
      c.file_type,
      c.file_format,
      c.file_encoding,
      c.position,
      c.line_percentage,
    }
  },
  inactive = {
    { -- left
      c.inactive_file_info,
      c.default,
    },
    { -- right
    }
  }
}

M.config = function()
  local status_ok, feline = pcall(require, "feline")
  if not status_ok then
    print("Failed to configure feline")
    return
  end

  feline.setup({
    components = components,
    disable = {
      filetypes = {
        "NvimTree",
        "alpha",
        "qf"
      }
    }
  })
end

-- Autocommands to reload this config on save

local packages = {
  "plugins.feline",
  "plugins.feline.util",
  "plugins.feline.components",
  "plugins.feline.components.default",
  "plugins.feline.components.vim-mode",
  "plugins.feline.components.vim-mode.mode-options",
  "plugins.feline.components.git-branch",
  "plugins.feline.components.file-info",
  "plugins.feline.components.gps",
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
  "plugins.feline.components.inactive-file-info",
  "plugins.feline.themes.davedark",
  "plugins.feline.themes.davedark.palette",
}

vim.cmd([[
  augroup feline_commands 
  autocmd! 
  augroup end
]])

for _, value in ipairs(packages) do
  vim.cmd([[
    augroup feline_commands
      autocmd BufWritePost *nvim/lua/plugins/feline/** lua package.loaded["]] .. value .. [["] = nil
    augroup end
  ]])
end

vim.cmd([[
  augroup feline_commands
    autocmd BufWritePost *nvim/lua/plugins/feline/** lua require("plugins.feline").config()
  augroup end
]])

return M
