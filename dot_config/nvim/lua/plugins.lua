
local fn = vim.fn

-- Auto install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd 'packadd packer.nvim'
end

return require('packer').startup(function(use)
    -- Packer manage itself
    use 'wbthomason/packer.nvim'

    -- Muse have
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lua/plenary.nvim'

    -- Theme
    -- use 'navarasu/onedark.nvim'
    -- use 'olimorris/onedarkpro.nvim'
    use 'Yagua/nebulous.nvim'

    -- Productivity
    use 'jiangmiao/auto-pairs'
    use 'kyazdani42/nvim-tree.lua'
    use 'nvim-telescope/telescope.nvim'
    use 'numToStr/Comment.nvim'
    use 'folke/which-key.nvim'
    use 'glepnir/lspsaga.nvim'
    use 's1n7ax/nvim-terminal'

    -- Fancy UI
    use 'glepnir/galaxyline.nvim'
    use 'romgrk/barbar.nvim'
    use 'glepnir/dashboard-nvim'
    use 'norcalli/nvim-colorizer.lua'

    -- Syntax and language support
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'

    -- Auto completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'onsails/lspkind-nvim'

    if packer_bootstrap then
        require('packer').sync()
    end
end)

