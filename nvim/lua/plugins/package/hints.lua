vim.pack.add({ "https://github.com/nvim-mini/mini.clue" })

local clue = require("mini.clue")

clue.setup({
    triggers = {
        { mode = "n", keys = "<C-w>" },
        { mode = "n", keys = "<leader>" },
    },

    clues = {
        -- built-in clues
        clue.gen_clues.windows(),
        clue.gen_clues.registers(),
        clue.gen_clues.marks(),
        -- leader clues
        { mode = "n", keys = "<leader>t", desc = "+theme" },
        { mode = "n", keys = "<leader>b", desc = "+buffer" },
        { mode = "n", keys = "<leader>d", desc = "+dap" },
        { mode = "n", keys = "<leader>f", desc = "+find" },
        { mode = "n", keys = "<leader>g", desc = "+git" },
        { mode = "n", keys = "<leader>l", desc = "+lsp" },
    },
})
