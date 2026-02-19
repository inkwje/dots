return {
    -- https://github.com/nvim-lualine/lualine.nvim
    "nvim-lualine/lualine.nvim",
    name = "statusline:lualine",
    init = function()
        require("lualine").setup({
            options = {
                icons_enabled = false,
                theme = "auto",
                component_separators = "|",
                disabled_filetypes = { "" },
            },
            sections = {
                lualine_b = { "branch", "diff" },
                lualine_x = { "diagnostics", "lsp_status" },
                lualine_y = { "location", "progress" },
                lualine_z = { "filetype" },
            }
        })
    end
}
