local M = {}

M.config = function()
  local status_ok, project = pcall(require, "project_nvim")
  if not status_ok then
    print "Failed to configure project"
  end

  project.setup()

  local telescope_status_ok, telescope = pcall(require, "telescope")
    if not telescope_status_ok then
      print "Failed to load project telescope extension"
    return

    telescope.load_extension("projects")
  end
end

return M
