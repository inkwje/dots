-- :h dap
vim.pack.add({
    "https://codeberg.org/mfussenegger/nvim-dap",
    "https://github.com/igorlfs/nvim-dap-view",
})

local view = require("dap-view")

view.setup({
    auto_toggle = true,
    follow_tab = true,
    winbar = {
        show = true,
        sections = { "scopes", "watches", "exceptions", "breakpoints", "threads", "repl" },
        default_section = "scopes",
        show_keymap_hints = false,
        controls = {
            enabled = true,
            position = "right",
            buttons = { "play", "step_back", "step_into", "step_over", "step_out", "terminate" },
        },
    },
    windows = {
        position = "right",
        size = 0.35,
        terminal = {
            position = "below",
            size = 0.3,
            hide = {},
        },
    },
    icons = {
        play = "",
        step_back = "",
        step_into = "",
        step_over = "",
        step_out = "",
        terminate = "",
    },
})

local dap = require("dap")

local dir_dap = vim.fn.stdpath("config") .. "/lua/tools/dap/"

for name, ftype in vim.fs.dir(dir_dap .. "language") do
    if ftype == "file" and name:match("%.lua$") then
        require("tools.dap.language." .. name:gsub("%.lua$", ""))
    end
end

local function keymap(lhs, rhs, desc)
    vim.keymap.set("n", lhs, rhs, { desc = desc })
end

keymap("<F5>", dap.continue, "resume execution of an app")
keymap("<F10>", dap.step_over, "request to run again for [n] steps")
keymap("<F11>", dap.step_into, "request to step into a function")
keymap("<S-F11>", dap.step_out, "request to step out of a function")
keymap("<F9>", dap.toggle_breakpoint, "create or remove breakpoint at current line")
keymap("<S-F5>", dap.terminate, "terminate debug session")
