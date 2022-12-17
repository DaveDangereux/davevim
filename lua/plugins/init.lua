local plugin_table = {}

local utils = require("core.utils")

local module_names = {
  "general",
  "telescope",
  "lsp",
  "completion",
  "treesitter",
}

for _, module_name in ipairs(module_names) do
  local module = "plugins." .. module_name

  utils.clear_packages_recursively(module)
  local plugins = require(module)

  for _, plugin in ipairs(plugins) do
    table.insert(plugin_table, plugin)
  end
end

return plugin_table
