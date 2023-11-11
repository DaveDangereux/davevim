return {
  "mfussenegger/nvim-dap",
  config = function()
    vim.fn.sign_define("DapBreakpoint", { text = "⏺", texthl = "DapBreakpoint" })
    vim.fn.sign_define("DapBreakpointCondition", { text = "ﳁ", texthl = "DapBreakpoint" })
    vim.fn.sign_define("DapBreakpointRejected", { text = "", texthl = "DapBreakpoint" })
    vim.fn.sign_define("DapLogPoint", { text = "", texthl = "DapLogPoint" })
    vim.fn.sign_define("DapStopped", { text = "", texthl = "DapStopped" })
  end,
}
