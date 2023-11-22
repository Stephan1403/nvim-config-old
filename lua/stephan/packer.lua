-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

 -- Nightfly color scheme
 use "bluz71/vim-nightfly-colors"

 -- Treesitter 
 use('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})

-- Nvim tree for file navigation panel
 use {
	'nvim-tree/nvim-tree.lua',
	requires = {
		'nvim-tree/nvim-web-devicons', -- optional
	},
 } 

 -- LSP language server + autocompletion plugins
 use {
	 'VonHeikemen/lsp-zero.nvim',
	 branch = 'v3.x',
	 requires = {
		 --- Uncomment these if you want to manage LSP servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		 -- LSP Support
		 {'neovim/nvim-lspconfig'},
		 -- Autocompletion
		 {'hrsh7th/nvim-cmp'},
		 {'hrsh7th/cmp-nvim-lsp'},
		 {'L3MON4D3/LuaSnip'},
	 }
}

use { 'alexghergh/nvim-tmux-navigation', config = function()
        require'nvim-tmux-navigation'.setup {
            disable_when_zoomed = true, -- defaults to false
            keybindings = {
                left = "<C-h>",
                down = "<C-j>",
                up = "<C-k>",
                right = "<C-l>",
                last_active = "<C-\\>",
                next = "<C-Space>",
            }
        }
    end
}

end) 
