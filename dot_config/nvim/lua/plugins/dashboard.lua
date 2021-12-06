local g = vim.g

g.dashboard_custom_header = {
    [[                 (             )                                  ]],
    [[                 `--(_   _)--'                                    ]],
    [[                     y-y                                          ]],
    [[                     /@@ \                                        ]],
    [[                     /     \                                      ]],
    [[                     `--'.  \             ,                       ]],
    [[                         |   `.__________/)                       ]],
    [[     ██████╗ ██╗  ██╗    ██████╗ ███████╗███████╗██████╗          ]],
    [[    ██╔═══██╗██║  ██║    ██╔══██╗██╔════╝██╔════╝██╔══██╗         ]],
    [[    ██║   ██║███████║    ██║  ██║█████╗  █████╗  ██████╔╝         ]],
    [[    ██║   ██║██╔══██║    ██║  ██║██╔══╝  ██╔══╝  ██╔══██╗         ]],
    [[    ╚██████╔╝██║  ██║    ██████╔╝███████╗███████╗██║  ██║██╗██╗██╗]],
    [[     ╚═════╝ ╚═╝  ╚═╝    ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝╚═╝]],
}

g.dashboard_custom_section = {
    a = {
        description = {'  Recently Used Files'},
        command = 'Telescope oldfiles'
    },
    b = {
        description = {'  Find File          '},
        command = 'Telescope find_files'
    },
    -- c  = {
    --     description = {'  Load Last Session  '},
    --     command = 'SessionLoad'
    -- },
    d = {
        description = {'  Find Word          '},
        command = 'Telescope live_grep'
    },
    e = {
        description = {'  Settings           '},
        command = ':e ~/.config/nvim/lua/settings.lua'
    },
    f = {
        description = {'  Neovim Config Files'},
        command = 'lua require(\'telescope.builtin\').find_files({search_dirs = {"~/.config/nvim"}})'
    },
    -- e = {description = {'  Marks              '}, command = 'Telescope marks'}
}

g.dashboard_custom_footer = {[[💊 Sản phẩm này không phải là thuốc và không có tác dụng thay thế thuốc chữa bệnh]]}
