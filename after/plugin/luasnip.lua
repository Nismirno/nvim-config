local ls = require("luasnip")

require("luasnip.loaders.from_vscode").lazy_load()

local types = require("luasnip.util.types")
ls.config.set_config({
    history = true,
    updateevents = "TextChanged,TextChangedI",
    enable_autosnippets = true,
    ext_opts = {
        [types.choiceNode] = {
            active = {
                virt_text = {{ "●", "GruvboxOrange"}},
            },
        },
    },
})

-- Key Maps
vim.keymap.set({ "i", "s" }, "<leader>p", function()
    if ls.expand_or_jumpable() then
        ls.expand()
    end
end)

vim.keymap.set({ "i", "s" }, "<leader>k", function()
    if ls.jumpable(1) then
        ls.jump(1)
    end
end)

vim.keymap.set({ "i", "s" }, "<leader>j", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end)

vim.keymap.set({ "i", "s" }, "<leader>l", function()
    if ls.choice_activate() then
        ls.change_choice(1)
    end
end)

vim.keymap.set({ "i", "s" }, "<leader>h", function()
    if ls.choice_activate() then
        ls.change_choice(-1)
    end
end)
