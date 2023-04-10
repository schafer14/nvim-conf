local Job = require'plenary.job'

local history = {}

local M = {}

function M.print_history()
  print(vim.inspect(history))
end

M.print_history()

return M
