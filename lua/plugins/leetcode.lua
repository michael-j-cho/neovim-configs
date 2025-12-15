return {
  "kawre/leetcode.nvim",
  branch = "dev",
  build = ":TSUpdate html",
  -- Add this line so the plugin loads when you type :Leet
  cmd = "Leet",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  opts = {
    image_support = true,
    arg = "leetcode.nvim",
    lang = "python3",
    domain = "com",
  },

  keys = {
    { "<leader>cl", "", desc = "+leetcode", mode = { "n", "v" } },
    { "<leader>cll", "<cmd>Leet list<cr>", desc = "List Problems" },
    { "<leader>clr", "<cmd>Leet run<cr>", desc = "Run Code" },
    { "<leader>cls", "<cmd>Leet submit<cr>", desc = "Submit Solution" },
    { "<leader>clt", "<cmd>Leet test<cr>", desc = "Run Custom Test" },
    { "<leader>cld", "<cmd>Leet desc<cr>", desc = "Toggle Description" },
    { "<leader>clc", "<cmd>Leet console<cr>", desc = "Toggle Console" },
    { "<leader>clm", "<cmd>Leet menu<cr>", desc = "Open Menu" },
    { "<leader>cli", "<cmd>Leet info<cr>", desc = "Problem Info" },
    { "<leader>clL", "<cmd>Leet lang<cr>", desc = "Change Language" },
    { "<leader>clT", "<cmd>Leet tabs<cr>", desc = "Open Tabs" },
    { "<leader>cly", "<cmd>Leet yank<cr>", desc = "Yank Solution" },
  },
}
