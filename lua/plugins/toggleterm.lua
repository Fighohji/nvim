return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      require('toggleterm').setup({
        size = 15,
        shade_terminals = true,
        open_mapping = [[<c-\>]],
        start_in_insert = true,
        direction = 'horizontal',
        close_on_exit = true,
        shell = vim.o.shell,
        auto_scroll = true,
      })
    end,
  }
}
