require 'FTerm'.setup({
  border     = 'double',
  dimensions = {
    height = 0.9,
    width = 0.9,
  },
})

-- vim.api.nvim_create_user_command('FTermOpen', require('FTerm').open, {bang = true})
-- vim.api.nvim_create_user_command('FTermClose', require('FTerm').close, {bang = true})
vim.api.nvim_create_user_command('FTermExit', require('FTerm').exit, { bang = true })
vim.api.nvim_create_user_command('FTermToggle', require('FTerm').toggle, { bang = true })

local fterm = require("FTerm")

local tig = fterm:new({
  ft = "fterm_tig",
  cmd = "tig --all",
  dimensions = {
    height = 0.9,
    width = 0.9,
  },
})

vim.api.nvim_create_user_command("FTermTig",
  function()
    tig:toggle()
  end,
  { bang = true }
)
