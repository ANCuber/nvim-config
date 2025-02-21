-- Keymaps

-- General
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<TAB>", "i<TAB>")

-- For competitive programming only
vim.keymap.set("n", "<F12>", ":r ~/Coding/CppCode/cp_code/setting.cpp<CR>ggdd8jo")

-- Open a terminal at the buttom of the window
vim.keymap.set("n", "<leader>t", ":belowright 10split | terminal<CR>i", { noremap = true, silent = true })

-- Move by visual lines instead of actual lines
vim.keymap.set("n", "j", "gj", { noremap = true, silent = true })
vim.keymap.set("n", "k", "gk", { noremap = true, silent = true })

-- :noh unhighlight searched word
vim.keymap.set("n", "<leader>us", ":noh<CR>")

-- Buffer control
vim.keymap.set("n", "<leader>wq", function()
    vim.cmd("w")
    
    local buffer_count = #vim.tbl_filter(function(buf)
        return vim.fn.buflisted(buf) == 1
    end, vim.api.nvim_list_bufs())
        
    if buffer_count == 1 then
        vim.cmd("Neotree")
        vim.cmd("wincmd w")
        vim.cmd("q")
    else 
        vim.cmd("bprevious")
        vim.cmd("bd #")
    end
end, { noremap = true, silent = true })        

vim.keymap.set("n", "<leader>mm", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>nn", ":bprevious<CR>", { noremap = true, silent = true })

-- Neotree tab control
vim.keymap.set("n", "<leader>ee", ":Neotree toggle<CR>", {})
vim.keymap.set("n", "<leader>er", "<C-w>w", { noremap = true, silent = true })








