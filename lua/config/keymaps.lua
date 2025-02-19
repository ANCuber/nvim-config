-- Keymaps

-- General
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<TAB>", "i<TAB>")

-- For competitive programming only
vim.keymap.set("n", "<F12>", ":r ~/CppCode/cp_code/setting.cpp<CR>ggdd8jo")

-- Open a terminal at the buttom of the window
vim.keymap.set("n", "<leader>t", ":belowright 10split | terminal<CR>i", { noremap = true, silent = true })






