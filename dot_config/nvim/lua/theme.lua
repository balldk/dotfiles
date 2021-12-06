local cmd = vim.cmd

-- require('onedarkpro').load()
require("nebulous").setup {
    variant = "midnight",
    -- disable = {
    --     background = true,
    -- }
    custom_colors = {
        CursorLineNr = { fg = "#fe1fa6", bg = "NONE", style = "NONE" },
    }
}

