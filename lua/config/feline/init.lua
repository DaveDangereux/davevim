local c = require("config.feline.components")
require("config.feline.themes.davedark")

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
        "qf",
        "toggleterm",
      }
    }
  })
end

-- Autocommands to reload this config on save

local packages = {
  "config.feline",
  "config.feline.util",
  "config.feline.components",
  "config.feline.components.default",
  "config.feline.components.vim-mode",
  "config.feline.components.vim-mode.mode-options",
  "config.feline.components.git-branch",
  "config.feline.components.file-info",
  "config.feline.components.git-diff",
  "config.feline.components.git-diff.added",
  "config.feline.components.git-diff.changed",
  "config.feline.components.git-diff.removed",
  "config.feline.components.diagnostics",
  "config.feline.components.diagnostics.error",
  "config.feline.components.diagnostics.warn",
  "config.feline.components.diagnostics.info",
  "config.feline.components.diagnostics.hint",
  "config.feline.components.file-type",
  "config.feline.components.file-format",
  "config.feline.components.file-encoding",
  "config.feline.components.position",
  "config.feline.components.line-percentage",
  "config.feline.components.navic",
  "config.feline.components.inactive-file-info",
  "config.feline.themes.davedark",
  "config.feline.themes.davedark.palette",
}

vim.cmd([[
  augroup feline_commands 
  autocmd! 
  augroup end
]])

for _, value in ipairs(packages) do
  vim.cmd([[
    augroup feline_commands
      autocmd BufWritePost *nvim/lua/config/feline/** lua package.loaded["]] .. value .. [["] = nil
    augroup end
  ]])
end

vim.cmd([[
  augroup feline_commands
    autocmd BufWritePost *nvim/lua/config/feline/** lua require("config.feline").config()
  augroup end
]])

return M
