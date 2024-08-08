return {
	"luk400/vim-jukit",
	config = function()
		vim.keymap.set('n', '<leader>np', ':call jukit#convert#notebook_convert("jupyter-notebook")<CR>', {})
		vim.keymap.set('n', '<leader>os', ':call jukit#splits#output()<CR>', {})
	end
}
