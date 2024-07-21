return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "HiPhish/rainbow-delimiters.nvim",
    "nvim-treesitter/playground",
    "JoosepAlviste/nvim-ts-context-commentstring", -- fix jsx / tsx commenting
    "nvim-treesitter/nvim-treesitter-textobjects", -- treesitter text objects
    "windwp/nvim-ts-autotag",
    "rush-rs/tree-sitter-asm",
  },
  config = function()
    local c = require("colorschemes.davedark.themes.default")

    require("nvim-treesitter.parsers").get_parser_configs().asm = {
      install_info = {
        url = "https://github.com/rush-rs/tree-sitter-asm.git",
        files = { "src/parser.c" },
        branch = "main",
      },
    }

    local settings = {
      ensure_installed = {
        "asm",
        "bash",
        "c",
        "c_sharp",
        "comment",
        "cpp",
        "css",
        "diff",
        "dockerfile",
        "git_rebase",
        "gitcommit",
        "gitignore",
        "html",
        "http",
        "javascript",
        "jsdoc",
        "json",
        "json5",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "prisma",
        "python",
        "query",
        "regex",
        "ruby",
        "rust",
        "scss",
        "solidity",
        "sql",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
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
      fold = {
        enable = true,
      },

      -- playground (required for TSHighlightCapturesUnderCursor)
      playground = {
        enable = true,
      },

      -- textobjects
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@call.outer",
            ["ic"] = "@call.inner",
          },
          -- selection_modes = {
          --   ["@function.outer"] = "V",
          -- },
        },
      },

      -- autotag
      autotag = {
        enable = true,
      },
    }

    -- context-commentstring
    vim.g.skip_ts_context_commentstring_module = true

    require("nvim-treesitter.configs").setup(settings)
  end,
}
