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
opt.signcolumn="number"
opt.splitright = true
opt.tabstop = 2
opt.updatetime = 200
opt.wildmenu = true

-- Folding
opt.foldcolumn = "1"
-- vim.opt.foldlevel = 99
opt.foldmethod = 'manual'
-- vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'

-- Gui Fnts
opt.guifont = 'JetBrainsMono Nerd Font Mono:h11.0'
-- vim.opt.guifont = "UbuntuMono Nerd Font Mono:h14"
