require("gitsigns").setup {
  signs = {
    add          = { text = '│' },
    change       = { text = '┆' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
  numhl = true,
  current_line_blame = true,
}
