return {
  "nvimdev/lspsaga.nvim",
  event = "LspAttach",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    lightbulb = {
      enable = false,
      sign = false,
      virtual_text = false,
    },
    finder = {
      keys = {
        edit = "<CR>",
        vsplit = "<Leader>v",
      },
    },
    definition = {
      keys = {
        edit = "<CR>",
        vsplit = "<Leader>v",
      },
    },
    symbol_in_winbar = {
      enable = false,
    },
  },
}
