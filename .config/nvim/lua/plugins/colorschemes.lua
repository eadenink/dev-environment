local function colorscheme(name, variation, opts)
	return {
		name,
		lazy = false,
		priority = 1000,
		opts = opts or {},
		config = function()
			vim.cmd.colorscheme(variation)
		end,
	}
end

return {
	-- colorscheme("folke/tokyonight.nvim"),
	colorscheme("EdenEast/nightfox.nvim", "carbonfox"),
}
