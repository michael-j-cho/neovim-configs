-- ~/.config/nvim/lua/plugins/image.lua
return {
  {
    "3rd/image.nvim",
    build = false, -- usually not needed, but sometimes required for dependencies
    opts = {
      backend = "kitty", -- or "ueberzug", "sixel", "iterm" based on your terminal
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = false,
          filetypes = { "markdown", "vimwiki", "leetcode" }, -- Ensure leetcode is included
        },
        neorg = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = false,
          filetypes = { "norg" },
        },
      },
      max_width = 100, -- adjust size constraints
      max_height = 12,
      max_width_window_percentage = math.huge,
      max_height_window_percentage = math.huge,
      window_overlap_clear_enabled = false,
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
    },
  },
}
