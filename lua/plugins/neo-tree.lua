return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    vim.keymap.set('n', '<leader>no', ':Neotree filesystem reveal left<CR>')
    vim.keymap.set('n', '<leader>nc', ':Neotree close<CR>')

    require('neo-tree').setup({
      close_if_last_window = true,
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false,
        }
      }
    })
  end
}
