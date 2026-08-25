vim.lsp.config("bash", {
    cmd = {
        "bash-language-server",
        "start",
    },
    filetypes = {
        "sh",
        "bash",
    },
    root_markers = { ".git" },
})

vim.lsp.enable("bash")
