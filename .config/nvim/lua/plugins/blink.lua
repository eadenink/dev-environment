vim.pack.add({
	{ src = "https://github.com/Saghen/blink.cmp", version = vim.version.range("*") },
})

require("blink.cmp").setup({
	signature = { enabled = true },
	completion = {
		documentation = { auto_show = true, auto_show_delay_ms = 500 },
		list = { selection = { preselect = true, auto_insert = false } },
		menu = {
			auto_show = true,
			draw = {
				treesitter = { "lsp" },
				columns = { { "kind_icon", "label", "label_description", gap = 1 }, { "kind" } },
			},
		},
	},
})
