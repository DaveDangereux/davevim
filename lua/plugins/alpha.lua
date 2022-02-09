local M = {}

M.config = function ()
  local status_ok, alpha = pcall(require, "alpha")
  if not status_ok then
    print "Failed to configure alpha"
    return
  end

  local dashboard_status_ok, dashboard = pcall(require, "alpha.themes.dashboard")
  if not dashboard_status_ok then
    print "Failed to load dashboard theme for alpha"
    return
  end

  dashboard.section.header.val = {
      "██████╗░░█████╗░██╗░░░██╗███████╗██╗░░░██╗██╗███╗░░░███╗",
      "██╔══██╗██╔══██╗██║░░░██║██╔════╝██║░░░██║██║████╗░████║",
      "██║░░██║███████║╚██╗░██╔╝█████╗░░╚██╗░██╔╝██║██╔████╔██║",
      "██║░░██║██╔══██║░╚████╔╝░██╔══╝░░░╚████╔╝░██║██║╚██╔╝██║",
      "██████╔╝██║░░██║░░╚██╔╝░░███████╗░░╚██╔╝░░██║██║░╚═╝░██║",
      "╚═════╝░╚═╝░░╚═╝░░░╚═╝░░░╚══════╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝"
  }

  dashboard.section.buttons.val = {
    dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "  > Find file", ":cd $HOME/ | Telescope find_files<CR>"),
    dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
  }

  alpha.setup(dashboard.opts)
end

return M
