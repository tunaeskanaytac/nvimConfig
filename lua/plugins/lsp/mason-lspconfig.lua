return {
  lazy = false,
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "jdtls", "clangd" },
      automatic_installation = true
    })
  end
}
