local cursor_utils = require("feline.providers.cursor")
local icons = require("plugins.feline.icons")

return {
  provider = function()
    return string.format(" %s ", cursor_utils.line_percentage({}, {}))
  end,
  hl = "FelinePosition",
  left_sep = {
    str = icons.left,
    hl = "FelinePosition",
  },
  priority = 1,
}
