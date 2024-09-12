return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local wk = require("which-key")
      wk.add({
        { "<leader>f",  group = "file" },
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "Search In Text" },
        { "<leader>fr", "<cmd>Telescope oldfiles<cr>",   desc = "Open Recent File" },
      })
    end
  },
}
