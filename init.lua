-- Custom Vim Options
vim.g.mapleader = ' '

vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.smartindent = true

vim.opt.nu = true

require("config.lazy")

-- Neotree Settings
vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left<CR>')

-- Treesitter Settings
local config = require('nvim-treesitter.configs')
config.setup({
  ensure_installed = {'lua', 'javascript'},
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true},
})

-- Telescope Settings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- Statusline Settings
require('lualine').setup {
  options = { theme = 'gruvbox-material' }
}

-- Colorscheme Settings
vim.cmd.colorscheme("gruvbox-material")

