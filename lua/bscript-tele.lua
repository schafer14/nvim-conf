local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values
local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"

local M = {}

function M.cmds()
  local r = require("bscript").file_sections("/README.md")

  local list = {}
  for k, v in pairs(r[2]) do
    table.insert(list, {k, v.node, v.code_blocks}) 
  end

  pickers.new({}, {
    prompt_title = "run dat cmd",
    finder = finders.new_table {
      results = list,
      entry_maker = function(entry)
        return {
          value = entry,
          display = entry[1],
          ordinal = entry[1],
        }
      end
    },
    sorter = conf.generic_sorter(opts),
    attach_mappings = function(prompt_bufnr, map)
      actions.select_default:replace(function()
        actions.close(prompt_bufnr)
        local selection = action_state.get_selected_entry()
        local nodes = selection.value[3]

        print(vim.inspect(nodes))
        require("bscript").run_section(r[1], nodes)

      end)
      return true
    end,
  }):find()

end



return M
