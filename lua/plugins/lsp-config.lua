return {
	{
		"williamboman/mason.nvim",
			config = function()
				require("mason").setup()
			end
	},
	{
		"williamboman/mason-lspconfig.nvim",
			config = function()
				require("mason-lspconfig").setup({
					ensure_installed = {"r_language_server", "pyright"}
				})
				end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.pyright.setup({
        capabilities = capabilities 
      })
			lspconfig.r_language_server.setup({
        capabilities = capabilities 
      })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n'}, '<leader>ca', vim.lsp.buf.code_action, {}) 
		end
	},
}

