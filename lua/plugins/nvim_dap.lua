require("mason").setup()
require ('mason-nvim-dap').setup({
    ensure_installed = {'clangd'},
    handlers = {
        function(config)
          -- all sources with no handler get passed here

          -- Keep original functionality
          require('mason-nvim-dap').default_setup(config)
        end,
        python = function(config)
            config.adapters = {
	            type = "executable",
	            command = "/usr/bin/python3",
	            args = {
		            "-m",
		            "debugpy.adapter",
	            },
            }
            require('mason-nvim-dap').default_setup(config) -- don't forget this!
        end,
    },
})

local dap, dapui = require("dap"), require("dapui")
dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>", { desc = "Debugger Breakpoint Toggle" })
vim.keymap.set("n", "<leader>dn", ":DapContinue<CR>", { desc = "Debugger Continue" })
vim.keymap.set("n", "<leader>dq", ":DapTerminate<CR>", { desc = "Debugger Terminate" })
vim.keymap.set("n", "<leader>di", ":DapStepInto<CR>", { desc = "Debugger Step Into" })
vim.keymap.set("n", "<leader>do", ":DapStepOut<CR>", { desc = "Debugger Step Out" })
vim.keymap.set("n", "<leader>du", ":DapStepOver<CR>", { desc = "Debugger Step Over" })
vim.keymap.set("n", "<leader>dd", dapui.close, { desc = "Dap UI close" })

