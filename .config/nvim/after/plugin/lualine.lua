require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'everforest',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
