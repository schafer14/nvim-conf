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


  
  -- use 'tpope/vim-fugitive'
  -- use 'hrsh7th/cmp-nvim-lsp'
  -- use 'hrsh7th/nvim-cmp'
  -- -- use { 'camspiers/snap', rocks = {'fyz'} }
  -- -- use 'neovim/nvim-lspconfig'
  -- use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  -- use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
  -- use 'tpope/vim-commentary'
  -- use 'f-person/git-blame.nvim'
  -- -- use 'preservim/tagbar'
  -- -- use 'ctrlpvim/ctrlp.vim'
  -- use 'dense-analysis/ale'
  -- use {'neoclide/coc.nvim', branch = 'release'}

  -- use 'vim-test/vim-test'
  -- -- use 'hashivim/vim-terraform'
  -- use { 'ibhagwan/fzf-lua',
  --   -- optional for icon support
  --   requires = { 'kyazdani42/nvim-web-devicons' }
  -- }
  -- use 'ThePrimeagen/vim-be-good'
  -- use {
  --   'glacambre/firenvim',
  --   run = function() vim.fn['firenvim#install'](0) end 
  -- }

  -- use 'GutenYe/json5.vim'
end)
