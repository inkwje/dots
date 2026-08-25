vim.pack.add({ "https://github.com/nvim-mini/mini.starter" })

local starter = require("mini.starter")

starter.setup({
    autoopen = true,

    header = table.concat({
        "Good morning, today...",
    }, "\n"),

    items = {
        starter.sections.recent_files(3, true),
        starter.sections.recent_files(5, false),
        starter.sections.builtin_actions(),
    },

    footer = "",
})

-- "                                                 ",
-- " ██╗███╗   ██╗██╗  ██╗██╗    ██╗     ██╗███████╗ ",
-- " ██║████╗  ██║██║ ██╔╝██║    ██║     ██║██╔════╝ ",
-- " ██║██╔██╗ ██║█████╔╝ ██║ █╗ ██║     ██║█████╗   ",
-- " ██║██║╚██╗██║██╔═██╗ ██║███╗██║██   ██║██╔══╝   ",
-- " ██║██║ ╚████║██║  ██╗╚███╔███╔╝╚█████╔╝███████╗ ",
-- " ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝ ╚══╝╚══╝  ╚════╝ ╚══════╝ ",
-- "                                                 ",
