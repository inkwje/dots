vim.lsp.config("nix", {
    cmd = { "nixd" },
    filetypes = { "nix" },
    root_markers = { ".git", "default.nix", "flake.nix" },
})

vim.lsp.enable("nix")
