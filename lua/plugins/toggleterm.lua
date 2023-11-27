return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    size = function(term)
      if term.direction == "horizontal" then
        return 6
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,
    highlights = {
      FloatBorder = {
        link = "FloatBorder",
      },
    },
    shade_terminals = false,
    direction = "vertical",
    float_opts = {
      border = "curved",
    },
  },
}
