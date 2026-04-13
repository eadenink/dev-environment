-- Makes cursor permanently bold
vim.o.guicursor = ""

-- Lines numbering
vim.o.nu = true
vim.o.relativenumber = true

-- Indentation
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.autoindent = true
vim.o.smartindent = true

-- Undo
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

-- Search
vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.smartcase = true

-- Better colors and cursor line highlighting
vim.o.termguicolors = true
vim.o.cursorline = true

vim.o.scrolloff = 16
vim.o.signcolumn = "yes"

vim.o.updatetime = 50

vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.o.foldlevelstart = 99
