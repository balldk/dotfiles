local g = vim.g

g.nvim_tree_quit_on_open = 0
g.nvim_tree_indent_markers = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_disable_window_picker = 1
g.nvim_tree_respect_buf_cwd = 1
g.nvim_tree_width_allow_resize  = 1
g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1
}

g.nvim_tree_icons = {
	default = "‣ "
}

require('nvim-tree').setup {
    open_on_setup = true,
    update_cwd = true,
    view = {
        width = 25,
        auto_resize = true
    },
    filters = {
        -- dotfiles = true,
        -- custom = { '.git', 'node_modules', '.cache', '.bin' },
    },
    git = {
        enable = true,
        ignore = true,
    },
}

