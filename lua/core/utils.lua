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
        options.buffer = bufnr
      end

      if rhs then
        vim.keymap.set(mode, lhs, rhs, options)
      else
        pcall(vim.api.nvim_del_keymap, mode, lhs)
      end
    end
  end
end

M.get_total_buffers = function()
  local total_buffers = 0
  for buffer = 1, vim.fn.bufnr("$") do
    local is_listed = vim.fn.buflisted(buffer) == 1
    if is_listed then
      total_buffers = total_buffers + 1
    end
  end
  return total_buffers
end

M.get_keys = function(t)
  local keys = {}
  for key in pairs(t) do
    table.insert(keys, key)
  end
  table.sort(keys)
  print(vim.inspect(keys))
end

M.clear_packages_recursively = function(package_name)
  local target_package_names = {}

  for key in pairs(package.loaded) do
    if key:find("^" .. package_name) then
      table.insert(target_package_names, key)
    end
  end

  for _, pkg in pairs(target_package_names) do
    package.loaded[pkg] = nil
  end
end

return M
