-- Custom Vim Options
vim.g.mapleader = ' '

vim.cmd('set wildmenu')
vim.cmd('set wildmode=longest,list,full')
vim.cmd('set wildoptions=pum')

require('vim-options')
require('config.lazy')

