local icons = require("config.feline.icons")

return {
  provider = "file_info",
  hl = "FelineInactiveFileType",
  left_sep = {
    str = icons.slant_right .. " ",
    hl = "FelineInactiveFileTypeSep"
  },
  right_sep = {
    str = " " .. icons.slant_left,
    hl = "FelineInactiveFileTypeSep"
  }
}

