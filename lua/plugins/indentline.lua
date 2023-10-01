vim.opt.list = true
--vim.opt.listchars:append "space:⋅"
--vim.opt.listchars:append "eol:↴"

require("ibl").setup {
    -- for example, context is off by default, use this to turn it on
    enabled = true,
    --indent = { char = "╎" },
    indent = {
        char = " ",
        --char = "▏",
        --char = "╎",
    highlight = { "Function", "Label" },
    },
    scope = {
        enabled = true;
        --char = "▏",
        --char = "╎",
        char = "▎",
        show_start = false,
        show_end = false,
        --highlight = { "Function", "Label" },
    },
    remove_blankline_trail = true,
    smart_indent_cap = true,
    priority = 2
}

