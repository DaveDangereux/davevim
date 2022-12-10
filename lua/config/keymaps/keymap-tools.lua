local M = {}

M.apply_keymaps = function(keymaps, bufnr)
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

  -- Our keymap table is structured:
  -- keymaps = {
  --   mode = {
  --     key = mapping
  --   }
  -- }

  for mode_name, mode_keymaps in pairs(keymaps) do
    for lhs, rhs in pairs(mode_keymaps) do
      local mode = mode_name_adapters[mode_name]
      local options = generic_options[mode_name] or generic_options_any

      -- If the keymap includes option overrides
      if type(rhs) == "table" then
        rhs = rhs[1]
        options = rhs[2]
      end

      if bufnr then
        vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, options)
      elseif rhs then
        vim.keymap.set(mode, lhs, rhs, options)
      else
        pcall(vim.api.nvim_del_keymap, mode, lhs)
      end
    end
  end
end

return M
