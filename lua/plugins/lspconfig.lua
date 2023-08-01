-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', ',e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', ',q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local opts = function (arg, descValue)
        return {
            buffer = arg.buf,
            desc = descValue
        }
    end
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts(ev, "Declaration"))
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts(ev, "Definition"))
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts(ev, "Implementation"))
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts(ev, "References"))
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts(ev, "Hover"))
    vim.keymap.set('n', '<C-g>', vim.lsp.buf.signature_help, opts(ev, "Signature Help"))
    vim.keymap.set('n', '<leader>td', vim.lsp.buf.type_definition, opts(ev, "Type Definition"))
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts(ev, "Rename"))
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts(ev, "Code Action"))
    vim.keymap.set('n', '<leader>cf', function()
      vim.lsp.buf.format { async = true }
    end, opts(ev, "Code Format"))
  end,
})

