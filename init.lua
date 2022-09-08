require('plugins')
require('autocmd')
require('keymap')
require('test')

local opt = vim.opt
opt.autoread = true
opt.cmdheight = 1
opt.cursorcolumn = true
opt.cursorline = true
opt.encoding = 'utf-8'
opt.expandtab = true
opt.ignorecase = true
opt.linebreak = true
opt.list = true
opt.listchars:append('eol:↴')
opt.number = true
opt.relativenumber = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.updatetime = 200
opt.wildmenu = true

-- Folding
vim.opt.foldlevel = 99
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'

-- Gui Fonts
vim.opt.guifont = 'Monoid Nerd Font Mono:h10.5'
-- vim.opt.guifont = "UbuntuMono Nerd Font Mono:h13"

-- Status Line
-- Init to empty
-- vim.opt.statusline = ''
-- %F: Full path of the file
-- %M: If the file was modified and unsave, there will be a "+"
-- %Y: File type
-- %R: There will be the flag if the file is ReadOnly
-- vim.opt.statusline:append(' %F %M %Y %R')
-- Seperate left and right side
-- vim.opt.statusline:append('%=')
-- %p%%: percentage
-- vim.opt.statusline:append(' row: %l col: %c %p%%')

