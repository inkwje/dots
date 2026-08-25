local dap = require("dap")

dap.adapters.gdb = {
    type = "executable",
    command = "gdb",
    args = { "--quiet", "--nx", "--interpreter=dap", "--eval-command", "set print pretty on" },
}

local config = {
    {
        name = "launch",
        type = "gdb",
        request = "launch",
        program = function()
            return vim.fn.input({
                prompt = "executable: ",
                default = vim.fn.getcwd() .. "/",
                completion = "file",
            })
        end,
        args = {},
        cwd = "${workspaceFolder}",
        stopAtBeginningOfMainSubprogram = true,
    },
    {
        name = "attach process",
        type = "gdb",
        request = "attach",
        program = function()
            return vim.fn.input({
                prompt = "executable: ",
                default = vim.fn.getcwd() .. "/",
                completion = "file",
            })
        end,
        pid = function()
            local name = vim.fn.input("executable (filter): ")
            require("dap.utils").pick_process({ filter = name })
        end,
        cwd = "${workspaceFolder}",
    },
}

dap.configurations.c = config
dap.configurations.cpp = config
dap.configurations.rust = config
