return {
	"lukas-reineke/indent-blankline.nvim",
	-- main = "ibl",
	---@module "ibl"
	-- ---@type ibl.config
	-- opts = {},


	-- For all available options, take a look at `:help ibl.config`.
	config = function()
		require("ibl").setup()

		-- *ibl.overwrite()*
		-- require("ibl").overwrite {
		-- 	exclude = { filetypes = {} }
		-- }



		-- Shows an underline on the first line of the scope
		require("ibl").setup({
			scope = {
				show_start = false
			}
		})



	end
}
