return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    -- Markdown buffers and LSP hover windows both use `markdown` filetype.
    -- Loading this plugin there currently trips a Treesitter/query mismatch.
    ft = { 'Avante', 'codecompanion' },
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
      render_modes = { 'n', 'c' },
    },
  },
}
