return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- 1. Force using git instead of downloading binaries (Fixes GLIBC error)
      require("nvim-treesitter.install").prefer_git = true
      
      -- 2. Ensure compilers are found (Fixes "no compiler" error)
      require("nvim-treesitter.install").compilers = { "gcc", "clang", "cc" }
      
      return opts
    end,
  },
}
