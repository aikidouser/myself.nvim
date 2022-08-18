local fb_actions = require("telescope").extensions.file_browser.actions

require("telescope").setup {
  extensions = {
    file_browser = {
      mappings = {
        ["i"] = {},
        ["n"] = {
        }
      }
    }
  }
}

require("telescope").load_extension("file_browser")
require("telescope").load_extension("live_grep_args")

