local modules = {
    { module = "mini.indentscope", config = { symbol = "░" } },
    { module = "mini.jump", config = nil },
    { module = "mini.move", config = nil },
    { module = "mini.pairs", config = nil },
    { module = "mini.splitjoin", config = nil },
    { module = "mini.surround", config = nil },
    { module = "mini.trailspace", config = nil },
}

vim.pack.add(vim.iter(modules)
    :map(function(m)
        return "https://github.com/nvim-mini/" .. m.module
    end)
    :totable())

vim.iter(modules):each(function(m)
    require(m.module).setup(m.config or {})
end)
