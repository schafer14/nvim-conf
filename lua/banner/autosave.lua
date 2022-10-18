
-- local show_win = function(bufnr)
--   local original = vim.api.nvim_get_current_win()
--   local win = vim.api.nvim_get_current_win()
--   vim.api.nvim_win_set_buf(win, bufnr)
--   vim.api.nvim_set_current_win(original)
-- end

-- local make_key = function( entry) 
--   assert(entry.Package, "Must have package:"..vim.inspect(entry))
--   assert(entry.Test, "Must have test:"..vim.inspect(entry))
--   return string.format("%s/%s", entry.Package, entry.Test)
-- end

-- local add_golang_test = function(state, entry) 
--   state.tests[make_key(entry)] = {
--     name = entry.Test,
--     -- line = find_test_line(state.bufnr, entry.Test),
--     output = {},
--   }
-- end

-- local add_golang_output = function(state, entry)
--   assert(state.tests, vim.inspect(state))
--   vim.api.nvim_buf_set_lines(61, -1, -1, false,  { entry.Output } )
--   vim.api.nvim_buf_set_lines(61, -1, -1, false, { state.tests[make_key(state, entry)].output })

--   table.insert(state.tests[make_key(state, entry)].output, vim.trim(entry.Output))
-- end

-- -- GO Test stuff
-- local attach_go_test = function(bufnr) 
--   local state = {
--     tests = {},
--     bufnr = bufnr,
--   }
--   vim.api.nvim_buf_set_lines(61, 0, -1, false, { "Output::" })

--   vim.api.nvim_create_autocmd("BufWritePost", {
--     group = vim.api.nvim_create_augroup("go-live", { clear = true }),
--     pattern = "*",
--     callback = function(_, data) 

--       local handle_stdout = function(_, data)

--         for _, line in ipairs(data) do 
--           if line:len() == 0 then goto continue end 

--           local decoded = vim.json.decode(line)

--           if decoded.Action == "run" then
--             add_golang_test(state, decoded)
--           elseif decoded.Action == "output" then 
--             if not decoded.Output then goto continue end
--             if decoded.Output:len() == 0 then goto continue end

--             vim.api.nvim_buf_set_lines(61, -1, -1, false, { decoded.Output })


--           end

--           ::continue::
--         end

--       end

--       local handle_exit = function() 
--       end

--       vim.fn.jobstart({"cat", "/home/bannerschafer/out.txt"}, {
--         stdout_buffered = true,
--         on_stdout = handle_stdout,
--         on_stderr = handle_stdout,
--         on_exit = handle_exit,
--       })
--     end,
--   })
-- end

-- vim.api.nvim_create_user_command("GoLiveTest", function() 
--   attach_go_test(vim.api.nvim_get_current_buf())
-- end, {})


-- -- GO Live Run stuff
-- local attach_to_buffer = function(bufnr, pattern, cmd)
--   vim.api.nvim_create_user_command("GoLiveRun", function() 
--     show_win(bufnr)
--   end, {})
  
--   vim.api.nvim_create_autocmd("BufWritePost", {
--     group = vim.api.nvim_create_augroup("go-live", { clear = true }),
--     pattern = pattern,
--     callback = function() 
--       local append_data = function(_, data) 
--         if data then
--           vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, data)
--         end
--       end

--       vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "Go Output:" })
--       vim.api.nvim_buf_set_lines(bufnr, 1, 1, false, { "----------" })
--       vim.fn.jobstart(cmd, {
--         stdout_buffered = true,
--         on_stderr = append_data,
--         on_stdout = append_data,
--       })
--     end,
--   })
-- end 

-- local bufnr = vim.api.nvim_create_buf(true, true) 
-- attach_to_buffer(bufnr, "main.go", { "go", "run", "main.go" })

-- attach_go_test(27)
