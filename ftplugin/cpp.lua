local set = vim.opt

set.shiftwidth = 2
set.tabstop = 2

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

