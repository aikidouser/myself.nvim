vim.cmd([[
  set autoread
  set cmdheight=1
  set cursorcolumn
  set cursorline
  set encoding=utf-8
  set expandtab
  set ignorecase
  set linebreak
  set number
  set shiftwidth=2
  set updatetime=200
  set wildmenu
]])

-- Status
-- Init to empty
vim.cmd("set statusline=")
-- %F: Full path of the file
-- %M: If the file was modified and unsave, there will be a "+"
-- %Y: File type
-- %R: There will be the flag if the file is ReadOnly
vim.cmd("set statusline+=\ %F\ %M\ %Y\ %R")
-- Seperate left and right side
vim.cmd("set statusline+=%=")
-- %p%%: percentage
vim.cmd("set statusline+=\ row:\ %l\ col:\ %c\ \ %p%%")

