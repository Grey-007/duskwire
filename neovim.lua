return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#160e0e", -- Default background
                base01 = "#b38989", -- Lighter background (status bars)
                base02 = "#160e0e", -- Selection background
                base03 = "#b38989", -- Comments, invisibles
                base04 = "#fa9551", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#fa9551", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#ff6728", -- Variables, errors, red
                base09 = "#ffa884", -- Integers, constants, orange
                base0A = "#ff7f27", -- Classes, types, yellow
                base0B = "#ff964b", -- Strings, green
                base0C = "#f4ac81", -- Support, regex, cyan
                base0D = "#827cda", -- Functions, keywords, blue
                base0E = "#ff9166", -- Keywords, storage, magenta
                base0F = "#ff9750", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
