return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  init = function()
    require('oil').setup {
      skip_confirm_for_simple_edits = true,
      float = {
        -- Padding around the floating window
        padding = 2,
        max_width = 90,
        max_height = 45,
        border = 'rounded',
        win_options = {
          winblend = 0,
        },
        -- This is the config that will be passed to nvim_open_win.
        -- Change values here to customize the layout
        override = function(conf)
          return conf
        end,
      },
    }
  end,

  vim.keymap.set('n', '<leader>fb', '<CMD>Oil . --float<CR>', { desc = '[F]iles [B]rowser' }),
  vim.keymap.set('n', '-', '<CMD>Oil --float<CR>', { desc = 'Open parent directory' }),
}
