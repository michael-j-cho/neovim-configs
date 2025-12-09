return {
  {
    "MaximilianLloyd/ascii.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    cmd = { "Ascii" }, -- Optional: lazy load it when you type :Ascii
    config = function()
      -- Optional: Any specific startup config can go here,
      -- but usually you just require it when needed.
    end,
  },
}
