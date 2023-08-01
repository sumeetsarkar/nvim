-- leader change
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fp", vim.cmd.Ex, { desc = "Netrw" })
vim.keymap.set("n", "<F1>", ":colors <C-d>", { desc = "Open Colors" })

vim.keymap.set("i", "jk", "<ESC>", { desc = "Esc" })
vim.keymap.set("n", ",<CR>", ":noh<CR>", { desc = "Clear Highlight" })
vim.keymap.set({ "n", "i" }, "<C-q>", "<ESC>:bd<CR>", { desc = "Close Buffer" })

-- disable arrow keys in Normal mode
vim.keymap.set("n", "<Up>", "<NOP>", { desc = "Use k" })
vim.keymap.set("n", "<Down>", "<NOP>", { desc = "Use j" })
vim.keymap.set("n", "<Left>", "<NOP>", { desc = "Use h" })
vim.keymap.set("n", "<Right>", "<NOP>", { desc = "Use l" })

vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "Tab New" })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Tab Close" })

