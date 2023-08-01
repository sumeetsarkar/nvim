local set = vim.opt

vim.cmd("set termguicolors")
vim.cmd("syntax on")
vim.cmd("syntax enable")

--" ================ General Config ====================
set.signcolumn = "yes"
set.relativenumber = true
set.cursorline = true
set.updatetime = 200
set.history = 1000             ----" Store lots of :cmdline history
set.showcmd = true             ----" Show incomplete cmds down the Bottom
set.showmode = true            ----" Show current mode down the bottom
set.guicursor ="a:blinkon0--"    --" Disable cursor blink
set.visualbell = true          ----" No sounds
set.autoread = true            ----" Reload files changed outside vim

set.colorcolumn = "80,120"
set.linespace   = 10
set.guifont     = "JetBrainsMono\\ Nerd\\ Font:h14"

set.modeline = true          ----" enable vim modelines
set.hlsearch = true         ----" highlight search items
set.incsearch = true          ----" searches are performed as you type
set.confirm = true            ----" ask confirmation like save before quit.

----" This makes vim act like all other editors, buffers can
----" exist in the background without being in a window.
----" http://items.sjbach.com/319/configuring-vim-right
set.hidden = true                  --" Switch between buffers without having to save first.
set.laststatus = 2         --" Alwa= "lastline"  --" Show as much as possible of the last line.
set.ttyfast = true                --" Faster redrawing.
set.lazyredraw = true             --" Only redraw when necessary.
set.cursorline = true             --" Find the current line quickly.
set.wrapscan = true               --" Searches wrap around end-of-file.
set.report = 0         --" Always report changed lines.
set.synmaxcol = 200       --" Only highlight the first 200 columns.

--" better navigation
--set.foldmethod    ="indent"
--set foldopen      -=hor
--set foldopen      +=jump
--set foldtext       =mhi#foldy()
set.mouse ="a"
set.scrolloff = 4
set.sidescroll = 5
set.ignorecase = true
set.smartcase = true
set.tagcase = "match"

--" ================ Turn Off Swap Files ==============
--set.noswapfile = true
--set.nobackup = true
--set.nowb = true

--" ================ Indentation ======================
set.ruler = true
set.autoindent = true
set.smartindent = true
set.smarttab = true
set.tabstop = 4
set.expandtab = true          --" Tab key inserts spaces not tabs
set.softtabstop = 4    --" spaces to enter for each tab
set.shiftwidth  = 4    --" amount of spaces for indentation
set.backspace = "indent,eol,start"  --" Allow backspace in insert mode
set.wrap = true       --" Wrap lines
set.linebreak = true  --" Wrap lines at convenient points

--" ================ Completion =======================
                                  --" Tab completion menu when using command mode
set.wildmenu = true                      --" enable ctrl-n and ctrl-p to scroll thru matches
set.wildmode ="list:longest"
set.wildignore = "*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules,*/.log/*,*/.coverage,*/__pycache__,*.class,*/target,tmp/**,log/**,*.png,*.jpg,*.gif,*.o,*.obj,*~,*.class"

--" ================ Scrolling ========================

set.scrolloff = 8         --"Start scrolling when we're 8 lines away from margins
set.sidescrolloff = 15
set.sidescroll = 1

--" split management
set.splitbelow = true
set.splitright = true

