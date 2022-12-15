local utils = require("plugins.feline.utils")
local icons = require("plugins.feline.icons")

return {
  provider = function()
    return utils.diag_count("hint")
  end,
  hl = "FelineDiagHint",
  icon = "",
  left_sep = {
    str = icons.left_filled,
    hl = "FelineDiagHintSep",
    always_visible = true
  },
  truncate_hide = true,
  priority = -1,
}
