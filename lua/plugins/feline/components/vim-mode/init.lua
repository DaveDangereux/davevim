local vi_mode_utils = require("feline.providers.vi_mode")
local mode_options = require("plugins.feline.components.vim-mode.mode-options")
local icons = require("plugins.feline.icons")

local get_mode_options = function()
  if not mode_options[vi_mode_utils.get_vim_mode()] then
    print("Unsupported vim mode: " .. vi_mode_utils.get_vim_mode())
    return
  end
  return mode_options[vi_mode_utils.get_vim_mode()] or mode_options["DEFAULT"]
end


return {
  provider = function()
    return string.format(" %s ", get_mode_options().text)
  end,
  hl = function()
    return mode_options[vi_mode_utils.get_vim_mode()].hl
  end,
  right_sep = {
    str = icons.slant_left_2,
    hl = function()
      return mode_options[vi_mode_utils.get_vim_mode()].right_sep_hl
    end,
  },
  priority = 3,
}
