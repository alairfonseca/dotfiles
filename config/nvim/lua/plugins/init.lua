vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins/init.lua PackerCompile'

require 'plugins.lsp_config'
require 'plugins.cmp_config'
require 'plugins.treesitter_config'
require 'plugins.autopairs_config'
require 'plugins.nvim_tree_config'

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Tabs
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require("bufferline").setup{}
    end
  }

  -- Bottom line
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
      require('lualine').setup(
	{
	  options = {
    	    theme = 'tokyonight'
  	  }
	}
      )
    end
  }

  -- File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    }
    --config = function() require'nvim-tree'.setup {} end
}

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'simrat39/rust-tools.nvim'
  --use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  -- Autocomplete
  use 'hrsh7th/nvim-cmp' -- completion plugin
  use 'hrsh7th/cmp-buffer' -- buffer completions
  use 'hrsh7th/cmp-path' -- path completions
  use 'hrsh7th/cmp-cmdline' -- comandline completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'

  -- Debug
  -- use 'mfussenegger/nvim-dap'

  -- Autopairs
  use "windwp/nvim-autopairs"

  -- snippets
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  -- Fuzzy
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  -- Theme
  use 'folke/tokyonight.nvim'
end)

