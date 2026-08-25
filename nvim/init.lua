-- :h mapleader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- :h initialization
require("config.options")
require("config.keybindings")
require("plugins")
require("tools.lsp")
require("tools.dap")
