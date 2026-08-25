vim.lsp.config("clang", {
    cmd = {
        "clangd",
    },
    filetypes = {
        "c",
        "cpp",
    },
    root_markers = { ".git" },
})

vim.lsp.enable("clang")
