return {
	{
		"mfussenegger/nvim-dap",
		config = function()
			local dap = require("dap")

			vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "", linehl = "", numhl = "" })

			local keymap = vim.keymap

			keymap.set("n", "<leader>dt", dap.toggle_breakpoint, {})
			keymap.set("n", "<leader>dc", dap.continue, {})
		end,
	},
}
