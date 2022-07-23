vim.opt.autoread = true
vim.opt.cmdheight = 1
vim.opt.cursorcolumn = true
vim.opt.cursorline = true
vim.opt.encoding = "utf-8"
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.linebreak = true
vim.opt.number = true
vim.opt.shiftwidth = 2
vim.opt.updatetime = 200
vim.opt.wildmenu = true

-- Status Line
-- Init to empty
vim.opt.statusline = ""
-- %F: Full path of the file
-- %M: If the file was modified and unsave, there will be a "+"
-- %Y: File type
-- %R: There will be the flag if the file is ReadOnly
vim.opt.statusline += "\ %F\ %M\ %Y\ %R"
-- Seperate left and right side
vim.opt.statusline += "%="
-- %p%%: percentage
vim.opt.statusline += "\ row:\ %l\ col:\ %c\ \ %p%%"

-- colorscheme
vim.opt.colorscheme = dracula

-- Plugin Settings

-- rainbow 
vim.g.rainbow_active = 1

-- Load Settings
