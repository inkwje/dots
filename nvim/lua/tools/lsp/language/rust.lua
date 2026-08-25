vim.lsp.config("rust", {
    cmd = {
        "rust-analyzer",
    },
    filetypes = {
        "rust",
    },
    root_markers = { ".git", "Cargo.toml" },
})

vim.lsp.enable("rust")
