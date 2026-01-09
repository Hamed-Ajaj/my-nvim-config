-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'NvChad/nvim-colorizer.lua',
    event = 'BufReadPre',
    opts = {
      user_default_options = {
        tailwind = true,
      },
    },
  },
}
