-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- In your init.lua or options.lua

-- For yanking within LazyVim to paste on local computer (for SSH)
vim.opt.clipboard = ""
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    -- Check if we are yanking (not deleting)
    if vim.v.event.operator == "y" then
      -- Get the yanked text
      local yanked_text = vim.fn.getreg('"')

      -- Send it to the terminal via OSC 52
      require("vim.ui.clipboard.osc52").copy("+")(vim.split(yanked_text, "\n"))
    end
  end,
  desc = "Copy to OSC52 (System Clipboard) on Yank",
})

-- Setting absolute line number
vim.opt.relativenumber = false
vim.opt.wrap = true

-- Disable automatic comment continuations
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove({ "c", "r", "o" })
  end,
  desc = "Disable New Line Comment",
})

-- Tell Neovim strictly which Python executable to use
vim.g.python3_host_prog = vim.fn.expand("~/.config/nvim/venv/bin/python")

-- Set root detection priority.
-- Default is usually { "lsp", { ".git", "lua" }, "cwd" }
-- We add "cwd" (Current Working Directory) earlier to force it to respect where you actually are.
-- vim.g.root_spec = { "cwd", "lsp", { ".git", "lua" } }
