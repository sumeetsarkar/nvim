local set = vim.opt

set.shiftwidth = 4
set.tabstop = 4

vim.keymap.set("n", "<F9>",  ":!python3 % <CR>", { desc = "python3 run" })

