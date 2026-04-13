vim.pack.add({
	"https://github.com/nvim-lualine/lualine.nvim",
	"https://github.com/f-person/git-blame.nvim",
	-- Dependencies
	"https://github.com/nvim-tree/nvim-web-devicons",
})

local gitblame = require("gitblame")

vim.g.gitblame_display_virtual_text = 0

require("lualine").setup({
	options = {
		component_separators = { left = "|", right = "" },
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff" },
		lualine_c = {
			{ gitblame.get_current_blame_text, cond = gitblame.is_blame_text_available },
		},
		lualine_x = { "encoding", "filename" },
		lualine_y = {
			{
				"diagnostics",
				sources = { "nvim_diagnostic" },
				symbols = { error = " ", warn = " ", info = " " },
			},
		},
		lualine_z = { "location" },
	},
})
