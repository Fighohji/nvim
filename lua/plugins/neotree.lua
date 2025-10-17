return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    filetered_items = {
      visible = true,
      hide_gitignored = false,
      hide_by_name = {
        '.git',
        '.DS_Store',
        'thumbs.db',
      },
    },
  },
  config = function()
    vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', {})
    require("neo-tree").setup({
      default_component_configs = {
        window = {
          auto_expand_width = true,
        }
      },
      event_handlers = {
        {
          event = "file_opened",
          handler = function(file_path)
            vim.cmd("Neotree close")
          end
        }
      }
    })
  end
}
