-------------------------------------------------------------------------------
-- Includes configs for:
-- - treesitter
-- - ts-rainbow
-- - playground
-- - context-commentstring
-------------------------------------------------------------------------------

local M = {}

local c = require("colorschemes.davedark.themes.default")

local settings = {
  ensure_installed = {
    "bash",
    "c_sharp",
    "comment",
    "cpp",
    "css",
    "diff",
    "dockerfile",
    "elixir",
    "git_rebase",
    "gitcommit",
    "gitignore",
    "graphql",
    "haskell",
    "html",
    "http",
    "java",
    "javascript",
    "jsdoc",
    "json",
    "json5",
    "kotlin",
    "lua",
    "make",
    "markdown",
    "markdown_inline",
    "php",
    "phpdoc",
    "prisma",
    "python",
    "query",
    "regex",
    "ruby",
    "rust",
    "scss",
    "solidity",
    "sql",
    "svelte",
    "swift",
    "toml",
    "tsx",
    "twig",
    "typescript",
    "vim",
    "vue",
    "yaml",
  },
  sync_install = false,
  ignore_install = { "" },
  highlight = {
    enable = true,
    -- disable = { "html" },
    additional_vim_regex_highlighting = true,
  },

  -- ts-rainbow
  rainbow = {
    enable = true,
    disable = { "html" },
    extended_mode = false,
    colors = {
      -- Color test: { { { { { { { } } } } } } }
      c.indent_1,
      c.indent_2,
      c.indent_3,
      c.indent_4,
      c.indent_5,
      c.indent_6,
      c.indent_7,
    },
  },

  -- playground (required for TSHighlightCapturesUnderCursor)
  playground = {
    enable = true,
  },

  -- context-commentstring
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}

M.config = function()
  local status_ok, configs = pcall(require, "nvim-treesitter.configs")
  if not status_ok then
    print("Failed to require nvim-treesitter.configs")
  end

  configs.setup(settings)
end

return M
