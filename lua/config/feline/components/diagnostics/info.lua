local util = require("config.feline.util")
local icons = require("config.feline.icons")

return {
  provider = function()
    return util.diag_count("info")
  end,
  hl = "FelineDiagInfo",
  icon = "",
  left_sep = {
    str = icons.left_filled,
    hl = "FelineDiagInfoSep",
    always_visible = true
  },
  truncate_hide = true,
  priority = -1,
}
