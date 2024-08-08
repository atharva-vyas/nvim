return {
	"luk400/vim-jukit",
	config = function()
		vim.keymap.set('n', '<leader>np', ':call jukit#convert#notebook_convert("jupyter-notebook")<CR>', {})

		-- open output window
		vim.keymap.set('n', '<leader>os', ':call jukit#splits#output()<CR>', {})
		-- open output and history window
		vim.keymap.set('n', '<leader>hs', ':call jukit#splits#history()<CR>', {})
		--
		--
		-- send current cell to the output window
		vim.keymap.set('n', '<leader><space>', ':call jukit#send#section(0)<CR>', {})



		-- Create new code cell below
		vim.keymap.set('n', '<leader>co', ':call jukit#cells#create_below(0)<CR>', {})
		-- Create new code cell above
		vim.keymap.set('n', '<leader>cO', ':call jukit#cells#create_above(0)<CR>', {})
		-- Create new text cell below
		vim.keymap.set('n', '<leader>ct', ':call jukit#cells#create_below(1)<CR>', {})
		-- Create new text cell above
		vim.keymap.set('n', '<leader>cT', ':call jukit#cells#create_above(1)<CR>', {})
		--
		--
		-- Delete current cell
		vim.keymap.set('n', '<leader>cd', ':call jukit#cells#delete()<CR>', {})
		--
		--
		-- Split current cell
		vim.keymap.set('n', '<leader>cs', ':call jukit#cells#split()<CR>', {})
		-- Merge current cell with the cell above
		vim.keymap.set('n', '<leader>cM', ':call jukit#cells#merge_above()<CR>', {})
		--
		--
		-- Merge current cell with the cell below
		vim.keymap.set('n', '<leader>cm', ':call jukit#cells#merge_below()<CR>', {})
		-- Move current cell up
		vim.keymap.set('n', '<leader>ck', ':call jukit#cells#move_up()<CR>', {})
		-- Move current cell down
		vim.keymap.set('n', '<leader>cj', ':call jukit#cells#move_down()<CR>', {})
		--
		--
		-- Jump to the next cell below
		vim.keymap.set('n', '<leader>J', ':call jukit#cells#jump_to_next_cell()<CR>', {})
		-- Jump to the previous cell above
		vim.keymap.set('n', '<leader>K', ':call jukit#cells#jump_to_previous_cell()<CR>', {})
		--
		--
		-- Delete saved output of current cell
		vim.keymap.set('n', '<leader>ddo', ':call jukit#cells#delete_outputs(0)<CR>', {})
		-- Delete saved outputs of all cells
		vim.keymap.set('n', '<leader>dda', ':call jukit#cells#delete_outputs(1)<CR>', {})




	end
}
