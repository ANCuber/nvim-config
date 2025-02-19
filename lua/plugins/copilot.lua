return {
    { -- GitHub Copilot as a Lua plugin
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({
                suggestion = { enabled = false },  -- Disable default <Tab> binding
                panel = { enabled = false },
            })
            
            -- Custom keybinding: Use <C-l> to accept Copilot suggestions
            vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
        end
    },
    { -- Copilot with nvim-cmp
        "zbirenbaum/copilot-cmp",
        dependencies = { "zbirenbaum/copilot.lua" },
        config = function()
            require("copilot_cmp").setup()
        end
    }
}
-- Not working currently
