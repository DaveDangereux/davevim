local file_utils = require("feline.providers.file")

return {
  provider = function()
    return string.format("%s ", file_utils.file_encoding():lower())
  end,
  hl = "FelineFileFormat",
  truncate_hide = true,
}
