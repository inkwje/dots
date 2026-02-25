local modules = {
    "indentscope",
    "jump",
    "map",
    "move",
    "pairs",
    "splitjoin",
    "surround",
    "trailspace"
}

local setupMini = function(module)
    return {
        "nvim-mini/mini." .. module,
        name = "mini:" .. module,
        init = function()
            require("mini." .. module).setup()
        end
    }
end

return vim.tbl_map(setupMini, modules)
