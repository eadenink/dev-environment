return {
	{
		"mfussenegger/nvim-dap",
		config = function()
			local dap = require("dap")

			local keymap = vim.keymap

			keymap.set("n", "<leader>dt", dap.toggle_breakpoint, {})
			keymap.set("n", "<leader>dc", dap.continue, {})
		end,
	},
}
