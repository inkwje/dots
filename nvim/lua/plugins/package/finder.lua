vim.pack.add({
    "https://github.com/nvim-mini/mini.extra",
    "https://github.com/nvim-mini/mini.pick",
})

local extra = require("mini.extra")
local pick = require("mini.pick")

extra.setup()
pick.setup({
    source = { show = pick.default_show },
})

vim.ui.select = pick.ui_select

local function keymap(lhs, rhs, desc, buf)
    vim.keymap.set("n", lhs, rhs, { buffer = buf, desc = desc })
end

-- buffer
keymap("<leader>bl", extra.pickers.buf_lines, "pick from buffer lines")
keymap("<leader>bb", pick.builtin.buffers, "pick from buffers")

-- file
keymap("<leader>ff", pick.builtin.files, "pick from files")
keymap("<leader>fg", pick.builtin.grep_live, "pick from pattern matches with live feedback")

-- diagnostic
keymap("<leader>fd", extra.pickers.diagnostic, "pick from `vim.diagnostic`")

-- git
keymap("<leader>gb", extra.pickers.git_branches, "pick from `git branch`")
keymap("<leader>gd", extra.pickers.git_hunks, "pick from `git diff`")
keymap("<leader>gf", extra.pickers.git_files, "pick from `git ls-files`")
keymap("<leader>gl", extra.pickers.git_commits, "pick from `git log`")

-- misc
keymap("<leader>fc", extra.pickers.commands, "pick from neovim built-in and user commands")
keymap("<leader>fm", extra.pickers.marks, "pick from marks")
keymap("<leader>fr", extra.pickers.registers, "pick from registers")

-- colorscheme
keymap("<C-k>t", extra.pickers.colorschemes, "pick and apply color scheme")

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("MiniPickLspKeymaps", { clear = true }),
    callback = function(args)
        if vim.b[args.buf].mini_lsp_keymaps_set then
            return
        end
        vim.b[args.buf].mini_lsp_keymaps_set = true

        local pick_lsp = extra.pickers.lsp

        keymap("<C-l>gd", function()
            pick_lsp({ scope = "definition" })
        end, "jumps to the definition", args.buf)
        keymap("<C-l>gi", function()
            pick_lsp({ scope = "implementation" })
        end, "lists all the implementation", args.buf)
        keymap("<C-l>gr", function()
            pick_lsp({ scope = "references" })
        end, "list all the references", args.buf)
        keymap("<C-l>gt", function()
            pick_lsp({ scope = "type_definition" })
        end, "jumps to the definition of the type", args.buf)
    end,
})
