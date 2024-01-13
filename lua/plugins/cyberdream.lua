return {
  "scottmckendry/cyberdream.nvim",
  lazy = false,
  priority = 1000,
  config = function()
      require("cyberdream").setup({
          -- Recommended - see "Configuring" below for more config options
          transparent = true,
          italic_comments = true,
          hide_fillchars = true,
          borderless_telescope = true,
      })
      vim.cmd("colorscheme cyberdream") -- set the colorscheme
      vim.cmd("hi NormalFloat ctermbg=NONE guibg=#241f31")
      vim.cmd("hi FloatTitle ctermbg=NONE guibg=#42E66C")
      vim.cmd("hi FloatBorder ctermbg=NONE guibg=#42E66C")
  end,
}
