vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        -- 使用 nvim 内置lsp
        diagnostics = "coc",
        -- 左侧让出 nvim-tree 的位置
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                text_align = "left"
            }
        },
        right_mouse_command = "vertical sbuffer %d",
        left_mouse_command = function(bufnum)
            require('bufdelete').bufdelete(bufnum, true)
        end

    }
}