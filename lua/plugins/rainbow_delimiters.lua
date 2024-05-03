-- Color test: { { { { { { { } } } } } } }

return {
    "HiPhish/rainbow-delimiters.nvim",
    config = function()
        local settings = {
            highlight = {
                "RainbowDelimiter1",
                "RainbowDelimiter2",
                "RainbowDelimiter3",
                "RainbowDelimiter4",
                "RainbowDelimiter5",
                "RainbowDelimiter6",
                "RainbowDelimiter7",
            },
        }

        require("rainbow-delimiters.setup").setup(settings)
    end,
}
