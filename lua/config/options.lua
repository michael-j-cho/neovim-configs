print("OPTIONS LOADED")

-- Relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.clipboard = ""

-- Choose correct environment for python
vim.g.python3_host_prog = vim.fn.expand("~/.config/nvim/venv/bin/python")

-- Clipboard pasting across ssh instnaces
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    if vim.v.event.operator == "y" then
      local yanked_text = vim.fn.getreg('"')
      -- Ensure we are on Neovim 0.10+ for this require to work
      local ok, osc52 = pcall(require, "vim.ui.clipboard.osc52")
      if ok then
        osc52.copy("+")(vim.split(yanked_text, "\n"))
      end
    end
  end,
  desc = "Copy to OSC52 (System Clipboard) on Yank",
})

-- Disable auto comments
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
