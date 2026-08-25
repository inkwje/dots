vim.pack.add({ "https://github.com/stevearc/conform.nvim" })

require("conform").setup({
    formatters_by_ft = {
        bash = { "shfmt" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        lua = { "stylua" },
        nix = { "nixfmt" },
        rust = { "rustfmt" },
        sh = { "shfmt" },
    },
    format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
    },
})

vim.keymap.set("n", "<leader>lf", function()
    require("conform").format({ async = true, lsp_format = "fallback" })
end, { desc = "format" })
