vim.pack.add({
	"https://github.com/nvim-telescope/telescope.nvim",
	"https://github.com/nvim-telescope/telescope-ui-select.nvim",

	-- Dependencies
	"https://github.com/nvim-lua/plenary.nvim",
})

local telescope = require("telescope")

telescope.setup({
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown({}),
		},
	},
})
telescope.load_extension("ui-select")
