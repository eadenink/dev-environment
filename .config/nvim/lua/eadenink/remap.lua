local keymap = vim.keymap

-- Open explorer
keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Move around selected lines vertically
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Paste without overriding register
keymap.set("x", "<leader>p", '"_dP')

-- Paste from clipboard
keymap.set({ "n", "v" }, "<leader>P", [["+p]])

-- Copy to clipboard
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

-- Make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
