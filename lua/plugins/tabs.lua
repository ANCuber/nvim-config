return {'romgrk/barbar.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons', -- for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
        animation = false,
        focus_on_close = 'previous',        
        hide = {extensions = true, inactive = true}, 
        
        buffer = {
            maximum_width = 20,
            minimum_width = 20,
        }
    },
    version = '^1.0.0', -- Only update when a new 1.x version is released
}
