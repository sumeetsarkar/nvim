local set = vim.opt

set.shiftwidth = 4
set.tabstop = 4

vim.keymap.set("n", "<F9>",  ":!clang -g % -o %< && ./%< <CR>", { desc = "c run" })
vim.keymap.set("n", "<F10>", ":!clang -g % -o %< <CR>", { desc = "c compile" })

