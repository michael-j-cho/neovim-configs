print("OPTIONS LOADED")

-- Relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.clipboard = ""

-- Choose correct environment for python
vim.g.python3_host_prog = vim.fn.expand("~/.config/nvim/venv/bin/python")

-- 1. Tell Neovim "I know what I'm doing, use this specific tool"
vim.g.clipboard = {
  name = "OSC 52 (Copy Only)",
  copy = {
    ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
    ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
  },
  paste = {
    -- DISCONNECT PASTE: Return an empty list immediately.
    -- This prevents Neovim from waiting for a response that will never arrive.
    ["+"] = function()
      return {}
    end,
    ["*"] = function()
      return {}
    end,
  },
}

-- 2. Link the system registers
vim.opt.clipboard = "unnamedplus"

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove({ "c", "r", "o" })

    -- FORCE relative numbers here.
    -- This overrides any plugin that turned them off.
    vim.opt.relativenumber = true
    vim.opt.number = true
    vim.opt.wrap = true
  end,
  desc = "Enforce format options and Line Numbers",
})
