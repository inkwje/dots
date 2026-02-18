-- options are loaded before init.nvim startup
-- add options here

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt
opt.autoindent = true              -- take indent for new line from previous line ; default
opt.clipboard = "unnamedplus"      -- use the clipboard as the unnamed register
opt.completeopt = { "fuzzy", "menuone", "noselect", "popup" }
opt.expandtab = true               -- use spaces when <Tab> is inserted
opt.history = 100                  -- number of command-lines that are remembered
opt.hlsearch = true                -- highlight matches with last search pattern ; default
opt.ignorecase = true              -- ignore case in search patterns
opt.incsearch = true               -- highlight match while typing search pattern ; default
opt.mouse = "a"                    -- enable the use of mouse clicks
opt.mousefocus = false             -- keyboard focus follows the mouse ; default
opt.mousehide = true               -- hide mouse pointer while typing ; default
opt.number = true                  -- print the line number in front of each line
opt.relativenumber = true          -- show relative line number in front of each line
opt.ruler = true                   -- show cursor line and column in the status line ; default
opt.shiftround = true              -- round indent to multiple of shiftwidth
opt.shiftwidth = 4                 -- number of spaces to use for (auto)indent step
opt.smartcase = true               -- no ignore case when pattern has uppercase 
opt.smartindent = true             -- smart autoindenting for C programs
opt.smarttab = true                -- <Tab> in leading whitespace indents by 'shiftwidth' ; default
opt.splitbelow = true              -- new window from split is below the current one
opt.splitright = true              -- new window is put right of the current one
opt.termguicolors = true           -- enable 24-bit RGB color in the TUI
opt.undofile = true                -- save undo information in a file
opt.undolevels = 512               -- maximum number of changes that can be undone
opt.vartabstop = "4,4"             -- 
opt.virtualedit = "block"          -- when to use virtual editing
opt.wildignorecase = true          -- ignore case when completing file names
opt.wildmenu = true                -- use menu for command line ; default
opt.wildmode = "longest:full,full" -- mode for 'wildchar' command-line
opt.wrap = true                    -- long lines wrap and continue on the next line

