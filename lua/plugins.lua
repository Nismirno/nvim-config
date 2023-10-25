return require('packer').startup(function(use)
    use('wbthomason/packer.nvim')

    use{'junegunn/fzf', run = "fzf#install()"}
    use('junegunn/fzf.vim')

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
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }
    use('simrat39/inlay-hints.nvim')
    use('simrat39/rust-tools.nvim')
    use('mfussenegger/nvim-dap')
    use('nvim-tree/nvim-tree.lua')
    use('nvim-tree/nvim-web-devicons')
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use('mhartington/formatter.nvim')
end)
