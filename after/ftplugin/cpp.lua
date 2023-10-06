local set = vim.opt

set.shiftwidth = 2
set.tabstop = 2

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

vim.keymap.set("n", "<F9>",  ":!clang++ -std=c++17 -g % -o %< && ./%< <CR>", { desc = "c++ run" })
vim.keymap.set("n", "<F10>", ":!clang++ -std=c++17 -g % -o %< <CR>", { desc = "c++ compile" })

