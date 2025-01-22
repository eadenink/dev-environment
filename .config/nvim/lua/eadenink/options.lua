local opt = vim.opt

-- Makes cursor permanently bold
opt.guicursor = ""

-- Lines numbering
opt.nu = true
opt.relativenumber = true

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Undo
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- Search
opt.hlsearch = false
opt.incsearch = true
opt.smartcase = true

-- Better colors and cursor line highlighting
opt.termguicolors = true
opt.cursorline = true

opt.scrolloff = 16
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50
