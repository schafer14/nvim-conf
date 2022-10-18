local nnoremap = require("banner.keymap").nnoremap
local inoremap = require("banner.keymap").inoremap

nnoremap("<leader>p", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("<leader>gt", "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>")
nnoremap("<leader>gn", "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>")
nnoremap("<leader>lg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader><leader>x", ":so<cr>")
nnoremap("<leader>w", "<c-w>")
nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")


nnoremap("<leader>tn", ":TestNearest<CR>")
nnoremap("<leader>tl", ":TestLast<CR>")
nnoremap("<leader>tv", ":TestNearest -v -count 1<CR>")

inoremap("jk", "<esc>")
inoremap("lg", "◊")

vim.api.nvim_create_user_command("Gitmoji", function() 
  require("gitemoji").gitemoji(require("telescope.themes").get_dropdown{})
end, {})
