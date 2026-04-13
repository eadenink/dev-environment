vim.pack.add({ "https://github.com/stevearc/conform.nvim" })

local js_formatters = { "prettier", "biome", stop_after_first = true }

require("conform").setup({
	formatters = {
		-- Fallback to biome if no prettier configuration files found
		prettier = { require_cwd = true },
		black = { prepend_args = { "--line-length", "79" } },
	},
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		go = { "goimports", "gofumpt" },
		javascript = js_formatters,
		typescript = js_formatters,
		javascriptreact = js_formatters,
		typescriptreact = js_formatters,
		json = js_formatters,
		jsonb = js_formatters,
		jsonc = js_formatters,
		sql = { "pgformatter" },
	},
	default_format_opts = {
		lsp_fallback = true,
		async = false,
		timeout_ms = 1000,
	},
	format_on_save = {
		lsp_fallback = true,
		async = false,
		timeout_ms = 1000,
	},
})
