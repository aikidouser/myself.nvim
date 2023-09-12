local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({
  -- Color Scheme
  -- 'dracula/vim', name = 'dracula',
  'maxmx03/dracula.nvim',
  'marko-cerovac/material.nvim',
  'navarasu/onedark.nvim',
  'folke/tokyonight.nvim',
  {
    "catppuccin/nvim", name = "catppuccin",
  },

  -- Icon
  'kyazdani42/nvim-web-devicons',

  -- File Explorer
  {
    'nvim-telescope/telescope.nvim', version = "0.1.0",
    -- or                            , branch = '0.1.x',
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-live-grep-args.nvim' },
    },
  },
  "nvim-telescope/telescope-file-browser.nvim",

  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      require('nvim-treesitter.install').update({ with_sync = true })
    end,
  },

  -- Git
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require("user.plugins.pconfig.gitsigns")
    end,
  },
  -- 'f-person/git-blame.nvim',

  -- LSP
  'neovim/nvim-lspconfig', -- Configurations for Nvim LSP
  'williamboman/mason.nvim',

  "p00f/clangd_extensions.nvim",

  -- Complete
  -- 'hrsh7th/cmp-nvim-lsp',
  -- 'hrsh7th/cmp-buffer',
  -- 'hrsh7th/cmp-path',
  -- 'hrsh7th/cmp-cmdline',
  -- 'hrsh7th/nvim-cmp',

  -- Aid Tool
  "numToStr/FTerm.nvim",

  -- UI
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'kyazdani42/nvim-web-devicons',
      lazy = true
    }
  },
  -- Lua
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("user.plugins.pconfig.todo_comments")
    end
  },
  -- {
  --   'startup-nvim/startup.nvim',
  --   dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  -- },
  'nvim-telescope/telescope-ui-select.nvim',

  -- mini.nvim
  {
    'echasnovski/mini.nvim',
    config = function()
      require("user.plugins.pconfig.animate")
      require("user.plugins.pconfig.completion")
      require("user.plugins.pconfig.indentscope")
      require("user.plugins.pconfig.minifiles")
      require("user.plugins.pconfig.session")
      require("user.plugins.pconfig.starter")
    end
  },
 })
