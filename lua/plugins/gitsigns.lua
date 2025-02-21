return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup()
        vim.cmd("set signcolumn=yes")
    end
}
