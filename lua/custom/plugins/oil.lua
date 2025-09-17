return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    float = {
      padding = 5,
    },
    view_options = {
      show_hidden = true,
    },
  },
  -- Optional dependencies
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  -- Open oil normally
  vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open Oil' }),
  -- Toggle Oil Float
  vim.keymap.set('n', '<leader>o', function()
    require('oil').toggle_float()
  end, { desc = 'Toggle [O]il' }),
}
