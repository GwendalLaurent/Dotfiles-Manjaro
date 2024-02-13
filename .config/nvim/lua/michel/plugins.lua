vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'
    -- Lua
    use 'ThePrimeagen/vim-be-good'
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'nvim-lua/plenary.nvim'
    use {
        'ThePrimeagen/harpoon',
        config = function()
            require("harpoon").setup({
                global_settings = {
                    -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
                    save_on_toggle = false,

                    -- saves the harpoon file upon every change. disabling is unrecommended.
                    save_on_change = true,

                    -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
                    enter_on_sendcmd = false,

                    -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
                    tmux_autoclose_windows = false,

                    -- filetypes that you want to prevent from adding to the harpoon list menu.
                    excluded_filetypes = { "harpoon" },

                    -- set marks specific to each git branch inside git repository
                    mark_branch = false,
                    projects = {
                        ["$HOME/UCL/Master2/thesis/pmod_uwb"] = {
                            term = {
                                cmds = {
                                "./mcd.sh"
                                }
                            }
                        }
                    }
                }
            })
        end
    }
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup({
                signs = {
                    add = { text = "+" },
                    change = { text = "~" },
                },
            })
        end
    }
    use 'nvim-telescope/telescope.nvim'
    use 'tpope/vim-fugitive'
    use {
          "folke/todo-comments.nvim",
          dependencies = { "nvim-lua/plenary.nvim" },
          opts = {
          }
    }
    use {
        "nvim-neorg/neorg",
        config = function()
            require('neorg').setup {
                load = {
                    ["core.defaults"] = {}, -- Loads default behaviour
                    ["core.concealer"] = {}, -- Adds pretty icons to your documents
                    ["core.completion"] = {
                        config = {
                            engine = "nvim-cmp",
                        }
                    },
                    ["core.dirman"] = { -- Manages Neorg workspaces
                        config = {
                            workspaces = {
                                work = "~/Notes/work",
                                perso = "~/Notes/perso",
                            },
                            default_workspace = "work",
                        },
                    },
                },
            }
        end,
        run = ":Neorg sync-parsers",
        requires = "nvim-lua/plenary.nvim",
    }
    use "nvim-treesitter/nvim-treesitter"
    use "lervag/vimtex"
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
end)

