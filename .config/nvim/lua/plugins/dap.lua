vim.pack.add({
	"https://github.com/mfussenegger/nvim-dap",
	"https://github.com/igorlfs/nvim-dap-view",

	-- Adapters
	"https://github.com/leoluz/nvim-dap-go",
})

require("dap-go").setup()

vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "", linehl = "", numhl = "" })
