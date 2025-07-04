return {
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local conform = require("conform")

			local js_formatters = { "prettier", "biome", stop_after_first = true }

			conform.setup({
				formatters = {
					-- Fallback to biome if no prettier configuration files found
					prettier = { require_cwd = true },
					black = { prepend_args = { "--line-length", "79" } },
				},
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "isort", "black" },
					go = { "goimports-reviser", "gofumpt", "golines" },
					javascript = js_formatters,
					typescript = js_formatters,
					javascriptreact = js_formatters,
					typescriptreact = js_formatters,
					json = js_formatters,
					jsonb = js_formatters,
					jsonc = js_formatters,
					sql = { "sleek" },
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

			vim.keymap.set({ "n", "v" }, "<leader>f", conform.format)
		end,
	},
}
