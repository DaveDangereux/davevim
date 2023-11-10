return {
  "RRethy/vim-illuminate",
  config = function()
    local settings = {
      providers = {
        "lsp",
        "treesitter",
        "regex",
      },
      delay = 1000,
      filetypes_denylist = {
        "markdown",
        "NvimTree",
      },
      filetypes_allowlist = {
        "lua",
        "vim",
        "python",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
      },
      under_cursor = true,
    }

    require("illuminate").configure(settings)

    vim.schedule(function()
      vim.cmd("IlluminatePause")
    end)
  end,
}
