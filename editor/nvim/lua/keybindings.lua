vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

-- map
map("n", "n", "nzz", opt)
map("n", "N", "Nzz", opt)
map("n", "*", "*zz", opt)
map("n", "#", "#zz", opt)
map("n", "g*", "g*zz", opt)
map("n", "H", "^", opt)
map("v", "H", "^", opt)
map("n", "L", "$", opt)
map("v", "L", "$", opt)
map("n", "Q", "%", opt)
-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- magic search
-- map("n", "/", "/\\v", { noremap = true , silent = false})
-- map("v", "/", "/\\v", { noremap = true , silent = false})
-- ctrl u / ctrl + d  只移动9行，默认移动半屏
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)

-- alt + hjkl  窗口之间跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

--esc
map("n", "<C-j>", "<Esc>", opt)
map("i", "jk", "<Esc>", opt)
map("v", "<C-j>", "<Esc>", opt)
map("s", "<C-j>", "<Esc>", opt)
map("x", "<C-j>", "<Esc>", opt)
map("c", "<C-j>", "<Esc>", opt)
map("o", "<C-j>", "<Esc>", opt)
map("l", "<C-j>", "<Esc>", opt)
map("t", "<C-j>", "<Esc>", opt)

--plugs
map('n', '<F2>', ':NvimTreeToggle<CR>', opt)
-- bufferline 左右Tab切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

-- telescope ctrl+p 搜文件
map("n", "<C-p>", "<cmd>Telescope find_files<cr>", opt)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opt)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opt)
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opt)

--hop.vim
-- place this in one of your configuration file(s)
vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('o', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
vim.api.nvim_set_keymap('o', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
map("n", "s", "<cmd>lua require'hop'.hint_char1()<cr>", opt)
map("n", "<leader>j", "<cmd>lua require'hop'.hint_lines()<cr>", opt)

--buffer 
-- 切换buffer
map("n", "gb", "<cmd>BufferLinePick<cr>", opt)
-- close buffer
map("n", "<leader>gg", "<cmd>Bdelete<cr>", opt)

--ack
map("n", "<leader>a", ":Ack!", opt)

--cosco
map("n", "<A-m>", "<cmd>CommaOrSemiColon<cr>", opt)
map("i", "<A-m>", "<cmd>CommaOrSemiColon<cr>", opt)
