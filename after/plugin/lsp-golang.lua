local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
require('go').setup({
  goimport = 'gopls', -- if set to 'gopls' will use golsp format
  gofmt = 'gopls', -- if set to gopls will use golsp format
  max_line_len = 120,
  tag_transform = false,
  test_dir = '',
  comment_placeholder = '   ',
  lsp_cfg = {
    capabilities = capabilities,
  }, -- false: use your own lspconfig
  lsp_gofumpt = true, -- true: set default gofmt in gopls format to gofumpt
  lsp_on_attach = true, -- use on_attach from go.nvim
  dap_debug = true,
  luasnip = true,


})

local nnoremap = require("banner.keymap").nnoremap
local tnoremap = require("banner.keymap").tnoremap
local inoremap = require("banner.keymap").inoremap
local vnoremap = require("banner.keymap").vnoremap
local snoremap = require("banner.keymap").snoremap

nnoremap("K", "<cmd>GoDoc<cr>")
