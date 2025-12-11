return {
  "saghen/blink.cmp",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = "default",
      -- 1. Make 'Enter' just a normal new line (fallback), never accept completion
      ["<CR>"] = { "fallback" },

      -- 2. (Optional) Use 'Tab' to accept the suggestion instead
      ["<Tab>"] = { "select_and_accept", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<C-n>"] = { "select_next", "fallback" },
      ["<C-p>"] = { "select_prev", "fallback" },
    },
  },
}
