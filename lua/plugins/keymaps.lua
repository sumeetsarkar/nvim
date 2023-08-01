local builtin = require('telescope.builtin')
-- telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find Files" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Find Grep" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find Buffers" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Find Help" })

-- barbar
-- previous/next
vim.keymap.set('n', '<C-k>', '<Cmd>BufferPrevious<CR>', { desc = "Buffer Tab" })
vim.keymap.set('n', '<C-l>', '<Cmd>BufferNext<CR>', { desc = "buffer Next" })

-- nt
local nt_reveal = ":Neotree reveal"
local nt_toggle = ":Neotree toggle<CR>"
local nt_postion_float = " position=float<CR>"

vim.keymap.set('n', '\\', nt_toggle, { desc = "Neotree Toggle" })
vim.keymap.set('n', '<F2>', nt_reveal .. nt_postion_float, { desc = "Neotree Reveal" })

local nt_gitstatus = ":Neotree source=git_status reveal=true"
vim.keymap.set('n', '<leader>ng', nt_gitstatus .. nt_postion_float, { desc = "Neotree Git Status" })

local nt_buffers = ":Neotree source=buffers reveal=true"
vim.keymap.set('n', '<leader>nb', nt_buffers .. nt_postion_float, { desc = "Neotree Buffers" })

