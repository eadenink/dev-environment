vim.pack.add({
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",
})

require("mason").setup()
require("mason-tool-installer").setup({
	auto_update = true,
	ensure_installed = {
		-- LSPs
		"clangd",
		"gopls",
		"lua-language-server",
		"python-lsp-server",
		"vtsls",
		"zls",
		-- Formatters
		"biome",
		"black",
		"buf",
		"gofumpt",
		"goimports",
		"isort",
		"pgformatter",
		"prettier",
		"stylua",
		-- Linters
		"flake8",
		"golangci-lint",
		-- DAPs
		"delve",
	},
})
