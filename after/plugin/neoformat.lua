vim.g.neoformat_try_node_exe = 1

vim.cmd[[
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
]]
