vim.pack.add({ "https://github.com/nvim-lualine/lualine.nvim" })

require("lualine").setup({
    options = {
        icons_enabled = false,
        theme = "auto",
        component_separators = "|",
        disabled_filetypes = { "", "ministarter" },
    },
    sections = {
        lualine_b = { "branch", "diff" },
        lualine_x = { "diagnostics" },
        lualine_y = { "location", "progress" },
        lualine_z = { "filetype" },
    },
})
