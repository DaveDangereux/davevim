local M = {}

M.kind_comparator = function(entry1, entry2)
  -- CompletionItemKind enum spec:
  -- https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/

  local kind_mapper = require("cmp.types").lsp.CompletionItemKind

  local kind_score = {
    Variable = 1,
    EnumMember = 2,
  }

  local kind1 = kind_score[kind_mapper[entry1:get_kind()]] or 100
  local kind2 = kind_score[kind_mapper[entry2:get_kind()]] or 100
  if kind1 < kind2 then
    return true
  end
end

M.lsp_entry_filter = function(entry, _)
  local entry_type = require("cmp.types").lsp.CompletionItemKind[entry:get_kind()]

  local is_text = entry_type == "Text"
  local is_snippet = entry_type == "Snippet"

  if is_text or is_snippet then
    return false
  else
    return true
  end
end

return M
