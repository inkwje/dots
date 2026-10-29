-- :h vim.pack
local function now(fn)
    fn()
end

local function later(fn)
    vim.api.nvim_create_autocmd("UIEnter", {
        once = true,
        callback = fn,
    })
end

local plugins = {
    { package = "finder", load = later },
    { package = "formatter", load = later },
    { package = "hinter", load = later },
    { package = "homepage", load = now },
    { package = "mini", load = now },
    { package = "parser", load = later },
    { package = "statusline", load = now },
    { package = "theme", load = now },
}

vim.iter(plugins):each(function(p)
    p.load(function()
        require("plugins.package." .. p.package)
    end)
end)
