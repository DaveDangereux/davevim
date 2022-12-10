local icons = require("config.feline.icons")

return {
  provider = {
    name = "file_info",
    opts = {
      type = "unique"
    }
  },
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
