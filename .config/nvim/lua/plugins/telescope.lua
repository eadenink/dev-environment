return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")

			local keymap = vim.keymap

			keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Find files" })
			keymap.set("n", "<leader>pgf", builtin.git_files, { desc = "Find files within git" })
			keymap.set("n", "<leader>ps", builtin.live_grep, { desc = "Search for the string within working dir" })
			keymap.set(
				"n",
				"<leader>pw",
				builtin.grep_string,
				{ desc = "Search for the word under the cursor within working dir" }
			)
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
