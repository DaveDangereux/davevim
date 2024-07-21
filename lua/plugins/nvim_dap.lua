return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "nvim-neotest/nvim-nio",
  },
  config = function()
    local dap = require("dap")

    dap.configurations.cpp = {
      {
        name = "Debug using codelldb",
        type = "codelldb",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        terminal = "integrated",
      },
    }

    dap.adapters.codelldb = {
      type = "server",
      port = "${port}",
      executable = {
        command = "codelldb",
        args = { "--port", "${port}" },
      },
    }

    vim.fn.sign_define("DapBreakpoint", { text = "⏺", texthl = "DapBreakpoint" })
    vim.fn.sign_define("DapBreakpointCondition", { text = "ﳁ", texthl = "DapBreakpoint" })
    vim.fn.sign_define("DapBreakpointRejected", { text = "", texthl = "DapBreakpoint" })
    vim.fn.sign_define("DapLogPoint", { text = "", texthl = "DapLogPoint" })
    vim.fn.sign_define("DapStopped", { text = "", texthl = "DapStopped" })
  end,
}
