local utils = require("config.feline.utils")
local icons = require("config.feline.icons")

return {
  provider = function()
    return utils.diag_count("error")
  end,
  hl = "FelineDiagError",
  icon = "",
  left_sep = {
    str = icons.left_filled,
    hl = "FelineDiagErrorSep",
    always_visible = true
  },
  truncate_hide = true,
  priority = -1,
}
