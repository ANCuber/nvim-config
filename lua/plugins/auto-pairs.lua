return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
    config = function()
        require("nvim-autopairs").setup({
            check_ts = true, -- Enable Treesitter integration
        })
    end
}

