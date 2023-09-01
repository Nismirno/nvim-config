return require('packer').startup(function(use) 
    use('wbthomason/packer.nvim')

    use{'junegunn/fzf', run = "fzf#install()"}
    use('junegunn/fzf.vim')

    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')

    use('neovim/nvim-lspconfig')
    use('simrat39/rust-tools.nvim')
    use{ 
        'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } 
    }
    use {'morhetz/gruvbox', config = function() vim.cmd.colorscheme("gruvbox") end }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }   
    use('nvim-treesitter/playground')
    use('nvim-lua/plenary.nvim')
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
end)
