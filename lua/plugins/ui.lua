-- For displaying hostname of computer in bottom right corner
return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- Insert the hostname component into lualine_x (right side)
      table.insert(opts.sections.lualine_x, 1, {
        function()
          return vim.fn.hostname()
        end,
        icon = "", -- Optional: Add a laptop/server icon
        color = { fg = "#ff9e64", gui = "bold" }, -- Optional: Make it stand out
      })
    end,
  },
}
