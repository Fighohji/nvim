return {
  'akinsho/bufferline.nvim',
  event = { "BufReadPre", "BufNewFile" },
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    local bufferline = require("bufferline")
    bufferline.setup {
      options = {
        style_preset = bufferline.style_preset.minimal,
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          return " " .. count
        end,
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            text_align = "center",
            separator = true
          }
        },
        separator_style = "thin",
        always_show_bufferline = false,
      }
    }
    local wk = require("which-key")
    wk.add({
      { "<leader>b",  group = "Buffer", icon = "󰛼" },
      { "<leader>bc", "<cmd>bw<cr>",   desc = "Buffer Close" },
      { "<leader>bp", "<cmd>bp<cr>",   desc = "Previous Buffer" },
      { "<leader>bn", "<cmd>bn<cr>",   desc = "Next Buffer" },
    })
  end
}
