return require('packer').startup(function(use)
  -- Manage itself
  use {'wbthomason/packer.nvim'}

  -- Color Scheme
  -- use {'dracula/vim', as = 'dracula'}
  use {'Mofiqul/dracula.nvim'}
  use {'navarasu/onedark.nvim'}
  use {'folke/tokyonight.nvim'}

  -- Icon
  use {'kyazdani42/nvim-web-devicons'}

  -- File Explorer
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = {{'nvim-lua/plenary.nvim'}}
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }

  use {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({with_sync = true}) end,
  }

  -- Git 
  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release
  } 
  -- use {'f-person/git-blame.nvim'}

  -- LSP
  use {'neovim/nvim-lspconfig'} -- Configurations for Nvim LSP

  -- Complete
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/nvim-cmp'}

-- Aid Tool
  -- use {'Pocco81/true-zen.nvim'}

-- UI
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use "lukas-reineke/indent-blankline.nvim"
end)
