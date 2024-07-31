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
			ensure_installed = { "lua_ls" },
			automatic_installation = true,
		})

		-- require("mason-tool-installer").setup({})
	end
},
	{
		"neovim/nvim-lspconfig",
		-- more refrences => https://github.com/neovim/nvim-lspconfig/blob/master/test/minimal_init.lua
		config = function()
			-- for completions.lua
			local capabilities = require('cmp_nvim_lsp').default_capabilities()

			local lspconfig = require("lspconfig")
			-- for completions.lua
			lspconfig.tsserver.setup({
			})
			-- language server for lua
			lspconfig.lua_ls.setup({})
			-- language server for javascript and typescript
			lspconfig.tsserver.setup({
				capabilities = capabilities
			})
			lspconfig.bashls.setup({})
			lspconfig.pyright.setup {
				settings = {
					python = {
						analysis = {
							autoSearchPaths = true,
							useLibraryCodeForTypes = true,
							diagnosticMode = "workspace"
						}
					}
				}
			}


			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})

			-- code actions
			vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
		end
	}
}
