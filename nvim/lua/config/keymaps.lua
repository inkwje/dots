-- keymaps are loaded before init.nvim startup
-- add keymaps here

-- vim.lsp
vim.keymap.set("n", "<C-l>a", vim.lsp.buf.code_action)
vim.keymap.set("n", "<C-l>d", vim.lsp.buf.definition)
vim.keymap.set("n", "<C-l>f", vim.lsp.buf.format)
vim.keymap.set("n", "<C-l>h", vim.lsp.buf.hover)
vim.keymap.set("n", "<C-l>i", vim.lsp.buf.implementation)
vim.keymap.set("n", "<C-l>r", vim.lsp.buf.rename)

-- vim.diagnostic
vim.keymap.set("n", "d[", vim.diagnostic.goto_prev)
vim.keymap.set("n", "d]", vim.diagnostic.goto_next)
