local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>r', builtin.live_grep, {})
vim.keymap.set('n', '<leader>w', builtin.buffers, {})
vim.keymap.set('n', '<leader>d', builtin.help_tags, {})

local opts = { noremap = true, silent = true }
-- barbar
-- Move to previous/next
vim.keymap.set('n', '<C-k>', '<Cmd>BufferPrevious<CR>', opts)
vim.keymap.set('n', '<C-l>', '<Cmd>BufferNext<CR>', opts)

