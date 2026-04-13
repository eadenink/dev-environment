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

vim.lsp.enable({
	"c",
	"go",
	"js",
	"lua",
	"python",
	"z",
})
