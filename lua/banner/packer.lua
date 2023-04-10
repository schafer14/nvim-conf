return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {'dracula/vim', as = 'dracula'}

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'}, {"kyazdani42/nvim-web-devicons"} }
  }

  use 'sbdchd/neoformat'
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use "hrsh7th/nvim-cmp" --completion
  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
  use("onsails/lspkind-nvim")
  use("nvim-lua/lsp_extensions.nvim")
  use("glepnir/lspsaga.nvim")
  use("simrat39/symbols-outline.nvim")
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  use("nvim-treesitter/nvim-treesitter")
  use("nvim-treesitter/playground")


  
  -- use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
  use 'ray-x/go.nvim'
  use 'ray-x/guihua.lua' -- recommanded if need floating window support

  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'

  use 'GutenYe/json5.vim'
  use 'vim-test/vim-test'

  use "akinsho/toggleterm.nvim"
  use "tpope/vim-rhubarb"

  -- Lua
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  }
  use 'airblade/vim-gitgutter'
  use 'f-person/git-blame.nvim'
  use "p00f/nvim-ts-rainbow"
  use 'edwinb/idris2-vim'
  use 'vmchale/dhall-vim'

  use 'purescript-contrib/purescript-vim'

end)
