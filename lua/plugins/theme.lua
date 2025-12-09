return {
  -- 1. Install the Catppuccin plugin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    -- Optional: Configure Catppuccin specifics here (like transparency)
    opts = {
      term_colors = true,
      transparent_background = true,
    },
  },

  -- 2. Configure LazyVim to load 'catppuccin-frappe' by default
  {
    "LazyVim/LazyVim",
    opts = {
      -- You can set this to "catppuccin-latte", "-macchiato", "-frappe", or "-mocha"
      colorscheme = "nord",
    },
  },
}
