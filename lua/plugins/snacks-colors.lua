return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "*",
      callback = function()
        -- 1. Fix the "Untracked" files (New files)
        -- We break the link to 'NonText' and make them bright Orange
        vim.api.nvim_set_hl(0, "SnacksPickerGitStatusUntracked", { fg = "#ff9e64", bold = true })

        -- 2. Fix the "Ignored" files (in .gitignore)
        -- We break the link and make them bright White/Blue
        vim.api.nvim_set_hl(0, "SnacksPickerGitStatusIgnored", { fg = "#c0caf5", bold = true })

        -- 3. (Optional) Fix the "Modified" files status
        vim.api.nvim_set_hl(0, "SnacksPickerGitStatusModified", { fg = "#7aa2f7", bold = true })
      end,
      desc = "Fix Snacks Git Status Colors",
    })

    -- Force the colors to apply immediately without waiting for a reload
    vim.defer_fn(function()
      vim.api.nvim_exec_autocmds("ColorScheme", {})
    end, 50)
  end,
}
