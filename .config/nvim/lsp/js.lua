return {
	cmd = { "vtsls", "--stdio" },
	init_options = {
		hostInfo = "neovim",
	},
	filetypes = {
		"javascript",
		"typescript",
		"javascriptreact",
		"typescriptreact",
		"json",
	},
	root_markers = {
		"package-lock.json",
		"yarn.lock",
		"bun.lock",
		"bun.lockb",
	},
}
