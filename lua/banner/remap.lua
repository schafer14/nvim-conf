local nnoremap = require("banner.keymap").nnoremap

nnoremap("<leader>p", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("<leader>lg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>w", "<c-w>")

