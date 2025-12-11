-- ~/.config/nvim/lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  opts = {
    image = {
      enabled = true,
      max_width = 100,
      max_height = 20,
      -- Add 'svg' to the list of supported extensions if it's missing (rare)
      formats = { "png", "jpg", "jpeg", "gif", "webp", "avif", "svg" },
    },
  },
}
