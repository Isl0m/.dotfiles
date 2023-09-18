local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "catppuccin/nvim",                 name = "catppuccin", priority = 1000 },
    { 'williamboman/mason.nvim',
        opts = {
            ensure_installed = {
                "prettier",
                "typescript-language-server"
            }
        },
    },
    { 'williamboman/mason-lspconfig.nvim' },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },           -- Required

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },   -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },   -- Required
        }
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        event = "VeryLazy"
    },
    {
        'numToStr/Comment.nvim',
        lazy = false,
    },
    {"simrat39/rust-tools.nvim"},
    -- {"wakatime/vim-wakatime"},
    {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function ()
            vim.g.rustfmt_autosave = 1
        end
    }
}

local opts = {}
require("lazy").setup(plugins, opts)
