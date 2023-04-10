local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values
local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"

local M = {}

-- our picker function: colors
function M.gitemoji(opts)
  opts = opts or {}
  pickers.new(opts, {
    prompt_title = "git dat emoji",
    finder = finders.new_table {
      results = {
        { "🤷", "IDK", "🤷" },
        { "🎨", "Improve structure / format of the code.", ":art:" },
        { "⚡️", "Improve performance.", ":zap:" },
        { "🔥", "Remove code or files.", ":fire:" },
        { "🐛", "Fix a bug.", ":bug:" }, 
        { "🚑️", "Critical hotfix.", ":ambulance:" },
        {
           "✨",
           "Introduce new features.",
           ":sparkles:",
        },
        {
           "📝",
           "Add or update documentation.",
           ":memo:",
        },
        {
           "🚀",
           "Deploy stuff.",
           ":rocket:",
        },
        {
           "💄",
           "Add or update the UI and style files.",
           ":lipstick:",
        },
        {
           "🎉",
           "Begin a project.",
           ":tada:",
        },
        {
           "✅",
           "Add, update, or pass tests.",
           ":white_check_mark:",
        },
        {
           "🔒️",
           "Fix security issues.",
           ":lock:",
        },
        {
           "🔐",
           "Add or update secrets.",
           ":closed_lock_with_key:",
        },
        {
           "🔖",
           "Release / Version tags.",
           ":bookmark:",
        },
        {
           "🚨",
           "Fix compiler / linter warnings.",
           ":rotating_light:",
        },
        {
           "🚧",
           "Work in progress.",
           ":construction:",
        },
        {
           "💚",
           "Fix CI Build.",
           ":green_heart:",
        },
        {
           "⬇️",
           "Downgrade dependencies.",
           ":arrow_down:",
        },
        {
           "⬆️",
           "Upgrade dependencies.",
           ":arrow_up:",
        },
        {
           "📌",
           "Pin dependencies to specific versions.",
           ":pushpin:",
        },
        {
           "👷",
           "Add or update CI build system.",
           ":construction_worker:",
        },
        {
           "📈",
           "Add or update analytics or track code.",
           ":chart_with_upwards_trend:",
        },
        {
           "♻️",
           "Refactor code.",
           ":recycle:",
        },
        {
           "➕",
           "Add a dependency.",
           ":heavy_plus_sign:",
        },
        {
           "➖",
           "Remove a dependency.",
           ":heavy_minus_sign:",
        },
        {
           "🔧",
           "Add or update configuration files.",
           ":wrench:",
        },
        {
           "🔨",
           "Add or update development scripts.",
           ":hammer:",
        },
        {
           "🌐",
           "Internationalization and localization.",
           ":globe_with_meridians:",
        },
        {
           "✏️",
           "Fix typos.",
           ":pencil2:",
        },
        {
           "💩",
           "Write bad code that needs to be improved.",
           ":poop:",
        },
        {
           "⏪️",
           "Revert changes.",
           ":rewind:",
        },
        {
           "🔀",
           "Merge branches.",
           ":twisted_rightwards_arrows:",
        },
        {
           "📦️",
           "Add or update compiled files or packages.",
           ":package:",
        },
        {
           "👽️",
           "Update code due to external API changes.",
           ":alien:",
        },
        {
           "🚚",
           "Move or rename resources (e.g.: files, paths, routes).",
           ":truck:",
        },
        {
           "📄",
           "Add or update license.",
           ":page_facing_up:",
        },
        {
           "💥",
           "Introduce breaking changes.",
           ":boom:",
        },
        {
           "🍱",
           "Add or update assets.",
           ":bento:",
        },
        {
           "♿️",
           "Improve accessibility.",
           ":wheelchair:",
        },
        {
           "💡",
           "Add or update comments in source code.",
           ":bulb:",
        },
        {
           "🍻",
           "Write code drunkenly.",
           ":beers:",
        },
        {
           "💬",
           "Add or update text and literals.",
           ":speech_balloon:",
        },
        {
           "🗃️",
           "Perform database related changes.",
           ":card_file_box:",
        },
        {
           "🔊",
           "Add or update logs.",
           ":loud_sound:",
        },
        {
           "🔇",
           "Remove logs.",
           ":mute:",
        },
        {
           "👥",
           "Add or update contributor(s).",
           ":busts_in_silhouette:",
        },
        {
           "🚸",
           "Improve user experience / usability.",
           ":children_crossing:",
        },
        {
           "🏗️",
           "Make architectural changes.",
           ":building_construction:",
        },
        {
           "📱",
           "Work on responsive design.",
           ":iphone:",
        },
        {
           "🤡",
           "Mock things.",
           ":clown_face:",
        },
        {
           "🥚",
           "Add or update an easter egg.",
           ":egg:",
        },
        {
           "🙈",
           "Add or update a .gitignore file.",
           ":see_no_evil:",
        },
        {
           "📸",
           "Add or update snapshots.",
           ":camera_flash:",
        },
        {
           "⚗️",
           "Perform experiments.",
           ":alembic:",
        },
        {
           "🔍️",
           "Improve SEO.",
           ":mag:",
        },
        {
           "🏷️",
           "Add or update types.",
           ":label:",
        },
        {
           "🌱",
           "Add or update seed files.",
           ":seedling:",
        },
        {
           "🚩",
           "Add, update, or remove feature flags.",
           ":triangular_flag_on_post:",
        },
        {
           "🥅",
           "Catch errors.",
           ":goal_net:",
        },
        {
           "💫",
           "Add or update animations and transitions.",
           ":dizzy:",
        },
        {
           "🗑️",
           "Deprecate code that needs to be cleaned up.",
           ":wastebasket:",
        },
        {
           "🛂",
           "Work on code related to authorization, roles and permissions.",
           ":passport_control:",
        },
        {
           "🩹",
           "Simple fix for a non-critical issue.",
           ":adhesive_bandage:",
        },
        {
           "🧐",
           "Data exploration/inspection.",
           ":monocle_face:",
        },
        {
           "⚰️",
           "Remove dead code.",
           ":coffin:",
        },
        {
           "🧪",
           "Add a failing test.",
           ":test_tube:",
        },
        {
           "👔",
           "Add or update business logic",
           ":necktie:",
        },
        {
           "🩺",
           "Add or update healthcheck.",
           ":stethoscope:",
        },
        {
           "🧱",
           "Infrastructure related changes.",
           ":bricks:",
        },
        {
           "🧑‍💻",
           "Improve developer experience",
           ":technologist:",
        },
        {
           "💸",
           "Add sponsorships or money related infrastructure.",
           ":money_with_wings:",
        },
        {
           "🧵",
           "Add or update code related to multithreading or concurrency.",
           ":thread:",
        }
      },
      entry_maker = function(entry)
        return {
          value = entry[3],
          display = entry[1].." "..entry[2],
          ordinal = entry[3]..entry[2],
        }
      end
    },
    sorter = conf.generic_sorter(opts),
    attach_mappings = function(prompt_bufnr, map)
      actions.select_default:replace(function()
        actions.close(prompt_bufnr)
        local selection = action_state.get_selected_entry()

        vim.api.nvim_put({ selection["value"] }, "", false, true)
        vim.api.nvim_input("a")
      end)
      return true
    end,
  }):find()
end

return M

