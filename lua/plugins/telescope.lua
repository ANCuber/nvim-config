return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- search the filename
        vim.keymap.set('n', '<leader>fw', builtin.live_grep, {}) -- search the word 
    end
}
