return {
  {
    'tpope/vim-dadbod',
    cmd = { 'DB', 'DBUI', 'DBUIToggle', 'DBUIAddConnection', 'DBUIFindBuffer' },
  },
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = { 'tpope/vim-dadbod' },
    cmd = { 'DBUI', 'DBUIToggle', 'DBUIAddConnection', 'DBUIFindBuffer' },
    init = function()
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_save_location = vim.fn.stdpath 'data' .. '/db_ui'
      vim.g.db_ui_show_database_icon = 1
      vim.g.db_ui_force_echo_notifications = 1

      vim.keymap.set('n', '<leader>du', '<cmd>DBUIToggle<cr>', { desc = '[D]atabase [U]I' })
      vim.keymap.set('n', '<leader>df', '<cmd>DBUIFindBuffer<cr>', { desc = '[D]atabase [F]ind buffer' })
      vim.keymap.set('n', '<leader>da', '<cmd>DBUIAddConnection<cr>', { desc = '[D]atabase [A]dd connection' })
      vim.keymap.set('n', '<leader>dr', '<cmd>DBUIRenameBuffer<cr>', { desc = '[D]atabase [R]ename buffer' })
      vim.keymap.set('n', '<leader>dl', '<cmd>DBUILastQueryInfo<cr>', { desc = '[D]atabase [L]ast query info' })
    end,
  },
}
