return {
	{
		"vim-test/vim-test",
		dependencies = {
			"preservim/vimux",
		},
		config = function()
			local keymap = vim.keymap

			vim.cmd("let test#strategy = 'vimux'")

			keymap.set("n", "<leader>tn", ":TestNearest<CR>")
			keymap.set("n", "<leader>tf", ":TestFile<CR>")
			keymap.set("n", "<leader>ts", ":TestSuite<CR>")
			keymap.set("n", "<leader>tl", ":TestLast<CR>")
			keymap.set("n", "<leader>tv", ":TestVisit<CR>")
		end,
	},
}
