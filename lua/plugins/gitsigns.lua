require('gitsigns').setup{
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map('n', ']h', function()
      if vim.wo.diff then return ']c' end
      vim.schedule(function() gs.next_hunk() end)
      return '<Ignore>'
    end, {expr=true, desc = "Hunk Next" })

    map('n', '[h', function()
      if vim.wo.diff then return '[c' end
      vim.schedule(function() gs.prev_hunk() end)
      return '<Ignore>'
    end, {expr=true, desc = "Hunk Previous" })

    -- Actions
    map('n', '<leader>hp', gs.preview_hunk, { desc = "Hunk Preview" })
    map('n', '<leader>hs', gs.stage_hunk, { desc = "Hunk Stage" })
    map('n', '<leader>hu', gs.undo_stage_hunk, { desc = "Hunk Undo Stage" })
    map('n', '<leader>hr', gs.reset_hunk, { desc = "Hunk Reset" })
  end
}

