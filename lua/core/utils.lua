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

M.refresh_package_highlights = function()
  -- We're putting these config requires in functions so we can return out of
  -- them if the package or its config isn't available

  -- Refresh devicon highlights
  package.loaded["nvim-web-devicons"] = nil

  -- Refresh feline config
  local feline_refresh = function()
    local feline_config_status_ok, feline_config = pcall(require, "config.feline")
    if not feline_config_status_ok then
      print("Failed to require plugins.feline")
      return
    end
    feline_config.config()
  end

  -- Refresh bufferline config
  local bufferline_refresh = function()
    local bufferline_config_status_ok, bufferline_config = pcall(require, "config.bufferline")
    if not bufferline_config_status_ok then
      print("Failed to require plugins.bufferline")
      return
    end
    bufferline_config.config()
  end

  bufferline_refresh()
  feline_refresh()

  -- TODO: Reload rainbow brackets (via treesitter?) on colorscheme change
  -- TODO: Reload gitsigns highlights
end

M.get_packages_recursively = function(query_string)
  local package_names = {}

  -- The package.loaded table uses package names as keys
  for package_name in pairs(package.loaded) do
    if package_name:find("^" .. query_string) then
      table.insert(package_names, package_name)
    end
  end

  table.sort(package_names)
  return package_names
end

M.print_packages_recursively = function(query_string)
  local package_names = M.get_packages_recursively(query_string)

  local total_packages = 0

  for _, pkg in ipairs(package_names) do
    print(pkg)
    total_packages = total_packages + 1
  end

  print(total_packages .. " total packages")
end

M.clear_packages_recursively = function(query_string)
  local package_names = M.get_packages_recursively(query_string)

  for _, pkg in ipairs(package_names) do
    package.loaded[pkg] = nil
  end
end

M.get_buffer_filetype = function()
  print(vim.bo.filetype)
end

return M
