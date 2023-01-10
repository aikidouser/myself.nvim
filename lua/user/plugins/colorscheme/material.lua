require("material").setup({

  contrast = {
    terminal = false, -- Enable contrast for the built-in terminal
    sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
    floating_windows = false, -- Enable contrast for floating windows
    cursor_line = false, -- Enable darker background for the cursor line
    non_current_windows = false, -- Enable darker background for non-current windows
    filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
  },

  plugins = { -- Uncomment the plugins that you use to highlight them
    -- Available plugins:
    -- "dap",
    -- "dashboard",
    "gitsigns",
    -- "hop",
    -- "indent-blankline",
    -- "lspsaga",
    "mini",
    -- "neogit",
    "nvim-cmp",
    -- "nvim-navic",
    -- "nvim-tree",
    "nvim-web-devicons",
    -- "sneak",
    "telescope",
    -- "trouble",
    -- "which-key",
  },

  high_visibility = {
    lighter = true, -- Enable higher contrast text for lighter style
    darker = true -- Enable higher contrast text for darker style
  },

  lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

  async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

  custom_colors = function(colors)
    colors.editor.fg = "#E1E3EF" -- If you want to everride the default colors, set this to a function
  end,
  custom_highlights = {}, -- Overwrite highlights with your own
})


vim.cmd("colorscheme material")

require("material.functions").change_style("deep ocean")
