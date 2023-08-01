-- leader change
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fp", vim.cmd.Ex, { desc = "netrw" })

vim.keymap.set("i", "jk", "<ESC>", { desc = "esc" })
vim.keymap.set("n", ",<CR>", ":noh<CR>", { desc = "clear highlight" })

-- disable arrow keys in Normal mode
vim.keymap.set("n", "<Up>", "<NOP>", { desc = "use k" })
vim.keymap.set("n", "<Down>", "<NOP>", { desc = "use j" })
vim.keymap.set("n", "<Left>", "<NOP>", { desc = "use h" })
vim.keymap.set("n", "<Right>", "<NOP>", { desc = "use l" })

vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "tab new" })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "tab close" })

