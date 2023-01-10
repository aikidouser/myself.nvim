return require('packer').startup(function(use)
  -- Manage itself
  use { 'wbthomason/packer.nvim' }

  -- Color Scheme
  -- use { 'dracula/vim', as = 'dracula' }
  -- use { 'Mofiqul/dracula.nvim' }
  use { 'marko-cerovac/material.nvim' }
  use { 'navarasu/onedark.nvim' }
  use { 'folke/tokyonight.nvim' }
  use { "catppuccin/nvim", as = "catppuccin" }

  -- Icon
  use { 'kyazdani42/nvim-web-devicons' }

  -- File Explorer
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-live-grep-args.nvim' },
    },
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release
  }
  -- use {'f-person/git-blame.nvim'}

  -- LSP
  use { 'neovim/nvim-lspconfig' } -- Configurations for Nvim LSP
  use { 'williamboman/mason.nvim' }

  use { "p00f/clangd_extensions.nvim" }

  -- Complete
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'hrsh7th/nvim-cmp' }

  -- Aid Tool
  use { "numToStr/FTerm.nvim" }

  --  use({
  --    "jackMort/ChatGPT.nvim",
  --    config = function()
  --      require("chatgpt").setup({
  --        -- optional configuration
  --      })
  --    end,
  --    requires = {
  --      "MunifTanjim/nui.nvim",
  --      "nvim-lua/plenary.nvim",
  --      "nvim-telescope/telescope.nvim"
  --    }
  --  })

  -- UI
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- use {
  --   'startup-nvim/startup.nvim',
  --   requires = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  -- }
  use { 'nvim-telescope/telescope-ui-select.nvim' }

  -- mini.nvim
  use { 'echasnovski/mini.nvim',
    config = function()
      require("user.plugins.pconfig.animate")
      require("user.plugins.pconfig.session")
      require("user.plugins.pconfig.starter")
      require("user.plugins.pconfig.indentscope")
    end }
end)
