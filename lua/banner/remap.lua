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
nnoremap("<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>")

nnoremap("<leader>xx", "<cmd>TroubleToggle<cr>")
nnoremap("qq", "zA")

nnoremap("<leader><leader>x", ":so<cr>")
nnoremap("<leader>w", "<c-w>")


nnoremap("<leader>tn", ":TestNearest<CR>")
nnoremap("<leader>tl", ":TestLast<CR>")
nnoremap("<leader>tv", ":TestNearest -v -count 1<CR>")

nnoremap("<leader>k", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
nnoremap("<leader>q", "<cmd>lua vim.diagnostic.open_float()<CR>")
nnoremap("<leader>e", "<cmd>lua vim.diagnostic.setloclist()<CR>")

-- Send line to terminal 1
vnoremap("<leader>sl", ":ToggleTermSendVisualLines<CR>")
nnoremap("<leader>sl", ":ToggleTermSendCurrentLine<CR>")
nnoremap("<leader>tl", ":TermExec cmd='clear'<CR>")
nnoremap("<leader>tc", ":ToggleTermInturrpt<CR>")

-- Send line to a specific terminal
vnoremap("<leader>sj", ":ToggleTermSendVisualLines ")
nnoremap("<leader>sj", ":ToggleTermSendCurrentLine ")

nnoremap("<leader>rb", ":RDDCodeBlock<CR>")
nnoremap("<leader>rs", ":RDDRunSection<CR>")
nnoremap("<leader>rr", ":RDDReadme<CR>")

tnoremap("<C-h>", [[<Cmd>wincmd h<CR>]])
tnoremap("<C-j>", [[<Cmd>wincmd j<CR>]])
tnoremap("<C-k>", [[<Cmd>wincmd k<CR>]])
tnoremap("<C-l>", [[<Cmd>wincmd l<CR>]])
tnoremap("jk", [[<C-\><C-n>]])
tnoremap("<esc>", [[<C-\><C-n>]])

inoremap("jk", "<esc>")
inoremap("<C-p><C-p>", "<C-r>+")
inoremap("<C-s><C-s>", "<C-r>s")

inoremap("<C-n>", "<cmd>lua require('luasnip').jump(1)<Cr>")



vim.api.nvim_create_user_command("Gitmoji", function() 
  require("gitemoji").gitemoji(require("telescope.themes").get_dropdown{})
end, {})

vim.api.nvim_create_user_command("RDDCodeBlock", function(args) 
  local bufnr = vim.api.nvim_get_current_buf()
  local line = vim.api.nvim_win_get_cursor(0)[1]
  require("bscript").run_code(bufnr, line)
end, {})

vim.api.nvim_create_user_command("RDDRunSection", function(_)
  local bufnr = vim.api.nvim_get_current_buf()
  local currLine = vim.api.nvim_win_get_cursor(0)[1]
  local sections = require("bscript").get_sections(bufnr)

  for _, section in pairs(sections) do
    if vim.treesitter.is_in_node_range(section.node, currLine) then
      require("bscript").run_section(bufnr, section.code_blocks)
    end
  end
end, {})

vim.api.nvim_create_user_command("RDDReadme", function(_)
  require("bscript-tele").cmds()
end, {})



vim.cmd([[
let @s = "¯\\_(ツ)_/¯"
]])


local Terminal  = require('toggleterm.terminal').Terminal
local htop = Terminal:new({ 
  cmd = "btm", 
  hidden = true,
  direction = "float",
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
})

vim.api.nvim_create_user_command("Htop", function() 
  htop:toggle()
end, {})


local ghci = Terminal:new({ 
  cmd = "stack ghci", 
  hidden = true,
  direction = "float",
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
})

vim.api.nvim_create_user_command("Ghci", function() 
  ghci:toggle()
end, {})
