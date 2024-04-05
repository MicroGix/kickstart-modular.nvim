return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  init = function()
    require('oil').setup()
  end,

  vim.keymap.set('n', '<leader>fb', '<CMD>Oil .<CR>', { desc = '[F]iles [B]rowser' }),
  vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' }),
}
