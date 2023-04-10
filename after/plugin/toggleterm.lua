local tt = require("toggleterm")
local lazy = require("toggleterm.lazy")
local utils = lazy.require("toggleterm.utils")

tt.setup{
  open_mapping = [[<c-\>]],
  direction = "horizontal",
  size = 30
}

vim.api.nvim_create_user_command("ToggleTermInturrpt", function(opts) 
  local count = opts.count
  if count == 0 then
    count = 1
  end
  t = require("toggleterm.terminal").get(count)
  id = t.job_id
  vim.cmd(string.format([[
    call chansend(%d, "\<C-c>")
  ]], id))
end, { nargs = "*", count = true })


