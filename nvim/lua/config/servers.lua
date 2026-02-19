-- servers are loaded before init.nvim startup
-- add language server protocols here

-- config here
vim.lsp.config("lua", { cmd = { "lua-language-server" }, filetypes = { "lua" }})

-- enable here
vim.lsp.enable({"lua"})
