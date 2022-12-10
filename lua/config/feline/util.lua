local M = {}

M.diag_count = function(severity)
  local count = vim.tbl_count(vim.diagnostic.get(0, { severity = severity }))
  return count ~= 0 and string.format(" %s ", count) or ""
end

M.git_diff = function(type)
  local gsd = vim.b.gitsigns_status_dict

  if gsd and gsd[type] and gsd[type] > 0 then
    return string.format(" %s ", gsd[type])
  end

  return ""
end

M.load_colorscheme = function(colorscheme)
  local function highlight(group, properties)
    local bg = properties.bg == nil and "" or "guibg=" .. properties.bg
    local fg = properties.fg == nil and "" or "guifg=" .. properties.fg
    local style = properties.style == nil and "" or "gui=" .. properties.style

    local cmd = table.concat({
      "highlight",
      group,
      bg,
      fg,
      style,
    }, " ")

    vim.api.nvim_command(cmd)
  end

  for group, properties in pairs(colorscheme) do
    highlight(group, properties)
  end
end
return M
