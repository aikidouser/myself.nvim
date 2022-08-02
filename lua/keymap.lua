vim.g.mapleader = " "

-- Default
-- Normal Mode
vim.keymap.set("n", "<leader>t", ":sp<CR><C-w>j:terminal<CR>", {noremap = true})

-- Insert Mode
vim.keymap.set("i", "jk", "<ESC>", {noremap = true})

-- terminal
vim.keymap.set("t", "jk", "<C-\\><C-n>", {noremap = true})

-- Plugins
-- Telescope
vim.keymap.set("n", "<leader>fb", ":Telescope file_browser<CR>", {noremap = true})
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", {noremap = true})

