local gps = require("nvim-gps")
local icons = require("plugins.feline.icons")

return {
  provider = function()
    return gps.is_available() and gps.get_location() ~= "" and string.format(" %s ", gps.get_location()) or ""
  end,
  hl = "FelineGps",
  left_sep = {
    str = icons.left_filled,
    hl = "FelineGpsSep",
    always_visible = true
  },
  truncate_hide = true,
  priority = -2,
}
