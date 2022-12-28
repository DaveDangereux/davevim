local M = {}

local utils = require("core.utils")

-- Remap space as leader key
vim.g.mapleader = " "

local keymaps = {

  -----------------------------------------------------------------------------
  -- NORMAL MODE
  -----------------------------------------------------------------------------

  normal_mode = {
    ---------------------------------------------------------------------------
    -- Vim
    ---------------------------------------------------------------------------
    -- Better window movement
    ["<C-h>"] = "<C-w>h",
    ["<C-j>"] = "<C-w>j",
    ["<C-k>"] = "<C-w>k",
    ["<C-l>"] = "<C-w>l",

    -- Resize with arrows
    ["<C-Up>"] = ":resize -2 <CR>",
    ["<C-Down>"] = ":resize +2 <CR>",
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
    ["<Leader><S-f>"] = ":lua vim.lsp.buf.format({ async = true }) <CR>",

    -- Open a Quickfix window for the last search
    ["<Leader>/"] = function()
      for _, win in pairs(vim.fn.getwininfo()) do
        if win["loclist"] == 1 then
          vim.cmd("lclose")
        else
          local last_search = vim.fn.getreg("/")
          vim.cmd("lvimgrep /" .. last_search .. "/gj %")
          vim.cmd("lopen")
        end
      end
    end,

    -- Substitute shortcut
    ["<Leader>s"] = ":%s/",

    -- Split line (sister to [J]oin lines)
    ["S"] = "i<CR><Esc>k$",

    -- Reveal highlighting under cursor
    ["<F6>"] = [[:echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#") <CR>]],

    -- Quickfix list
    ["]q"] = ":cnext <CR>",
    ["[q"] = ":cprev <CR>",
    ["<Leader>q"] = function()
      utils.toggle_quickfix()
    end,

    -- Location list
    ["<Leader>l"] = function()
      utils.toggle_loclist()
    end,

    -- Centralised page motion
    ["<C-d>"] = "<C-d>zz",
    ["<C-u>"] = "<C-u>zz",

    -- Centralised searching
    ["n"] = "nzzzv",
    ["N"] = "Nzzzv",

    -- Easier jumplist navigation
    ["<A-h>"] = function()
      print(vim.fn.win_gettype())
      if vim.fn.win_gettype() == "quickfix" then
        local status_ok, _ = pcall(vim.cmd, "colder")
        if not status_ok then
          print("At bottom of quickfix stack")
        end
      elseif vim.fn.win_gettype() == "loclist" then
        local status_ok, _ = pcall(vim.cmd, "lolder")
        if not status_ok then
          print("At bottom of loclist stack")
        end
      else
        -- previous jumplist entry
        vim.cmd(vim.api.nvim_replace_termcodes("normal <C-o>", true, true, true))
      end
    end,
    ["<A-l>"] = function()
      print(vim.fn.win_gettype())
      if vim.fn.win_gettype() == "quickfix" then
        local status_ok, _ = pcall(vim.cmd, "cnewer")
        if not status_ok then
          print("At top of quickfix stack")
        end
      elseif vim.fn.win_gettype() == "loclist" then
        local status_ok, _ = pcall(vim.cmd, "lnewer")
        if not status_ok then
          print("At top of loclist stack")
        end
      else
        -- next jumplist entry
        -- 1<C-i> seems to work here, but no idea why
        vim.cmd(vim.api.nvim_replace_termcodes("normal 1<C-i>", true, true, true))
      end
    end,

    -- Undotree
    ["<Leader>u"] = ":UndotreeToggle <CR>",

    -- Easier fold deletion
    ["ZD"] = "zD",
    ["ZE"] = "zE",

    ["<F5>"] = function()
      vim.cmd("colorscheme " .. vim.g.colors_name)
    end,

    --------------------------------------------------------------------------
    -- NvimTree
    --------------------------------------------------------------------------
    ["<Leader>e"] = ":NvimTreeToggle <CR>",
    ["<Leader><S-e>"] = ":NvimTreeFocus <CR>",

    -- Useful folders
    -- TODO: Update absolute directory paths with dynamic platform-independent variables
    ["<Leader><S-n>"] = ":NvimTreeOpen <CR> :cd ~/web-dev/notes/ <CR>",
    ["<Leader><S-s>"] = ":NvimTreeOpen <CR> :cd ~/.config/nvim/ <CR>",

    --------------------------------------------------------------------------
    -- ZenMode
    --------------------------------------------------------------------------
    ["<Leader>z"] = ":ZenMode <CR>",

    --------------------------------------------------------------------------
    -- BufferLine
    --------------------------------------------------------------------------
    ["<S-l>"] = ":BufferLineCycleNext <CR>",
    ["<S-h>"] = ":BufferLineCyclePrev <CR>",

    --------------------------------------------------------------------------
    -- bbye
    --------------------------------------------------------------------------
    ["<Leader>X"] = function()
      vim.cmd("SessionManager save_current_session")
      vim.cmd("bufdo :Bdelete")
      vim.cmd("silent! only")
      vim.cmd("Alpha")
      vim.cmd("echo")
    end,
    ["<Leader>x"] = function()
      if utils.get_total_buffers() == 1 then
        vim.cmd("SessionManager save_current_session")
        vim.cmd("Bdelete")
        vim.cmd("silent! only")
        vim.cmd("Alpha")
        vim.cmd("echo")
      elseif vim.bo.filetype == "alpha" then
        return
      else
        vim.cmd("Bdelete")
      end
    end,

    --------------------------------------------------------------------------
    -- Telescope
    --------------------------------------------------------------------------
    ["<Leader>fb"] = ":Telescope buffers <CR>",
    ["<Leader>f/"] = ":Telescope current_buffer_fuzzy_find <CR>",
    ["<Leader>ff"] = ":Telescope find_files <CR>",
    ["<Leader>fs"] = ":Telescope grep_string <CR>",
    ["<Leader>fh"] = ":Telescope help_tags <CR>",
    ["<Leader>fg"] = ":Telescope live_grep <CR>",
    ["<Leader>fn"] = ":Telescope notify <CR>",
    ["<Leader>fr"] = ":Telescope oldfiles <CR>",
    ["<Leader>fp"] = ":Telescope projects <CR>",
    ["<Leader>fq"] = ":Telescope quickfix <CR>",
    ["<Leader>ft"] = ":TodoTelescope <CR>",
    ["<Leader>f;"] = ":Telescope command_history <CR>",
    ["<Leader>fx"] = ":Telescope registers <CR>",
    ["<Leader>fc"] = ":Telescope highlights <CR>",

    --------------------------------------------------------------------------
    -- Trouble
    --------------------------------------------------------------------------
    ["<Leader>T"] = ":TroubleToggle <CR>",

    --------------------------------------------------------------------------
    -- Treesitter
    --------------------------------------------------------------------------
    ["<F7>"] = ":TSHighlightCapturesUnderCursor <CR>",

    --------------------------------------------------------------------------
    -- Toggleterm
    --------------------------------------------------------------------------
    ["<Leader>#"] = ":ToggleTerm direction=vertical <CR>",
    ["<Leader>t"] = ":ToggleTerm direction=float <CR>",
    ["<Leader>~"] = ":ToggleTermToggleAll <CR>",

    --------------------------------------------------------------------------
    -- Wipeout
    --------------------------------------------------------------------------
    ["<Leader>o"] = ":Wipeout <CR>",
    ["<Leader><S-o>"] = ":only <CR> :Wipeout <CR>",

    --------------------------------------------------------------------------
    -- Illuminate
    --------------------------------------------------------------------------
    ["<Leader>i"] = ":IlluminateToggle <CR>",
  },

  ----------------------------------------------------------------------------
  -- INSERT MODE
  ----------------------------------------------------------------------------

  insert_mode = {
    -- 'jk' for quitting insert mode
    ["jk"] = "<Esc>",

    -- Better window navigation in insert mode
    ["<C-h>"] = "<Esc><C-w>hi",
    ["<C-j>"] = "<Esc><C-w>ji",
    ["<C-k>"] = "<Esc><C-w>ki",
    ["<C-l>"] = "<Esc><C-w>li",
  },

  ----------------------------------------------------------------------------
  -- VISUAL MODE
  ----------------------------------------------------------------------------

  visual_mode = {
    --------------------------------------------------------------------------
    -- Vim
    --------------------------------------------------------------------------
    -- Stay in indent mode
    ["<"] = "<gv",
    [">"] = ">gv",

    -- Move text up and down
    ["<A-j>"] = ":m .+1 <CR>==",
    ["<A-k>"] = ":m .-2 <CR>==",
    --["p"] = '"_dP' -- what does this do?

    -- Substitute shortcut
    ["<Leader>s"] = ":s/",

    -- Space-paste without losing contents of paste register
    ["<Leader>p"] = '"_dP',
  },

  ----------------------------------------------------------------------------
  -- VISUAL BLOCK MODE
  ----------------------------------------------------------------------------

  visual_block_mode = {
    --------------------------------------------------------------------------
    -- Vim
    --------------------------------------------------------------------------
    ["J"] = ":move '>+1 <CR>gv-gv",
    ["K"] = ":move '<-2 <CR>gv-gv",
    ["<A-j>"] = ":move '>+1<CR>gv-gv",
    ["<A-k>"] = ":move '<-2<CR>gv-gv",

    -- Substitute shortcut
    ["<Leader>s"] = ":s/",

    -- Space-paste without losing contents of paste register
    ["<Leader>p"] = '"_dP',
  },

  ----------------------------------------------------------------------------
  -- TERM MODE
  ----------------------------------------------------------------------------

  term_mode = {
    --------------------------------------------------------------------------
    -- Vim
    --------------------------------------------------------------------------
    ["<Esc>"] = "<C-\\><C-n>",
    ["jk"] = "<C-\\><C-n>",
    ["<C-h>"] = [[<C-\><C-n><C-W>h]],
    ["<C-j>"] = [[<C-\><C-n><C-W>j]],
    ["<C-k>"] = [[<C-\><C-n><C-W>k]],
    ["<C-l>"] = [[<C-\><C-n><C-W>l]],
    ["<C-w>"] = [[<C-\><C-n> :clo <CR>]],
  },
}

------------------------------------------------------------------------------
-- Buffer Specific Keymaps
------------------------------------------------------------------------------

-- GitSigns
local gitsigns_keymaps = {
  normal_mode = {
    ["]g"] = ":Gitsigns next_hunk <CR>",
    ["[g"] = ":Gitsigns prev_hunk <CR>",
    ["<Leader>gs"] = ":Gitsigns stage_hunk <CR>",
    ["<Leader>GS"] = ":Gitsigns stage_buffer <CR>",
    ["<Leader>gr"] = ":Gitsigns reset_hunk <CR>",
    ["<Leader>GR"] = ":Gitsigns reset_buffer <CR>",
    ["<Leader>gu"] = ":Gitsigns undo_stage_hunk <CR>",
    ["<Leader>gp"] = ":Gitsigns preview_hunk <CR>",
    ["<Leader>GP"] = ":Gitsigns preview_hunk_inline <CR>",
    ["<Leader>gt"] = ":Gitsigns toggle_current_line_blame <CR>",
    ["<Leader>gd"] = ":Gitsigns diffthis <CR>",
  },
}

-- LSP
local lsp_keymaps = {
  normal_mode = {
    ["gl"] = ":Lspsaga show_line_diagnostics <CR>",
    ["[e"] = ":Lspsaga diagnostic_jump_prev <CR>",
    ["]e"] = ":Lspsaga diagnostic_jump_next <CR>",
    ["gd"] = ":Lspsaga peek_definition <CR>",
    ["gr"] = ":Lspsaga lsp_finder <CR>",
    ["GR"] = ":lua vim.lsp.buf.references() <CR>",
    ["K"] = ":Lspsaga hover_doc <CR>",
    ["<Leader>a"] = ":Lspsaga code_action <CR>",
    ["GD"] = ":lua vim.lsp.buf.declaration() <CR>",
    ["gi"] = ":lua vim.lsp.buf.implementation() <CR>",
    ["go"] = ":SymbolsOutline <CR>",
    -- TODO: Make this focus the outline if it's not the active buffer
    ["<F2>"] = ":Lspsaga rename <CR>",
  },
}

------------------------------------------------------------------------------
-- Exports for on_attach functions
------------------------------------------------------------------------------

M.gitsigns = function(bufnr)
  utils.apply_keymaps(gitsigns_keymaps, bufnr)
end

M.lsp = function(bufnr)
  utils.apply_keymaps(lsp_keymaps, bufnr)
  vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formatting()' ]])
end

------------------------------------------------------------------------------
-- Apply Keymaps
------------------------------------------------------------------------------

utils.apply_keymaps(keymaps)

return M
