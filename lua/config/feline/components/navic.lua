local navic = require("nvim-navic")
local icons = require("config.feline.icons")

return {
  provider = function()
    return navic.is_available() and navic.get_location() ~= "" and string.format(" %s ", navic.get_location()) or ""
  end,
  hl = "FelineGps",
  left_sep = {
    str = icons.left_filled,
    hl = "FelineGpsSep",
    always_visible = true,
  },
  truncate_hide = true,
  priority = -2,
}
