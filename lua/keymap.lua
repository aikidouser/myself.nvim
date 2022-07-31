vim.g.mapleader = " "

-- Default
vim.keymap.set("i", "jk", "<ESC>", {noremap = true})
vim.keymap.set("t", "jk", "<C-\\><C-n>", {noremap = true})

-- Telescope
vim.keymap.set("n", "<leader>fb", ":Telescope file_browser<CR>", {noremap = true})
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", {noremap = true})

