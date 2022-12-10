local cursor_utils = require("feline.providers.cursor")
local icons = require("config.feline.icons")

return {
  provider = function()
    return string.format(" %s ", cursor_utils.position(0, {}))
  end,
  hl = "FelinePosition",
  left_sep = {
    str = icons.left_filled,
    hl = "FelinePositionSep"
  },
  priority = 1
}
