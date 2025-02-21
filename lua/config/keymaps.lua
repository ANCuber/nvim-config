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

-- :e!
vim.keymap.set("n", "<leader>dr", ":e!<CR>")

-- Save and close files
vim.keymap.set("n", "<leader>wq", function()
    vim.cmd("Neotree")
    vim.cmd("wincmd w")
    vim.cmd("w")
    
    local buffer_count = #vim.tbl_filter(function(buf)
        return vim.fn.buflisted(buf) == 1
    end, vim.api.nvim_list_bufs())
        
    if buffer_count == 1 then
        vim.cmd("q")
        vim.cmd("bd #")
    else 
        vim.cmd("bprevious")
        vim.cmd("bd #")
    end
end, { noremap = true, silent = true })        

-- Discard changes and close files
vim.keymap.set("n", "<leader>dq", function()
    vim.cmd("Neotree")
    vim.cmd("wincmd w")
    vim.cmd("e!")
    
    local buffer_count = #vim.tbl_filter(function(buf)
        return vim.fn.buflisted(buf) == 1
    end, vim.api.nvim_list_bufs())
        
    if buffer_count == 1 then
        vim.cmd("q")
        vim.cmd("bd #")
    else 
        vim.cmd("bprevious")
        vim.cmd("bd #")
    end
end, { noremap = true, silent = true })        

-- Switch to left or right
vim.keymap.set("n", "<leader>m", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>n", ":bprevious<CR>", { noremap = true, silent = true })

-- Neotree tab control
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
-- Switch between Neotree and opened files
vim.keymap.set("n", "<leader>r", "<C-w>w", { noremap = true, silent = true })

-- Quit
vim.keymap.set("n", "<leader>quit", function()
    vim.cmd("Neotree close")
    vim.cmd("q")
end, { noremap = true, silent = true})





