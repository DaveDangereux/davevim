return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function()
    local c = require("colorschemes.davedark.themes.default")

    local scope_highlight = {
      "IndentBlanklineIndent1",
      "IndentBlanklineIndent2",
      "IndentBlanklineIndent3",
      "IndentBlanklineIndent4",
      "IndentBlanklineIndent5",
      "IndentBlanklineIndent6",
      "IndentBlanklineIndent7",
    }

    local hooks = require("ibl.hooks")
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "IndentBlanklineIndent1", { fg = c.indent_1 })
      vim.api.nvim_set_hl(0, "IndentBlanklineIndent2", { fg = c.indent_2 })
      vim.api.nvim_set_hl(0, "IndentBlanklineIndent3", { fg = c.indent_3 })
      vim.api.nvim_set_hl(0, "IndentBlanklineIndent4", { fg = c.indent_4 })
      vim.api.nvim_set_hl(0, "IndentBlanklineIndent5", { fg = c.indent_5 })
      vim.api.nvim_set_hl(0, "IndentBlanklineIndent6", { fg = c.indent_6 })
      vim.api.nvim_set_hl(0, "IndentBlanklineIndent7", { fg = c.indent_7 })
    end)

    local settings = {
      indent = {
        char = "▏",
      },
      scope = {
        char = "⎸",
        show_start = false,
        show_end = false,
        highlight = scope_highlight,
      },
      exclude = {
        filetypes = {
          "NvimTree",
          "alpha",
          "qf",
          "toggleterm",
        },
        buftypes = {
          "terminal",
          "nofile",
        },
      },
    }

    require("ibl").setup(settings)
  end,
}
