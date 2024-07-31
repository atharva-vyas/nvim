return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end

	}, {
		"williamboman/mason-lspconfig.nvim",
		-- more lsp servers => https://github.com/williamboman/mason-lspconfig.nvim
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" , "bash-language-server"},
				automatic_installation = true,
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		-- more refrences => https://github.com/neovim/nvim-lspconfig/blob/master/test/minimal_init.lua
		config = function()
			local lspconfig = require("lspconfig")
			-- language server for lua
			lspconfig.lua_ls.setup({})
			-- language server for javascript and typescript
			lspconfig.tsserver.setup({})
			lspconfig.bashls.setup({})


			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})

			-- code actions
			vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
		end
	}
}
