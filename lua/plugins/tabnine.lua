return {
  "codota/tabnine-nvim",
  build = "./dl_binaries.sh",
  config = function()
    -- local settings = {
    --   disable_auto_comment = true,
    --
    -- }
    require("tabnine").setup()
  end,
}

-- return {}
