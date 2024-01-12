require("usr.prefs")

--Setup lazy.nvim-------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  colorscheme = require("plugins.colorscheme"), 
  telescope = require("plugins.telescope")
}

local opts = {}

-- Add plugins values to a seperate array
local pluginList = {}
for _,v in pairs(plugins) do
  table.insert(pluginList, v.plugin)
end

require("lazy").setup(pluginList, opts)
-------------------------------------------------------------
plugins.telescope.setup()--Setup Telescope