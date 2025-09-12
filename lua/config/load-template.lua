vim.api.nvim_set_keymap("n", "<F12>", ":lua LoadTemplate()<CR>", { noremap = true, silent = true })

function LoadTemplate()
	local filetype = vim.bo.filetype

    if filetype == "cpp" then
        vim.cmd("r ~/Documents/Defaults/Cpp/default.cpp")
        vim.cmd("normal! ggdd")
        vim.cmd("7")
        vim.api.nvim_feedkeys("o", "n", false)
    elseif filetype == "c" then
        vim.cmd("r ~/Documents/Defaults/C/default.c")
        vim.cmd("normal! ggdd")
        vim.cmd("3")
        vim.api.nvim_feedkeys("o", "n", false)
	elseif filetype == "plaintex" or filetype == "tex" then
	    vim.cmd("r ~/Documents/Defaults/Latex/default.tex")
        vim.cmd("normal! ggdd")
    elseif filetype == "typst" then
        vim.cmd("r ~/Documents/Defaults/Typst/default.typ")
        vim.cmd("normal! ggdd")
    end
end


