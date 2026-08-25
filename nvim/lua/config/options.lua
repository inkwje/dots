-- :h option-list
local opt = vim.opt

opt.autocomplete = true -- enable automatic completion in insert mode
opt.clipboard = "unnamedplus" -- use the clipboard as the unnamed register
opt.completeopt = { "fuzzy", "menuone", "noselect", "popup" }
opt.cursorline = true -- highlight the screen line of the cursor
opt.expandtab = true -- use spaces when <Tab> is inserted
opt.history = 100 -- number of command-lines that are remembered
opt.ignorecase = true -- ignore case in search patterns
opt.mouse = "a" -- enable the use of mouse clicks
opt.number = true -- print the line number in front of each line
opt.relativenumber = true -- show relative line number in front of each line
opt.shiftround = true -- round indent to multiple of shiftwidth
opt.shiftwidth = 4 -- number of spaces to use for (auto)indent step
opt.signcolumn = "yes:1" -- when and how to display the sign column
opt.smartcase = true -- no ignore case when pattern has uppercase
opt.smartindent = true -- smart autoindenting for C programs
opt.splitbelow = true -- new window from split is below the current one
opt.splitright = true -- new window is put right of the current one
opt.termguicolors = true -- enable 24-bit RGB color in the TUI
opt.undofile = true -- save undo information in a file
opt.undolevels = 512 -- maximum number of changes that can be undone
opt.virtualedit = "block" -- when to use virtual editing
opt.wildignorecase = true -- ignore case when completing file names
opt.wildmode = "longest:full,full" -- mode for 'wildchar' command-line
opt.wrap = true -- long lines wrap and continue on the next line
