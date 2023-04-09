-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    -- or,
    -- branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Color Theme
  use({ 'ellisonleao/gruvbox.nvim', as = 'gruvbox' })
  vim.cmd('colorscheme gruvbox')

  -- Treesitter
  use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use( 'nvim-treesitter/playground' )

  -- Harpoon
  use( 'theprimeagen/harpoon' )

  -- Undotree
  use( 'mbbill/undotree' )

  -- Fugitive
  use( 'tpope/vim-fugitive')

  -- LSP-zero
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {
        'williamboman/mason.nvim',
        run = function() pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  -- Autopairs
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {}
    end
  }

  -- Surround
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })
  -- Devicons
  use( 'nvim-tree/nvim-web-devicons' )

  -- Mini
  -- mini-align
  use { 'echasnovski/mini.align', branch = 'stable' }
  -- mini-bracketed
  use { 'echasnovski/mini.bracketed', branch = 'stable' }
  -- mini-move
  use { 'echasnovski/mini.move', branch = 'stable' }

  -- Comment
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- Dashboard
  use {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        -- Config here
      }
    end,
    require = {'nvim-tree/nvim-web-devicons'}
  }

  -- Peek (markdown viewer)
  use({ 'toppair/peek.nvim', run = 'deno task --quiet build:fast' })
end)
