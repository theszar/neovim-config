local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
    return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use {'wbthomason/packer.nvim'}
    use {'catppuccin/nvim'}
    use {'nvim-lualine/lualine.nvim'}
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
    use {'nvim-treesitter/nvim-treesitter-context'}
    use {'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = {'nvim-lua/plenary.nvim'},
        }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use {'akinsho/toggleterm.nvim'}
    use {'nvim-tree/nvim-tree.lua',
        requires = {
        'nvim-tree/nvim-web-devicons', -- optional
        }
    }
    use {'famiu/bufdelete.nvim'}
    use {'numToStr/Comment.nvim'}
    use {'JoosepAlviste/nvim-ts-context-commentstring'}
    use {'windwp/nvim-autopairs'}
    use {'mg979/vim-visual-multi', branch = 'master'}
    use {'ahmedkhalf/project.nvim'}

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "jose-elias-alvarez/null-ls.nvim"
    }
        -- Snippets
    use { "L3MON4D3/LuaSnip"} --snippet engine
    use { "rafamadriz/friendly-snippets"} -- a bunch of snippets to use
    -- cmp plugins
    use "hrsh7th/nvim-cmp" -- The completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
