local M = {}

local apply_keymaps = require("core.keymaps.keymap-tools").apply_keymaps

-------------------------------------------------------------------------------
-- Core keymaps
-------------------------------------------------------------------------------

-- Remap space as leader key
vim.g.mapleader = " "

local keymaps = {
  normal_mode = {
    -- Better window movement
    ["<C-h>"] = "<C-w>h",
    ["<C-j>"] = "<C-w>j",
    ["<C-k>"] = "<C-w>k",
    ["<C-l>"] = "<C-w>l",

    -- Resize with arrows
    ["<C-Up>"] = ":resize -2 <CR>",
    ["<C-Down>"] = ":resize +2 <CR>",
    ["<C-Left>"] = ":vertical resize +2 <CR>",
    ["<C-Right>"] = ":vertical resize -2 <CR>",

    -- Move text up and down
    ["<A-j>"] = ":m .+1 <CR>==",
    ["<A-k>"] = ":m .-2 <CR>==",

    -- Toggle word-wrap
    ["<A-z>"] = ":set wrap! <CR>",

    -- Hide search highlighting
    ["<Leader>h"] = ":noh <CR>"
  },
  insert_mode = {
    -- 'jk' for quitting insert mode
    ["jk"] = "<Esc>"
  },
  visual_mode = {
    -- Stay in indent mode
    ["<"] = "<gv",
    [">"] = ">gv",
    -- Move text up and down
    ["<A-j>"] = ":m .+1 <CR>==",
    ["<A-k>"] = ":m .-2 <CR>=="
    --["p"] = '"_dP' -- what does this do?
  },
  visual_block_mode = {
    ["J"] = ":move '>+1 <CR>gv-gv",
    ["K"] = ":move '<-2 <CR>gv-gv",
    ["<A-j>"] = ":move '>+1<CR>gv-gv",
    ["<A-k>"] = ":move '<-2<CR>gv-gv"
  }
}

apply_keymaps(keymaps)

-------------------------------------------------------------------------------
-- Plugin-specific keymaps
-------------------------------------------------------------------------------

-- nvimtree
local nvimtree_keymaps = {
  normal_mode = {
    ["<Leader>e"] = ":NvimTreeToggle <CR>"
  }
}

-- zen-mode
local zenmode_keymaps = {
  normal_mode = {
    ["<Leader>z"] = ":ZenMode <CR>"
  }
}

-- bufferline
local bufferline_keymaps = {
  normal_mode = {
    ["<S-l>"] = ":BufferLineCycleNext <CR>",
    ["<S-h>"] = ":BufferLineCyclePrev <CR>"
  }
}

-- bufdel
local bufdel_keymaps = {
  normal_mode = {
    ["<Leader>c"] = ":BufDel <CR>"
  }
}

-- twilight
local twilight_keymaps = {
  normal_mode = {
    ["<Leader>t"] = ":Twilight <CR>"
  }
}

-- telescope
local telescope_keymaps = {
  normal_mode = {
    ["<Leader>ff"] = ":lua require('telescope.builtin').find_files() <CR>",
    ["<Leader>fg"] = ":lua require('telescope.builtin').live_grep() <CR>",
    ["<Leader>fb"] = ":lua require('telescope.builtin').buffers() <CR>",
    ["<Leader>fh"] = ":lua require('telescope.builtin').help_tags() <CR>"
  }
}

-- LSP
local lsp_keymaps = {
  normal_mode = {
    ["gD"] = ":lua vim.lsp.buf.declaration() <CR>",
    ["gd"] = ":lua vim.lsp.buf.definition() <CR>",
    ["K"] = ":lua vim.lsp.buf.hover() <CR>",
    ["gI"] = ":lua vim.lsp.buf.implementation() <CR>",
    ["<C-k>"] = ":lua vim.lsp.buf.signature_help() <CR>",
    ["<Leader>rn"] = ":lua vim.lsp.buf.rename() <CR>",
    ["gr"] = ":lua vim.lsp.buf.references() <CR>",
    ["<Leader>ca"] = ":lua vim.lsp.buf.code_action() <CR>",
    ["[d"] = ":lua vim.diagnostic.goto_prev({ border = 'rounded' }) <CR>",
    ["]d"] = ":lua vim.diagnostic.goto_next({ border = 'rounded' }) <CR>",
    ["gl"] = ":lua vim.diagnostic.open_float() <CR>",
    ["<Leader>q"] = ":lua vim.diagnostic.setloclist() <CR>"
  }
}

-------------------------------------------------------------------------------
-- Exports
-------------------------------------------------------------------------------

M.nvimtree = function()
  apply_keymaps(nvimtree_keymaps)
end

M.zenmode = function()
  apply_keymaps(zenmode_keymaps)
end

M.bufferline = function()
  apply_keymaps(bufferline_keymaps)
end

M.bufdel = function()
  apply_keymaps(bufdel_keymaps)
end

M.twilight = function()
  apply_keymaps(twilight_keymaps)
end

M.telescope = function()
  apply_keymaps(telescope_keymaps)
end

M.lsp = function(bufnr)
  apply_keymaps(lsp_keymaps, bufnr)
  vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
end

return M
