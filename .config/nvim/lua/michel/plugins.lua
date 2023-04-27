vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'
    -- Lua
    use {
        "folke/zen-mode.nvim",
        config = function()
            require("zen-mode").setup {
                zindex = 40,
                window = {
                    backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
                    -- height and width can be:
                    -- * an absolute number of cells when > 1
                    -- * a percentage of the width / height of the editor when <= 1
                    -- * a function that returns the width or the height
                    width = 420, -- width of the Zen window
                    height = 1, -- height of the Zen window
                    -- by default, no options are changed for the Zen window
                    -- uncomment any of the options below, or add other vim.wo options you want to apply
                    options = {
                        -- signcolumn = "no", -- disable signcolumn
                        -- number = false, -- disable number column
                        -- relativenumber = false, -- disable relative numbers
                        -- cursorline = false, -- disable cursorline
                        -- cursorcolumn = false, -- disable cursor column
                        -- foldcolumn = "0", -- disable fold column
                        -- list = false, -- disable whitespace characters
                    },
                },
            }
        end
    }
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
end)

