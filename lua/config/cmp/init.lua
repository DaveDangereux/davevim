-------------------------------------------------------------------------------
-- NOTES
--
-- First, a snippet engine must be set - we've installed Luasnip and followed
-- the recommended implementation under the 'snippet' key.
--
-- Completion uses 'sources', which are installed as plugins and referenced
-- in the 'sources' table of cmp settings. Luasnip can also be used as a
-- completion source, although this isn't strictly necessary.
-------------------------------------------------------------------------------

local kind_icons = require("config.cmp.kind-icons")

local M = {}

local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  print("Failed to configure cmp")
  return
end

local luasnip_status_ok, luasnip = pcall(require, "luasnip")
if not luasnip_status_ok then
  print("Failed to load luasnip")
  return
end

require("luasnip/loaders/from_vscode").lazy_load()

local check_backspace = function()
  local col = vim.fn.col(".") - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match("%s")
end

local source_names = {
  nvim_lua = "[vim.lsp]",
  nvim_lsp = "[LSP]",
  luasnip = "[Snippet]",
  buffer = "[Buffer]",
  path = "[Path]",
  calc = "[Calc]",
}

local duplicates = {
  buffer = 1,
  path = 1,
  nvim_lsp = 0,
  luasnip = 1,
}

local duplicates_default = 0

local settings = {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      vim_item.kind = kind_icons[vim_item.kind]
      vim_item.menu = source_names[entry.source.name]
      vim_item.dup = duplicates[entry.source.name] or duplicates_default
      return vim_item
    end,
  },
  mapping = {
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }), -- does this work?
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expandable() then
        luasnip.expand()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif check_backspace() then
        fallback()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  },
  -- Reorder these to change the order in the popup menu
  sources = {
    { name = "nvim_lua" }, -- vim.lsp.*
    { name = "nvim_lsp" }, -- LSP completion
    { name = "luasnip" }, -- snippet completion
    { name = "path" },
    { name = "calc" },
    { name = "buffer" }, -- Buffer variables
  },
  experimental = {
    ghost_text = true,
    native_menu = false,
  },
}

M.config = function()
  cmp.setup(settings)
end

return M
