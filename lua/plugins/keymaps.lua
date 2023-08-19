local builtin = require('telescope.builtin')
-- telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files,   { desc = "Find Files" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep,    { desc = "Find Grep" })
vim.keymap.set('n', '<leader>ft', builtin.grep_string,  { desc = "Find Everywhere" })
vim.keymap.set('n', '<leader>fb', builtin.buffers,      { desc = "Find Buffers" })
vim.keymap.set('n', '<leader>fd', builtin.diagnostics,  { desc = "Find Diagonistics" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags,    { desc = "Find Help" })
vim.keymap.set('n', '<leader>fj', builtin.tags,         { desc = "Find Tags" })

vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols,  { desc = "Document Symbols" })
vim.keymap.set('n', '<leader>ws', builtin.lsp_workspace_symbols, { desc = "Workspace Symbols" })

vim.keymap.set('n', '<leader>gi', builtin.lsp_implementations,  { desc = "Goto Implementation" })
vim.keymap.set('n', '<leader>gr', builtin.lsp_references,       { desc = "Goto References" })
vim.keymap.set('n', '<leader>gd', builtin.lsp_definitions,      { desc = "Goto Definition" })

vim.keymap.set('n', '<leader>gb', builtin.git_branches, { desc = "Git Branches" })
vim.keymap.set('n', '<leader>gc', builtin.git_commits,  { desc = "Git Commits" })
vim.keymap.set('n', '<leader>gy', builtin.git_bcommits, { desc = "Git BCommits" })
vim.keymap.set('n', '<leader>gs', builtin.git_status,   { desc = "Git Status" })

vim.keymap.set('n', '<leader>ts', builtin.treesitter, { desc = "Treesitter" })

vim.keymap.set('n', '<leader>lf', builtin.oldfiles,         { desc = "List Old Files" })
vim.keymap.set('n', '<leader>lr', builtin.registers,        { desc = "List Registers" })
vim.keymap.set('n', '<leader>ll', builtin.commands,         { desc = "List Commands" })
vim.keymap.set('n', '<leader>lh', builtin.command_history,  { desc = "List Command History" })
vim.keymap.set('n', '<leader>ls', builtin.search_history,   { desc = "List Search History" })
vim.keymap.set('n', '<leader>lq', builtin.colorscheme,      { desc = "List Colorscheme" })
vim.keymap.set('n', '<leader>lm', builtin.marks,            { desc = "List Marks" })
vim.keymap.set('n', '<leader>lo', builtin.vim_options,      { desc = "List Vim Options" })

-- barbar
-- previous/next
vim.keymap.set('n', 'K', ':BufferPrevious<CR>', { desc = "Buffer Tab" })
vim.keymap.set('n', 'L', ':BufferNext<CR>',     { desc = "buffer Next" })

-- nt
local nt_reveal = ":Neotree reveal"
local nt_toggle = ":Neotree toggle<CR>"
local nt_postion_float = " position=float<CR>"

vim.keymap.set('n', '\\', nt_toggle,                        { desc = "Neotree Toggle" })
vim.keymap.set('n', '<F2>', nt_reveal .. nt_postion_float,  { desc = "Neotree Reveal" })

local nt_gitstatus = ":Neotree source=git_status reveal=true"
vim.keymap.set('n', '<leader>ng', nt_gitstatus .. nt_postion_float, { desc = "Neotree Git Status" })

local nt_buffers = ":Neotree source=buffers reveal=true"
vim.keymap.set('n', '<leader>nb', nt_buffers .. nt_postion_float,   { desc = "Neotree Buffers" })

vim.keymap.set('n', "<F8>", ":TagbarToggle<CR>", { desc = "TagbarToggle" })
vim.cmd("let g:tagbar_position = 'rightbelow'")
vim.cmd("let g:tagbar_height = 50")
vim.cmd("let g:tagbar_expand = 1")
vim.cmd("let g:tagbar_autofocus = 1")
vim.cmd("let g:tagbar_autoclose = 1")
vim.cmd("let g:tagbar_compact = 2")
vim.cmd("let g:tagbar_wrap = 2")
vim.cmd("let g:tagbar_show_visibility = 0")
vim.cmd("let g:tagbar_show_data_type = 1")
vim.cmd("let g:tagbar_show_linenumbers = 0")

vim.keymap.set('n', "<F10>", ":ZenMode<CR>", { desc = "ZenMode" })

