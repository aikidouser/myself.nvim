local fb_actions = require("telescope").extensions.file_browser.actions

require("telescope").setup {
  extensions = {
    file_browser = {
      mappings = {
        ["i"] = {},
        ["n"] = {}
      }
    },
    ['ui-select'] = {
      require('telescope.themes').get_dropdown {}
    }
  }
}

require("telescope").load_extension("file_browser")
require("telescope").load_extension("live_grep_args")
require("telescope").load_extension("ui-select")

