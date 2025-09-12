return {
    { -- Suggest Words
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp", 
            "hrsh7th/cmp-buffer",
        },
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                mapping = cmp.mapping.preset.insert({
                    ["<Tab>"] = cmp.mapping.select_next_item(),  -- Use Tab to select completion
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(), -- Previous
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),  -- Press Enter to confirm
                }),
                sources = {
                    { name = "nvim_lsp" }, -- Completion from LSP
                    { name = "buffer" },   -- Completion from open buffer
                }
            })
        end
    },
}
