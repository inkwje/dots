-- :h vim.keymap.set
vim.keymap.set("n", "<esc>", "<cmd>nohlsearch<cr>", { desc = "stop the highlighting for the 'hlsearch' option" })

vim.keymap.set("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "[N]th next buffer" })
vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "[N]th previous buffer " })
vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "unload buffer" })
