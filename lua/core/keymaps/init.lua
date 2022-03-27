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
    ["<C-Up>"] = ":resize +2 <CR>",
    ["<C-Down>"] = ":resize -2 <CR>",
    ["<C-Left>"] = ":vertical resize -2 <CR>",
    ["<C-Right>"] = ":vertical resize +2 <CR>",

    -- Tab management
    ["<CA-h>"] = ":tabprevious <CR>", -- gT
    ["<CA-l>"] = ":tabnext <CR>", -- gt
    ["<CA-t>"] = ":tabedit % <CR>", -- open current buffer in a new tab
    ["<CA-w>"] = ":tabclose <CR>",

    -- Move text up and down
    ["<A-j>"] = ":m .+1 <CR>==",
    ["<A-k>"] = ":m .-2 <CR>==",

    -- Toggle word-wrap
    ["<A-z>"] = ":set wrap! <CR>",

    -- Hide search highlighting
    ["<Leader>n"] = ":noh <CR>",

    -- Splits
    ["<Leader>v"] = ":vsplit <CR>",
    ["<Leader>h"] = ":split <CR>",
    ["<Leader>="] = "<C-w>=", -- resize all windows to equal size

    -- Saving and quitting
    ["<Leader>w"] = ":w <CR>",
    ["<Leader>W"] = ":wa <CR>",
    ["<Leader>c"] = ":clo <CR>",
    ["<Leader>C"] = ":qa <CR>",

    -- Formatting
    ["<Leader><S-f>"] = ":lua vim.lsp.buf.formatting_sync() <CR>",

    -- Open a Quickfix window for the last search
    ["<Leader>/"] = ":execute 'vimgrep /'.@/.'/g %' <CR>:copen <CR>",

    -- Substitute shortcut
    ["<Leader>s"] = ":%s/",

    -- Split line (sister to [J]oin lines)
    ["S"] = "i<CR><Esc>k$",

    -- Reveal highlighting under cursor
    ["<F6>"] = [[:echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#") <CR>]]
  },
  insert_mode = {
    -- 'jk' for quitting insert mode
    ["jk"] = "<Esc>",

    -- Better window navigation in insert mode
    ["<C-h>"] = "<Esc><C-w>hi",
    ["<C-j>"] = "<Esc><C-w>ji",
    ["<C-k>"] = "<Esc><C-w>ki",
    ["<C-l>"] = "<Esc><C-w>li",
  },
  visual_mode = {
    -- Stay in indent mode
    ["<"] = "<gv",
    [">"] = ">gv",

    -- Move text up and down
    ["<A-j>"] = ":m .+1 <CR>==",
    ["<A-k>"] = ":m .-2 <CR>==",
    --["p"] = '"_dP' -- what does this do?

    -- Substitute shortcut
    ["<Leader>s"] = ":s/",
  },
  visual_block_mode = {
    ["J"] = ":move '>+1 <CR>gv-gv",
    ["K"] = ":move '<-2 <CR>gv-gv",
    ["<A-j>"] = ":move '>+1<CR>gv-gv",
    ["<A-k>"] = ":move '<-2<CR>gv-gv",

    -- Substitute shortcut
    ["<Leader>s"] = ":s/",
  },
  term_mode = {
    ["<Esc>"] = "<C-\\><C-n>",
    ["jk"] = "<C-\\><C-n>",
    ["<C-h>"] = [[<C-\><C-n><C-W>h]],
    ["<C-j>"] = [[<C-\><C-n><C-W>j]],
    ["<C-k>"] = [[<C-\><C-n><C-W>k]],
    ["<C-l>"] = [[<C-\><C-n><C-W>l]],
  }
}

apply_keymaps(keymaps)

-------------------------------------------------------------------------------
-- Plugin-specific keymaps
-------------------------------------------------------------------------------

-- nvimtree
local nvimtree_keymaps = {
  normal_mode = {
    ["<Leader>e"] = ":NvimTreeToggle <CR>",
    -- See also lua/plugins/nvimtree.lua
  },
}

-- zen-mode
local zenmode_keymaps = {
  normal_mode = {
    ["<Leader>z"] = ":ZenMode <CR>",
  },
}

-- bufferline
local bufferline_keymaps = {
  normal_mode = {
    ["<S-l>"] = ":BufferLineCycleNext <CR>",
    ["<S-h>"] = ":BufferLineCyclePrev <CR>",
  },
}

-- bbye
local bbye_keymaps = {
  normal_mode = {
    ["<Leader>x"] = ":Bdelete <CR>",
    ["<Leader>X"] = ":bufdo :Bdelete <CR>",
  },
}

-- twilight
local twilight_keymaps = {
  normal_mode = {
    ["<Leader>t"] = ":Twilight <CR>",
  },
}

