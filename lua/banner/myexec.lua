local execs = vim.treesitter.parse_query(
  "go",
  [[
    (function_declaration 
      (identifier) @exec_names (#match? @exec_names "Exec.*$") 

      (parameter_list) @params
    ) @fn_dec
  ]])
 
local nnoremap = require("banner.keymap").nnoremap

nnoremap("<leader>me", ":MyExe<CR>")

local get_execs = function(bufnr, line)
  local parser = vim.treesitter.get_parser(bufnr, "go")
  local tree = parser:parse()[1]

  for pattern, match, metadata in execs:iter_matches(tree:root(), bufnr, 0, -1) do
    for id, node in pairs(match) do

      local captures = execs.captures[id] 

      print(vim.inspect(execs.captures[id]))
      print(vim.inspect(metadata[id]))
    end
    
  end

  -- print(vim.inspect(tree.root))
end

vim.api.nvim_create_user_command("MyExec", function() 
  local bufnr = vim.api.nvim_get_current_buf()
  local win = vim.api.nvim_get_current_win()
  local line = vim.api.nvim_win_get_cursor(0)[1]

  get_execs(bufnr, line)
end, {})
