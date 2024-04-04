return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()
    local wk = require("which-key")
    wk.register({
      ["<leader>f"] = {
        name = "+file",
        d = { "<Cmd>Neotree position=current<CR>", "Neotree" },
        f = { "<Cmd>Telescope find_files<CR>", "Telescope - Find Files" },
        g = { "<Cmd>Telescope live_grep<CR>", "Telescope - Live Grep" },
        b = { "<Cmd>Telescope buffers<CR>", "Telescope - Buffers" },
        h = { "<Cmd>Telescope help_tags<CR>", "Telescope - Help Tags" },
      },
      ["<leader>g"] = {
        name = "+LSP",
        d = { vim.lsp.buf.format, "LSP - Format Text" },
        e = { vim.diagnostic.open_float, "Diagnostic - Open Float" },
        q = { vim.diagnostic.setloclist, "Diagnostic - Open List" },
        g = {
          name = "Go to...",
          D = { vim.lsp.buf.declaration, "LSP - Go to Declaration" },
          d = { vim.lsp.buf.definition, "LSP - Go to Definition" },
          n = { vim.diagnostic.goto_next, "Diagnostic - Go to next diagnostic" },
          p = { vim.diagnostic.goto_prev, "Diagnostic - Go to previous diagnostic" }
        },
        K = { vim.lsp.buf.hover, "LSP - Hover documentation" },
        c = { vim.lsp.buf.code_action, "LSP - Code Actions" },
        r = { vim.lsp.buf.rename, "LSP - Rename Token"},
      },
      ["<leader>r"] = {
        name = "+refactor",
        i = { "<Cmd>Refactor inline_var<CR>", "Inline Variable" },
        I = { "<Cmd>Refactor inline_func<CR>", "Inline Function" },
        b = { 
          name = "Extract Block...",
          b = { "<Cmd>Refactor extract_block<CR>", "Extract Block" },
          f = { "<Cmd>Refactor extract_block_to_file<CR>", "Extract Block to File"}
        },
      }
    })
    wk.register({
      ["<leader>r"] = {
        name = "+refactor",
        e = { "<Cmd>Refactor extract<CR>", "Extract Function" },
        f = { "<Cmd>Refactor extract_to_file<CR>", "Extract Function to File" },
        v = { "<Cmd>Refactor extract_var<CR>", "Extract Variable" },
        i = { "<Cmd>Refactor inline_var<CR>", "Inline variable" },
      }

    },{mode = "x"})
  end,
}
