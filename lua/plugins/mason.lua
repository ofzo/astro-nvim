return {
    {
        "williamboman/mason.nvim",
        cmd = {
            "Mason", "MasonInstall", "MasonUninstall", "MasonUninstallAll",
            "MasonLog", "MasonUpdate", -- AstroNvim extension here as well
            "MasonUpdateAll" -- AstroNvim specific
        },
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_uninstalled = "✗",
                    package_pending = "⟳"
                },
                border = "rounded",
                height = 0.7
            }
        },
        build = ":MasonUpdate",
        config = require "plugins.configs.mason"
    }
}
