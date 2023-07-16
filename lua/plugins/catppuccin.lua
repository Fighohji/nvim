return {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
        transparent_background = true, -- disables setting the background color.
        dim_inactive = {
            enabled = false, -- dims the background color of inactive window
            shade = "dark",
            percentage = 0.15, -- percentage of the shade to apply to the inactive window
        },

        no_italic = true,
        integrations = {
            alpha = true,
            cmp = true,
            gitsigns = true,
            illuminate = true,
            indent_blankline = { enabled = true },
            lsp_trouble = true,
            mini = true,
            native_lsp = {
                enabled = true,
                underlines = {
                    errors = { "undercurl" },
                    hints = { "undercurl" },
                    warnings = { "undercurl" },
                    information = { "undercurl" },
                },
            },
            navic = { enabled = true },
            neotest = true,
            noice = true,
            notify = true,
            nvimtree = true,
            semantic_tokens = true,
            telescope = true,
            treesitter = true,
            which_key = true,
        },
    },
}
