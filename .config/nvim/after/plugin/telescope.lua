telescope = require('telescope')
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>p', builtin.find_files, {})

telescope.setup{ 
                defaults = {
                    file_ignore_patterns = {
                        "%_build/.*",
                        "doc/.*"
                    }
                }
            }
