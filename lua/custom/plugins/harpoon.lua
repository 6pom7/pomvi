local mark = require 'harpoon.mark'
local ui = require 'harpoon.ui'

return {
  vim.keymap.set('n', '<leader>pa', mark.add_file, { desc = '[A]dd File' }),
  vim.keymap.set('n', '<leader>pm', ui.toggle_quick_menu, { desc = '[M]enu' }),

  -- Move to given window
  vim.keymap.set('n', '<leader>p1', function()
    ui.nav_file(1)
  end, { desc = 'File [1]' }),
  vim.keymap.set('n', '<leader>p2', function()
    ui.nav_file(2)
  end, { desc = 'File [2]' }),
  vim.keymap.set('n', '<leader>p3', function()
    ui.nav_file(3)
  end, { desc = 'File [3]' }),
  vim.keymap.set('n', '<leader>p4', function()
    ui.nav_file(4)
  end, { desc = 'File [4]' }),
}
