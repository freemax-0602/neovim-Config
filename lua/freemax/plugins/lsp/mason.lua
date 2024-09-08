return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			automatic_installation = true,
			ensure_installed = {
				"cssls", -- CSS Language Server
				"eslint", -- ESLint
				"html", -- HTML Language Server
				"jsonls", -- JSON Language Server
				"typescript-language-server", -- TypeScript Language Server
				"pyright", -- Python Language Server
				"tailwindcss", -- Tailwind CSS Language Server
				"ansiblels", -- Ansible Language Server
				"solargraph", -- Ruby Language Server
				"gopls", -- Go Language Server
			},
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				"prettier", -- Formatter for JavaScript/TypeScript/JSON
				"stylua", -- Lua formatter
				"isort", -- Python import sorter
				"black", -- Python formatter
				"pylint", -- Python linter
				"eslint_d", -- ESLint daemon
				"ansible-lint", -- Ansible
				"yamlfmt", -- Formatter for YAML files
				"yamllint", -- Linter for YANL files
				"rubocop", --Linter and formatter for Ruby
			},
		})
	end,
}
