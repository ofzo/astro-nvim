local get_icon = require("astronvim.utils").get_icon
return {
    "lewis6991/gitsigns.nvim",
    enabled = vim.fn.executable "git" == 1,
    event = "User AstroGitFile",
    opts = {
        signs = {
            add = {text = get_icon "GitSign"},
            change = {text = get_icon "GitSign"},
            delete = {text = get_icon "GitSign"},
            topdelete = {text = get_icon "GitSign"},
            changedelete = {text = get_icon "GitSign"},
            untracked = {text = get_icon "GitSign"}
        },
        -- current_line_blame = true,
        -- current_line_blame_opts = {
        --   virt_text = true,
        --   virt_text_pos = "right_align",
        --   delay = 1000,
        --   ignore_whitespace = true
        -- },
        current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
        worktrees = vim.g.git_worktrees
    }
}
