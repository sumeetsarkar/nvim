local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>gi", "<Esc><Cmd>lua require('jdtls').super_implementation()<CR>", opts)

