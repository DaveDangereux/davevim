return {
  "kevinhwang91/nvim-ufo",
  dependencies = "kevinhwang91/promise-async",
  config = function()
    local settings = {
      open_fold_hl_timeout = 0,
      provider_selector = function(bufnr, filetype, buftype)
        return { "lsp", "indent" }
      end,
    }

    require("ufo").setup(settings)
  end,
}
