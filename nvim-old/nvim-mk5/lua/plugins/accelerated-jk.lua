return {
	"rhysd/accelerated-jk",
	event = "VeryLazy",
	config = function()
		-- vim.keymap.set("n", "j", "<Plug>(accelerated_jk_gj)", {})
		-- vim.keymap.set("n", "k", "<Plug>(accelerated_jk_gk)", {})

		vim.keymap.set("n", "j", "<Plug>(accelerated_jk_gj_position)", {})
		vim.keymap.set("n", "k", "<Plug>(accelerated_jk_gk_position)", {})

	end,
}
