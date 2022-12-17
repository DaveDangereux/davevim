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

local M = {}

local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  print("Failed to require cmp")
  return
end

local luasnip_status_ok, luasnip = pcall(require, "luasnip")
if not luasnip_status_ok then
  print("Failed to require luasnip")
  return
end

local lspkind_status_ok, lspkind = pcall(require, "lspkind")
if not lspkind_status_ok then
  print("Failed to require lspkind")
  return
end

local cmp_autopairs_status_ok, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
if not cmp_autopairs_status_ok then
  print("Failed to require nvim-autopairs.completion.cmp")
  return
end
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

require("luasnip/loaders/from_vscode").lazy_load()

local check_backspace = function()
  local col = vim.fn.col(".") - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match("%s")
end

local settings = {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = {
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-d>"] = cmp.mapping.scroll_docs(4),
    ["<C-u>"] = cmp.mapping.scroll_docs(-4),
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
    { name = "luasnip", keyword_length = 3 }, -- snippet completion
    { name = "buffer" }, -- Buffer variables
    { name = "path" },
    { name = "calc" },
  },
  -- sorting = {
  --   priority_weight = 2
  -- },
  experimental = {
    ghost_text = true,
    native_menu = false,
  },
  window = {
    completion = {
      winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
      col_offset = -3,
      side_padding = 0,
    },
  },
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      local source_names = {
        nvim_lua = "vim.lsp",
        nvim_lsp = "LSP",
        luasnip = "Luasnip",
        buffer = "Buffer",
        path = "Path",
        calc = "Calc",
      }
      local duplicates = {
        buffer = 1,
        path = 1,
        nvim_lsp = 0,
        luasnip = 1,
      }
      local duplicates_default = 0
      local kind = lspkind.cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
      local strings = vim.split(kind.kind, "%s", { trimempty = true })
      kind.kind = " " .. strings[1] .. " "
      kind.menu = "    (" .. strings[2] .. ", " .. source_names[entry.source.name] .. ")"
      kind.dup = duplicates[entry.source.name] or duplicates_default
      return kind
    end,
  },
}

M.config = function()
  cmp.setup(settings)
end

return M
