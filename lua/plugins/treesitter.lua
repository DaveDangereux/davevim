local M = {}

local settings = {
  ensure_installed = "maintained",
  sync_install = false,
  ignore_install = { "" },
  highlight = {
    enable = true,
    disable = { "" },
    additional_vim_regex_highlighting = true
  },
  indent = { enable = true, disable = { "" }}
}

M.config = function()
  local status_ok, configs = pcall(require, "nvim-treesitter.configs")
  if not status_ok then
    print "Failed to load treesitter.configs"
  end

  configs.setup(settings)
end

return M
