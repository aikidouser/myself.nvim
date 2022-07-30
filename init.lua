require("plugins")

vim.api.nvim_set_keymap("i", "jk", "<ESC>", { noremap = true })

vim.g.mapleader = " "

vim.opt.autoread = true
vim.opt.cmdheight = 1
vim.opt.cursorcolumn = true
vim.opt.cursorline = true
vim.opt.encoding = "utf-8"
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.linebreak = true
-- vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 2
vim.opt.updatetime = 200
vim.opt.wildmenu = true

-- Gui Fonts
vim.opt.guifont = "Monoid Nerd Font Mono:h10"
-- vim.opt.guifont = "UbuntuMono Nerd Font Mono:h13"

-- Status Line
-- Init to empty
vim.opt.statusline = ""
-- %F: Full path of the file
-- %M: If the file was modified and unsave, there will be a "+"
-- %Y: File type
-- %R: There will be the flag if the file is ReadOnly
vim.opt.statusline:append(" %F %M %Y %R")
-- Seperate left and right side
vim.opt.statusline:append("%=")
-- %p%%: percentage
vim.opt.statusline:append(" row: %l col: %c %p%%")

vim.cmd("autocmd BufEnter * silent! lcd %:p:h")

require("nvim-web-devicons").setup {
  default = true;
}

require'nvim-treesitter.configs'.setup {
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}

require("telescope").setup {}
require("telescope").load_extension "file_browser"

require("gitsigns").setup {}
