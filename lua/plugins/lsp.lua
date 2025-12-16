return {
  -- Name of the plugin we are configuring
  "neovim/nvim-lspconfig",

  -- The 'config' function runs when the plugin loads
  config = function()
    local lspconfig = require("lspconfig")

    -- 1. Setup Python (will find 'pyright' in your Conda env)
    lspconfig.pyright.setup({})

    -- 2. Setup Lua (will find 'lua-language-server' in your Conda env)
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }, -- Fixes "undefined global vim"
          },
        },
      },
    })

    -- 3. Setup C/C++ (will find 'clangd' in your Conda env)
    lspconfig.clangd.setup({})

    -- Add other languages here as needed
    -- lspconfig.rust_analyzer.setup({})
  end,
}
