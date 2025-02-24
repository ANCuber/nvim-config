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
vim.keymap.set("n", "J", "j", { noremap = true, silent = true })
vim.keymap.set("n", "K", "k", { noremap = true, silent = true })

vim.keymap.set("v", "j", "gj", { noremap = true, silent = true })
vim.keymap.set("v", "k", "gk", { noremap = true, silent = true })
vim.keymap.set("v", "J", "j", { noremap = true, silent = true })
vim.keymap.set("v", "K", "k", { noremap = true, silent = true })

-- :noh unhighlight searched word
vim.keymap.set("n", "<leader>us", ":noh<CR>")

-- :e!
vim.keymap.set("n", "<leader>dr", ":e!<CR>")

-- Switch to left or right
vim.keymap.set("n", "<leader>m", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>n", ":bprevious<CR>", { noremap = true, silent = true })

-- Neotree tab control
vim.keymap.set("n", "<leader>e", ":Neotree reveal toggle<CR>", { noremap = true, silent = true })
-- Switch between Neotree and opened files
vim.keymap.set("n", "<leader>r", "<C-w>w", { noremap = true, silent = true })

-- Quit
vim.keymap.set("n", "<leader>qt", function()
    vim.cmd("Neotree close")
    vim.cmd("q")
end, { noremap = true, silent = true})

-- Terminal
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

