return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({ automatic_installation = true })
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			vim.diagnostic.config({
				virtual_text = {
					prefix = "●",
					format = function(diagnostic)
						return string.format("%s: %s", diagnostic.source, diagnostic.message)
					end,
				},
				float = {
					show_header = false,
					format = function(diagnostic)
						return string.format("%s\n%s: %s", diagnostic.message, diagnostic.source, diagnostic.code)
					end,
				},
			})

			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.ts_ls.setup({})
			lspconfig.biome.setup({})
			lspconfig.eslint.setup({})
			lspconfig.pyright.setup({})
			lspconfig.gopls.setup({})
			lspconfig.zls.setup({})

			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					-- Buffer local mappings.
					local opts = { buffer = ev.buf, silent = true }

					local keymap = vim.keymap

					-- set keybinds
					opts.desc = "Go to declaration"
					keymap.set("n", "<leader>lgd", vim.lsp.buf.declaration, opts)

					opts.desc = "Show LSP definitions"
					keymap.set("n", "<leader>ld", "<cmd>Telescope lsp_definitions<CR>", opts)

					opts.desc = "Show LSP type definitions"
					keymap.set("n", "<leader>ltd", "<cmd>Telescope lsp_type_definitions<CR>", opts)

					opts.desc = "Show LSP references"
					keymap.set("n", "<leader>lr", "<cmd>Telescope lsp_references<CR>", opts)

					opts.desc = "Show LSP implementations"
					keymap.set("n", "<leader>li", "<cmd>Telescope lsp_implementations<CR>", opts)

					opts.desc = "See available code actions"
					keymap.set({ "n", "v" }, "<leader>lca", vim.lsp.buf.code_action, opts)

					opts.desc = "Smart rename"
					keymap.set("n", "<leader>lR", vim.lsp.buf.rename, opts)

					opts.desc = "Show documentation for what is under cursor"
					keymap.set("n", "<leader>lD", vim.lsp.buf.hover, opts)

					opts.desc = "Show buffer diagnostics"
					keymap.set("n", "<leader>lbd", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

					opts.desc = "Show line diagnostics"
					keymap.set("n", "<leader>lld", vim.diagnostic.open_float, opts)

					opts.desc = "Go to previous diagnostic"
					keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

					opts.desc = "Go to next diagnostic"
					keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

					opts.desc = "Restart LSP"
					keymap.set("n", "<leader>lrs", ":LspRestart<CR>", opts)
				end,
			})
		end,
	},
}
