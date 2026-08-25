-- :h vim.lsp
local dir_lsp = vim.fn.stdpath("config") .. "/lua/tools/lsp/"

for name, ftype in vim.fs.dir(dir_lsp .. "language") do
    if ftype == "file" and name:match("%.lua$") then
        require("tools.lsp.language." .. name:gsub("%.lua$", ""))
    end
end

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("LspKeymaps", { clear = true }),
    callback = function(args)
        if vim.b[args.buf].lsp_keymaps_set then
            return
        end
        vim.b[args.buf].lsp_keymaps_set = true

        local function keymap(lhs, rhs, desc)
            vim.keymap.set("n", lhs, rhs, { buffer = args.buf, desc = desc })
        end

        -- :h vim.lsp.buf
        keymap("<leader>lx", vim.lsp.buf.clear_references, "removes document highlight")
        keymap("<leader>la", vim.lsp.buf.code_action, "selects a code action")
        keymap("<leader>lr", vim.lsp.buf.rename, "rename all references")
        keymap("<leader>ls", vim.lsp.buf.signature_help, "display signature information")
    end,
})

vim.diagnostic.config({
    severity_sort = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    virtual_text = true,
})
