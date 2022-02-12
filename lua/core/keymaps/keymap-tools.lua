local M = {}

-------------------------------------------------------------------------------
-- Utility tables
-------------------------------------------------------------------------------

local generic_options_any = { noremap = true, silent = true }

local generic_options = {
  normal_mode = generic_options_any,
  insert_mode = generic_options_any,
  visual_mode = generic_options_any,
  visual_block_mode = generic_options_any,
  command_mode = generic_options_any,
  term_mode = { silent = true },
}

local mode_name_adapters = {
  normal_mode = "n",
  insert_mode = "i",
  visual_mode = "v",
  visual_block_mode = "x",
  command_mode = "c",
  term_mode = "t",
}

-------------------------------------------------------------------------------
-- Apply keymaps
-------------------------------------------------------------------------------

M.apply_keymaps = function(keymaps, bufnr)
  for mode_name, mode_keymaps in pairs(keymaps) do
    local mode = mode_name_adapters[mode_name]

    for key, value in pairs(mode_keymaps) do
      local options = generic_options[mode] or generic_options_any

      -- If the keymap includes option overrides
      if type(value) == "table" then
        options = value[2]
        value = value[1]
      end

      if bufnr then
        vim.api.nvim_buf_set_keymap(bufnr, mode, key, value, options)
      elseif value then
        vim.api.nvim_set_keymap(mode, key, value, options)
      else
        pcall(vim.api.nvim_del_keymap, mode, key)
      end
    end
  end
end

return M
