return {
  "lervag/vimtex",
  config = function()
    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_complete_close_braces = 1
    vim.g.vimtex_fold_manual = 1
    vim.g.vimtex_quickfix_mode = 0
    vim.g.vimtex_view_forward_search_on_start = 0
  end,
}
