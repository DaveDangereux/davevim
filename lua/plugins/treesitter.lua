-------------------------------------------------------------------------------
-- Includes configs for
-- - treesitter
-- - ts-rainbow
-- - playground
-------------------------------------------------------------------------------

local M = {}

local settings = {
  -- treesitter
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
  sync_install = true,
  ignore_install = { "" },
  highlight = {
    enable = true,
    disable = { "html" },
    additional_vim_regex_highlighting = true,
  },

  -- ts-rainbow
  rainbow = {
    enable = true,
    extended_mode = false,
    colors = {
      -- Color test: { { { { { { { } } } } } } }
      "#ffd700", -- Gold
      "#da70d6", -- Orchid
      "#87cefa", -- LightSkyBlue
      "#fa8072", -- Salmon
      "#7cf800", -- LawnGreen
      "#ff8c00", -- DarkOrange
      "#fff8dc", -- Cornsilk
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
    print("Failed to load treesitter.configs")
  end

  configs.setup(settings)
end

return M
