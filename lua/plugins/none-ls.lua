return {
  "nvimtools/none-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      source = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.clang_format,
      },
    })
    vim.keymap.set('n', '<C-F>', vim.lsp.buf.format, { desc = "Format File" })
  end
}
