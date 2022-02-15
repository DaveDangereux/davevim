local icons = require("plugins.feline.icons")

return {
  provider = "file_info",
  hl = "FelineFileInfo",
  left_sep = {
    str = " ",
    hl = "FelineFileInfo"
  },
  right_sep = {
    str = " " .. icons.slant_left,
    hl = "FelineFileInfoRightSep"
  },
  priority = 2,
}
