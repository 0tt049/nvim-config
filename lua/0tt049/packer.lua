-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate", -- :MasonUpdate updates registry contents
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }


  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    -- or,
    -- branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Neoclip
  use {
    "AckslD/nvim-neoclip.lua",
    requires = {
      {'kkharji/sqlite.lua', module = 'sqlite'},
      -- you'll need at least one of these
      -- {'nvim-telescope/telescope.nvim'},
      -- {'ibhagwan/fzf-lua'},
    },
    config = function()
      require('neoclip').setup()
    end,
  }

  -- Color Theme
  use({ 'ellisonleao/gruvbox.nvim', as = 'gruvbox' })
  vim.cmd('colorscheme gruvbox')

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use( 'nvim-treesitter/playground' )

  -- Harpoon
  use( 'theprimeagen/harpoon' )

  -- Undotree
  use( 'mbbill/undotree' )

  -- Fugitive
  use( 'tpope/vim-fugitive')

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

  -- NvimTree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- JABS
  use 'matbme/JABS.nvim'

  -- Whick-key
  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- Org-mode
  use {'nvim-orgmode/orgmode', config = function()
    require('orgmode').setup({
      org_agenda_files = {'~/Notes/**/*'},
      org_default_notes_file = {'~/Notes/org/refile.org'}
    })
  end
}

end)
