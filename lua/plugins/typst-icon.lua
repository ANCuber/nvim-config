return {
    {
        dependencies = { "nvim-tree/nvim-web-devicons" },
        "kaarmu/typst.vim",
        ft = "typst",
        lazy = true,
        config = function() 
            require("nvim-web-devicons").set_icon {
                typ = {
                    icon = "",
                    color = "#7aa2f7",
                    name = "Typst",
                },
            }
            vim.g.typst_pdf_viewer = "skim" 
        end,
    },
}
