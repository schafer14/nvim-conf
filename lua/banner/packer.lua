return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {'dracula/vim', as = 'dracula'}

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
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
  use("nvim-treesitter/nvim-treesitter", {
    run = ":TSUpdate"
  })
  use 'nvim-treesitter/playground'


  
  use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'

  use 'GutenYe/json5.vim'
  use 'vim-test/vim-test'
  use 'ThePrimeagen/git-worktree.nvim'

  use 'MunifTanjim/nui.nvim'
end)
