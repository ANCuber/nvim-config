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






