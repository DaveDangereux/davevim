local utils = require("core.utils")

return function(theme_variant)
  -- Refresh cache in case we're reloading after making changes
  utils.clear_packages_recursively("colorschemes.davedark")

  -- For LSP references to work whilst still allowing for theme variants (the
  -- re-colouring of theme elements), we need each highlight group to directly
  -- require the default theme and then take an optional theme_variant string
  -- parameter that, if present, will require the theme variant and overwrite
  -- the default. This allows us to edit and refine the default theme elements,
  -- which then represent a template (like a type) that other themes must
  -- follow.
  local general = require("colorschemes.davedark.highlights.general")(theme_variant)
  local languages = require("colorschemes.davedark.highlights.languages")(theme_variant)
  local lsp = require("colorschemes.davedark.highlights.lsp")(theme_variant)
  local plugins = require("colorschemes.davedark.highlights.plugins")(theme_variant)
  local treesitter = require("colorschemes.davedark.highlights.treesitter")(theme_variant)

  -- Run this yourself if you want - it just causes headaches with resetting
  -- plugins
  -- vim.api.nvim_command("hi clear")

  local clear_hlgroups_recursively = function(name, opts)
    opts = opts or {}

    for group in pairs(vim.api.nvim_get_hl(0, {})) do
      -- for group in pairs(vim.api.nvim__get_hl_defs(0)) do
      if group:find("^" .. name) and (opts.exclude == nil or not group:find(opts.exclude)) then
        vim.cmd("hi clear " .. group)
      end
    end
  end

  clear_hlgroups_recursively("BufferLine")

  if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
  end

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = theme_variant or "davedark"

  local highlight_modules = {
    general,
    languages,
    lsp,
    plugins,
    treesitter,
  }

  for _, highlights in ipairs(highlight_modules) do
    for group, opts in pairs(highlights) do
      vim.api.nvim_set_hl(0, group, opts)
    end
  end

  utils.refresh_package_highlights()
end
