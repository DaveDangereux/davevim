return {
  "codota/tabnine-nvim",
  build = "./dl_binaries.sh",
  config = function()
    local settings = {
      accept_keymap = "<A-l>",
    }
    require("tabnine").setup(settings)
  end,
}
