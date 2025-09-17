return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "mason-org/mason.nvim",
            "mason-org/mason-lspconfig.nvim",
            "hrsh7th/cmp-buffer",
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip",
        },
        config = function()
            -- Mason setup
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = { "pyright", "clangd", "tinymist" },
            })

            -- nvim-cmp setup
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ["<Tab>"] = cmp.mapping.select_next_item(),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                    -- ["<C-Space>"] = cmp.mapping.complete(),
                }),
                sources = {
                    { name = "nvim_lsp" },
                    { name = "buffer" },
                },
            })

            -- LSP setup
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            lspconfig.pyright.setup({ capabilities = capabilities })
            lspconfig.clangd.setup({ capabilities = capabilities })
            lspconfig.ts_ls.setup({ capabilities = capabilities })
            lspconfig.tinymist.setup({ capabilities = capabilities })

            -- Show diagnostics in a floating window on CursorHold
            vim.api.nvim_create_autocmd("CursorHold", {
                pattern = "*",
                callback = function()
                    vim.diagnostic.open_float(nil, { focus = false, scope = "line" })
                end,
            })

            -- Recommended for faster CursorHold events
            vim.o.updatetime = 300

            -- Diagnostic configuration (optional)
            vim.diagnostic.config({
                virtual_text = false,
                float = { border = "rounded" },
                update_in_insert = false,
                severity_sort = true,
            })

            -- Useful LSP keymaps (optional)
            -- vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
            -- vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP Go Definition" })
            -- vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "LSP References" })
            -- vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP Rename" })
            -- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
        end,
    },
}
