return {
    "lewis6991/gitsigns.nvim",
    config = function()
        vim.g.signcolumn="yes"
        require("gitsigns").setup()
    end
}
