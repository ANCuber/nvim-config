return {
    'akinsho/bufferline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    version = "*", -- Use the latest version
    config = function()
        require("bufferline").setup {
            options = {
                numbers = "none",
                diagnostics = "nvim_lsp",
                show_buffer_icons = true,
                show_close_icon = false,
                -- separator_style = "slant",
                always_show_bufferline = true,
                enforce_regular_tabs = true, -- ensures uniform tab width
                tab_size = 16, 
            }
        }
    end
}

