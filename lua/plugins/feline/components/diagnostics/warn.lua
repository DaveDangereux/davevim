local util = require("plugins.feline.util")
local icons = require("plugins.feline.icons")

return {
  provider = function()
    return util.diag_count("warn")
  end,
  hl = "FelineDiagWarn",
  icon = "",
  left_sep = {
    str = icons.left_filled,
    hl = "FelineDiagWarnSep",
    always_visible = true
  },
  truncate_hide = true,
  priority = -1,
}
