return require('packer').startup(function()

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- use {'dracula/vim', as = 'dracula'}
  use { "catppuccin/nvim", as = "catppuccin" }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'}, {"kyazdani42/nvim-web-devicons"} }
  }

  use("neovim/nvim-lspconfig")
  use("nvim-treesitter/nvim-treesitter")
  use("nvim-treesitter/playground")
  use "hrsh7th/nvim-cmp" --completion
  use("hrsh7th/cmp-nvim-lsp")
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"

  use 'ray-x/go.nvim'
  use 'ray-x/guihua.lua' -- recommanded if need floating window support


  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'vim-test/vim-test'
  use 'airblade/vim-gitgutter'
  use 'christoomey/vim-tmux-navigator'

  use {
    "rest-nvim/rest.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  }

  use 'sbdchd/neoformat'
end)

