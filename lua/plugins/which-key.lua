return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require("which-key")
    wk.add({
      { "<leader>c", group = "code", icon = '' },
      { "<leader>r", group = "re", icon = "󰑕" },
      { "<leader>w", group = "windows", icon = "" },
    })
  end
}
