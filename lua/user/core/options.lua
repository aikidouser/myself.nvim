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
opt.splitright = true
opt.tabstop = 2
opt.updatetime = 200
opt.wildmenu = true

-- Folding
vim.opt.foldlevel = 99
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'

-- Gui Fonts
vim.opt.guifont = 'Monoid Nerd Font Mono:h10.5'
-- vim.opt.guifont = "UbuntuMono Nerd Font Mono:h14"
