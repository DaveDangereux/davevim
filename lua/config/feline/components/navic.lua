local navic = require("nvim-navic")
local icons = require("config.feline.icons")

return {
  provider = function()
    -- This horrible hack is to prevent weird brown boxes from appearing next
    -- to navic. Not sure who's to blame - navic or vim
    package.loaded["colorschemes.davedark.themes.default"] = nil
    local c = require("colorschemes.davedark.themes.default")
    vim.cmd("hi StatusComponent_D0D0D0_1F1F23_NONE guibg=" .. c.statusline_navic_bg)
    return navic.is_available() and navic.get_location() ~= "" and string.format(" %s", navic.get_location()) or ""
  end,
  left_sep = {
    str = icons.left_filled,
    hl = "FelineNavicSep",
    always_visible = true,
  },
  right_sep = {
    str = " ",
    hl = "NavicText",
    always_visible = false,
  },
  truncate_hide = true,
  priority = -2,
  padding = {
    col = 0,
  },
}
