-- Compile and Run Codes

-- Key mapping for <F5> to Compile and Run the code
vim.api.nvim_set_keymap("n", "<F5>", ":lua CompileRunCode()<CR>", { noremap = true, silent = true })

function CompileRunCode()
	vim.cmd("w")
	vim.cmd("cd %:p:h") -- Set the working directory to the directory of the current file

	-- Check the file type and run appropriate commands
	local filetype = vim.bo.filetype
	if filetype == "cpp" then
        -- Compile and Run .cpp file
		vim.cmd("belowright split term://g++ -Wall -Wextra -Wshadow %:r.cpp -o %:r && echo ----Compiled---- && ./%:r")
    elseif filetype == "c" then
        -- Compile and Run .c file
        vim.cmd("belowright split term://gcc -Wall -Wextra -Wshadow %:r.c -o %:r && echo ----Compiled---- && ./%:r")
	elseif filetype == "python" then
        -- Run .py file
	    vim.cmd("belowright split term://echo ----Running---- && python3 %")
	elseif filetype == "tex" then
		-- Compile .tex file
		vim.cmd("belowright split term://xelatex %")
    elseif filetype == "typ" then
        -- Compile .typ file
        vim.cmd("belowright split term://typst compile %")
	end

	vim.defer_fn(function()
	    vim.cmd("startinsert")
	end, 100) -- 100ms delay to ensure the terminal is ready
end