-- telescope
local telescope_keymaps = {
  normal_mode = {
    ["<Leader>ff"] = ":lua require('telescope.builtin').find_files() <CR>",
    ["<Leader>fg"] = ":lua require('telescope.builtin').live_grep() <CR>",
    ["<Leader>fb"] = ":lua require('telescope.builtin').buffers() <CR>",
    ["<Leader>fh"] = ":lua require('telescope.builtin').help_tags() <CR>",
    ["<Leader>fr"] = ":lua require('telescope.builtin').oldfiles() <CR>",
    ["<Leader>fe"] = ":Telescope file_browser <CR>",
    ["<Leader>fn"] = ":Telescope notify <CR>",
    ["<Leader>fp"] = ":Telescope projects <CR>",
    ["<Leader>fc"] = ":Telescope current_buffer_fuzzy_find <CR>"
  },
}

-- renamer
local renamer_keymaps = {
  normal_mode = {
    ["<F2>"] = ":lua require('renamer').rename() <CR>",
  },
}

-- Trouble
local trouble_keymaps = {
  normal_mode = {
    ["<Leader><S-t>"] = ":TroubleToggle <CR>",
  },
}

-- Treesitter
local treesitter_keymaps = {
  normal_mode = {
    ["<F7>"] = ":TSHighlightCapturesUnderCursor <CR>"
  }
}

-- Toggleterm
local toggleterm_keymaps = {
  normal_mode = {
    ["<Leader>~"] = ":ToggleTermToggleAll <CR>",
  },
  term_mode = {
    ["<Leader>~"] = [[<C-\><C-n> :ToggleTermToggleAll <CR>]],
    -- ["<Leader>l"] = "clear <CR>"
  }
}

local wipeout_keymaps = {
  normal_mode = {
    ["<Leader>o"] = ":Wipeout <CR>",
    ["<Leader><S-o>"] = ":only <CR> :Wipeout <CR>"
  }
}

-- GitSigns
local gitsigns_keymaps = {
  normal_mode = {
    ["]c"] = { "&diff ? ']c' : '<cmd>Gitsigns next_hunk <CR>'", {expr=true} },
    ["[c"] = { "&diff ? ']c' : '<cmd>Gitsigns prev_hunk <CR>'", {expr=true} },
    ["<Leader>gs"] = ":Gitsigns stage_hunk <CR>",
    ["<Leader>gS"] = ":Gitsigns stage_buffer <CR>",
    ["<Leader>gr"] = ":Gitsigns reset_hunk <CR>",
    ["<Leader>gR"] = ":Gitsigns reset_buffer <CR>",
    ["<Leader>gu"] = ":Gitsigns undo_stage_hunk <CR>",
    ["<Leader>gp"] = ":Gitsigns preview_hunk <CR>",
    ["<Leader>gb"] = ":Gitsigns blame_line <CR>",
    ["<Leader>gt"] = ":Gitsigns toggle_blame_line <CR>",
    ["<Leader>gd"] = ":Gitsigns diffthis <CR>",
  }
}

-- LSP
local lsp_keymaps = {
  normal_mode = {
    ["gD"] = ":lua vim.lsp.buf.declaration() <CR>",
    ["gd"] = ":lua vim.lsp.buf.definition() <CR>",
    ["K"] = ":lua vim.lsp.buf.hover() <CR>",
    ["gI"] = ":lua vim.lsp.buf.implementation() <CR>",
    -- ["<C-k>"] = ":lua vim.lsp.buf.signature_help() <CR>", -- is this redundant with hover?
    -- ["<Leader>rn"] = ":lua vim.lsp.buf.rename() <CR>",
    ["gr"] = ":lua vim.lsp.buf.references() <CR>",
    ["<Leader>ca"] = ":lua vim.lsp.buf.code_action() <CR>",
    ["[d"] = ":lua vim.diagnostic.goto_prev({ border = 'rounded' }) <CR>",
    ["]d"] = ":lua vim.diagnostic.goto_next({ border = 'rounded' }) <CR>",
    ["gl"] = ":lua vim.diagnostic.open_float() <CR>",
    ["<Leader>q"] = ":lua vim.diagnostic.setloclist() <CR>",
  },
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

M.bbye = function()
  apply_keymaps(bbye_keymaps)
end

M.twilight = function()
  apply_keymaps(twilight_keymaps)
end

M.telescope = function()
  apply_keymaps(telescope_keymaps)
end

M.renamer = function()
  apply_keymaps(renamer_keymaps)
end

M.trouble = function()
  apply_keymaps(trouble_keymaps)
end

M.treesitter = function()
  apply_keymaps(treesitter_keymaps)
end

M.toggleterm = function()
  apply_keymaps(toggleterm_keymaps)
end

M.wipeout = function()
  apply_keymaps(wipeout_keymaps)
end

M.gitsigns = function(bufnr)
  apply_keymaps(gitsigns_keymaps, bufnr)
end

M.lsp = function(bufnr)
  apply_keymaps(lsp_keymaps, bufnr)
  vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formatting()' ]])
end

-------------------------------------------------------------------------------
-- Autocommand to auto-source this file on save
-------------------------------------------------------------------------------

vim.cmd([[
  augroup keymaps
    autocmd!
    autocmd BufWritePost *nvim/lua/core/keymaps/init.lua source <afile>
  augroup end
]])

return M
