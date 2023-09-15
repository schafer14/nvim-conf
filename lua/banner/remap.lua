local nnoremap = require("banner.keymap").nnoremap
local tnoremap = require("banner.keymap").tnoremap
local inoremap = require("banner.keymap").inoremap
local vnoremap = require("banner.keymap").vnoremap
local snoremap = require("banner.keymap").snoremap

nnoremap("<leader>p", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("<leader>lg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>vc", "<cmd>lua require('telescope.builtin').command_history()<cr>")
nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
nnoremap("<leader>vrc", "<cmd>lua require('telescope.builtin').find_files {cwd = '~/.config/nvim' }<cr>")
nnoremap("<leader>cf", "<cmd>lua require('telescope.builtin').find_files {cwd = '/tmp/conformance' }<cr>")

nnoremap("<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>")
nnoremap("<leader>jq", ":set ft=json | :%!jq .<cr>")

nnoremap("qq", "zA")

-- inoremap("<Tab>", "<cmd>lua require('luasnip').jump(1)<cr>")

nnoremap("<C-h>", "<cmd>TmuxNavigateLeft<cr>")
nnoremap("<C-j>", "<cmd>TmuxNavigateDown<cr>")
nnoremap("<C-k>", "<cmd>TmuxNavigateUp<cr>")
nnoremap("<C-l>", "<cmd>TmuxNavigateRight<cr>")

nnoremap("<leader>tn", ":TestNearest<CR>")
nnoremap("<leader>tl", ":TestLast<CR>")
nnoremap("<leader>tv", ":TestNearest -v -count 1<CR>")

-- paste from the system buffer using triple p in normal mode.
-- inoremap("ppp", "<C-r>+")
-- nnoremap("ppp", '"+p')
-- inoremap("sss", "<C-r>s")

vim.api.nvim_create_user_command("Gitmoji", function() 
  require("gitemoji").gitemoji(require("telescope.themes").get_dropdown{})
end, {})

vim.api.nvim_create_user_command("Http", function(_)
  require("rest-nvim").run()
end, {})


vim.cmd([[
let @s = "¯\\_(ツ)_/¯"
]])


