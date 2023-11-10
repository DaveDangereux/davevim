return {
  "Shatur/neovim-session-manager",
  config = function()
    local settings = {
      autoload_mode = require("session_manager.config").AutoloadMode.Disabled,
      autosave_ignore_not_normal = true,
    }

    require("session_manager").setup(settings)
  end,
}
