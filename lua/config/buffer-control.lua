-- Buffer controlling
-- Delete all buffers
local function kill_all_buffers()
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        if vim.api.nvim_buf_is_valid(buf) and vim.bo[buf].buflisted then
            vim.api.nvim_buf_delete(buf, { force = true })
        end
    end
end

-- Save and close files
vim.keymap.set("n", "<leader>wq", function() -- Use this keymap in buffers only for security
    if vim.bo.filetype == "neo-tree" then
        vim.cmd("Neotree close")
    else
        vim.cmd("w")
        
        local buffer_count = #vim.tbl_filter(function(buf)
            return vim.fn.buflisted(buf) == 1
        end, vim.api.nvim_list_bufs())
            
        if buffer_count == 1 then
            vim.cmd("Neotree reveal") 
            vim.cmd("wincmd p")
            vim.cmd("q")
            kill_all_buffers()
        else 
            vim.cmd("bprevious")
            vim.cmd("bd #")
        end
    end
end, { noremap = true, silent = true })        

-- Discard changes and close files
vim.keymap.set("n", "<leader>dq", function() -- Use this keymap in buffers only for security
    if vim.bo.filetype == "neo-tree" then
        vim.cmd("Neotree close")
    else
        vim.cmd("e!")
        
        local buffer_count = #vim.tbl_filter(function(buf)
            return vim.fn.buflisted(buf) == 1
        end, vim.api.nvim_list_bufs())
            
        if buffer_count == 1 then
            vim.cmd("Neotree reveal") 
            vim.cmd("wincmd p")
            vim.cmd("q")
            kill_all_buffers()
        else 
            vim.cmd("bprevious")
            vim.cmd("bd #")
        end
    end
end, { noremap = true, silent = true })        


