local file_utils = require("feline.providers.file")
local icons = require("plugins.feline.icons")

return {
  provider = function()
    local file_type = file_utils.file_type(0, {})
    return file_type ~= "" and string.format(" %s ", file_type) or ""
  end,
  hl = "FelineFileType",
  left_sep = {
    str = icons.left_filled,
    hl = "FelineFileTypeSep",
    always_visible = true,
  },
  truncate_hide = true,
}
