local M = {}

M.diag_count = function(severity)
  local count = vim.tbl_count(vim.diagnostic.get(0, { severity = severity }))
  return count ~= 0 and string.format(" %s ", count) or ""
end

return M
