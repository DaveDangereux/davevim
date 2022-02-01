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
     
    -- Navigate buffers
    ["<S-l>"] = ":bnext <CR>",
    ["<S-h>"] = ":bprevious <CR>",

    -- Buffer management
    ["<Leader>c"] = ":bd <CR>",
    
    -- Toggle word-wrap
    ["<Leader>w"] = ":set wrap! <CR>"
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
    ["<A-k>"] = ":m .-2 <CR>==",
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

M.nvimtree = function()
  apply_keymaps(nvimtree_keymaps)
end

-- zen-mode
local zenmode_keymaps = {
  normal_mode = {
    ["<Leader>z"] = ":ZenMode <CR>"
  }
}

M.zenmode = function()
  apply_keymaps(zenmode_keymaps)
end

return M
