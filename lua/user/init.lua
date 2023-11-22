-- base setting
return {
    colorscheme = "catppuccin",

    plugins = {
        {
            "catppuccin/nvim",
            name = "catppuccin",
            config = function()
                require("catppuccin").setup {
                    color_overrides = {
                        all = {text = "#1f2937"},
                        latte = {base = "#ffffff"}
                    },
                    transparent_background = true,
                    custom_highlights = function()
                        return {
                            NormalFloat = {bg = "#fafafa"},
                            NotifyBackground = {bg = "#fafafa"},
                            CursorLineNr = {fg = "#a21caf", style = {"bold"}},
                            IndentBlanklineContextChar = {fg = "#cbd5e1"},
                            ["@field"] = {fg = "#e11d48"},
                            ["@property"] = {fg = "#c2410c"},
                            ["@number"] = {fg = "#a21caf", style = {"bold"}},
                            ["@boolean"] = {fg = "#a21caf", style = {"bold"}},
                            ["@keyword.function"] = {
                                fg = "#a21caf",
                                style = {"italic"}
                            },
                            ["@function.macro"] = {
                                fg = "#a21caf",
                                style = {"italic"}
                            },
                            ["@method.call"] = {style = {"italic"}}
                        }
                    end
                }
            end
        }, {
            "folke/flash.nvim",
            keys = {
                {
                    "s",
                    mode = {"n", "x", "o"},
                    function() require("flash").jump() end,
                    desc = "Flash jump"
                }, {
                    "<C-A-f>",
                    mode = {"i"},
                    function() require("flash").toggle() end,
                    desc = "Toggle Flash Search"
                }
            }
        }, {"saecki/crates.nvim", event = {"BufRead Cargo.toml"}, config = true}
        -- {"simrat39/rust-tools.nvim", event = "VeryLazy"}
    }
}
