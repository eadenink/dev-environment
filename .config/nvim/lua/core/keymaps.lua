vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>e", "<cmd>Oil<cr>", { desc = "Open explorer" })

-- Move around selected lines
vim.keymap.set("v", "H", "<gv", { desc = "Left one tab" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Down one line" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Up one line" })
vim.keymap.set("v", "L", ">gv", { desc = "Right one tab" })

vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste without overriding register" })

-- Clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]], { desc = "Paste from clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>P", [["+P]], { desc = "Paste from clipboard before the cursor" })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to clipboard" })
vim.keymap.set("n", "<leader>yy", [["+Y]], { desc = "Yank current line to clipboard" })

-- Tab
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR><leader>e", { remap = true })
vim.keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>")
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>")
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>")
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>")

-- File
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "Make file executable", silent = true })
vim.keymap.set("n", "<leader>cfp", function()
	local filePath = vim.fn.expand("%:~")
	vim.fn.setreg("+", filePath)
end, { desc = "Copy filepath to the clipboard" })

vim.keymap.set("n", "<leader>g", "<cmd>LazyGit<cr>", { desc = "Open lazy git" })

-- Debugging
vim.keymap.set("n", "<leader>dt", "<cmd>DapViewToggle<CR>", { desc = "Open DAP view" })
vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Toggle breakpoint at the current line" })
vim.keymap.set("n", "<leader>dc", "<cmd>DapContinue<CR>", { desc = "Continue execution after a breakpoint" })
vim.keymap.set("n", "<leader>dw", "<cmd>DapViewWatch<CR>", { desc = "Add variable to the watch list" })

-- Telescope
local telescope = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fp", telescope.oldfiles, { desc = "Search for the previosly opened files" })
vim.keymap.set("n", "<leader>fq", telescope.quickfix, { desc = "Quickfix search" })
vim.keymap.set("n", "<leader>fg", telescope.live_grep, { desc = "Search for the string within working dir" })
vim.keymap.set(
	{ "n", "v" },
	"<leader>fw",
	telescope.grep_string,
	{ desc = "Search for the word under the cursor or selection" }
)

-- Telescope LSP
vim.keymap.set("n", "grr", telescope.lsp_references, { desc = "Show object references" })
vim.keymap.set("n", "grd", telescope.lsp_definitions, { desc = "Show object definitions, goto if there's only one" })
vim.keymap.set(
	"n",
	"grt",
	telescope.lsp_type_definitions,
	{ desc = "Show object type definitions, goto if there's only one" }
)
vim.keymap.set(
	"n",
	"gri",
	telescope.lsp_implementations,
	{ desc = "Show object implementations, goto if there's only one" }
)
