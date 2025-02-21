return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        require("tokyonight").setup({
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        }) 
        vim.cmd[[colorscheme tokyonight]]
        -- vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#AC91CA' })
    end
}
