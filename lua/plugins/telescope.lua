require('telescope').setup({
  defaults = {
    wrap_results = true,
    layout_strategy = 'vertical',
    layout_config = {
        height = .99,
        width = .99,
        prompt_position = 'bottom',
        preview_cutoff = 0,
    },
    -- other defaults configuration here
  },
  -- other configuration values here
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
})

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

