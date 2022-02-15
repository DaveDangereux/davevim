local file_utils = require("feline.providers.file")
local icons = require("plugins.feline.icons")

return {
  provider = function()
    local format = file_utils.file_format()
    local format_icon = ""
    if format == "UNIX" then
      format_icon = icons.unix
    elseif format == "MAC" then
      format_icon = icons.mac
    elseif format == "DOS" then
      format_icon = icons.dos
    end

    return string.format(" %s ", format_icon)
  end,
  hl = "FelineFileFormat",
  left_sep = {
    str = icons.left_filled,
    hl = "FelineFileFormatSep"
  },
  truncate_hide = true,
  priority = -1
}
