vim.g.mapleader = " "

-- Buffer
vim.keymap.set("n", "<leader>b", ":ls<CR>:b ", {noremap = true})

-- Copy and Past
vim.keymap.set({'n', 'v'}, '<leader>c', '"+y', {noremap = true})
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p', {noremap = true})

-- Save
vim.keymap.set('n', '<C-s>', ':w<CR>', {noremap = true})

-- Save
vim.keymap.set('n', '<leader>s', ':source %<CR>', {noremap = true})

vim.keymap.set("i", "jl", "<ESC>", {noremap = true})

-- terminal
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", {noremap = true})
vim.keymap.set("t", "jl", "<C-\\><C-n>", {noremap = true})
vim.keymap.set("n", "<leader>tf", ":FTermToggle<CR>", {noremap = true})
vim.keymap.set("n", "<leader>tv", ":vs<CR><C-w>l:terminal<CR>", {noremap = true})
vim.keymap.set("n", "<leader>ts", ":sp<CR><C-w>j:terminal<CR>", {noremap = true})

-- Telescope
vim.keymap.set("n", "<leader>fb", ":Telescope file_browser<CR>", {noremap = true})
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", {noremap = true})

