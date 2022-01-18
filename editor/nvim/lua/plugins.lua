return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- theme
    use 'glepnir/zephyr-nvim'
    use 'sainnhe/sonokai'

    -- nvim-tree 
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = function() require'nvim-tree'.setup {} end
    }
    --buffer line
    use 'famiu/bufdelete.nvim'
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    
    -- telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    --gitsigns
    use {
      'lewis6991/gitsigns.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      },
      config = function()
        require('gitsigns').setup()
      end
    }
    
    --hop.nvim
    use {
      'phaazon/hop.nvim',
      branch = 'v1', -- optional but strongly recommended
      config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      end
    }
    
    --nvim-treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    
    --nvim-autopairs
    use 'windwp/nvim-autopairs'
    use 'p00f/nvim-ts-rainbow'
    
    --coc.nvim
    use {'neoclide/coc.nvim', branch = 'release'}

    --ack
    use 'mileszs/ack.vim'
    
    --comment
    use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }
    -- cosco.vim
    use 'lfilho/cosco.vim'

  --statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)
