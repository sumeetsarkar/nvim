vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local opts = { noremap = true, silent = true }

vim.keymap.set("i", "jk", "<ESC>", opts)

vim.keymap.set("n", "<Up>", "<NOP>", opts)
vim.keymap.set("n", "<Down>", "<NOP>", opts)
vim.keymap.set("n", "<Left>", "<NOP>", opts)
vim.keymap.set("n", "<Right>", "<NOP>", opts)

vim.keymap.set("n", ",<CR>", ":noh<CR>", opts)

vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", opts)
vim.keymap.set("n", "<leader>to", ":tabonly<CR>", opts)
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", opts)

