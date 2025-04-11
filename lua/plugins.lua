vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/nvim-cmp'}

    use {'hrsh7th/cmp-vsnip'}
    use {'hrsh7th/vim-vsnip'}
    use {'rafamadriz/friendly-snippets'}

    use "xiyaowong/transparent.nvim"
    use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}
    --
    use 'dense-analysis/ale'
    use 'powerman/vim-plugin-ruscmd'

    -- git
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    use 'nvim-lua/plenary.nvim'




    use {
        'gelguy/wilder.nvim',
        config = function()
            -- config goes here
        end,
    }

    --airline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    --



    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'filNaj/tree-setter'


    --theme
    use "rebelot/kanagawa.nvim"
    use "scottmckendry/cyberdream.nvim"
    --

    use "tpope/vim-fugitive"


    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }

end)

