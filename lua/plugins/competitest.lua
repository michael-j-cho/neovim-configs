-- For competitive programming sites like codeforces and atcoder
return {
  -- Part 1: Register the "Competitive" menu name in WhichKey
  {
    "folke/which-key.nvim",
    optional = true,
    opts = {
      spec = {
        { "<leader>cp", group = "competitive", icon = "💻" },
      },
    },
  },

  -- Part 2: Configure CompetiTest with the new keys
  {
    "xeluxee/competitest.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    cmd = "CompetiTest",
    keys = {
      -- Notice we changed <leader>c... to <leader>cp...
      { "<leader>cpr", "<cmd>CompetiTest run<cr>", desc = "Run" },
      { "<leader>cpa", "<cmd>CompetiTest add_testcase<cr>", desc = "Add Case" },
      { "<leader>cpe", "<cmd>CompetiTest edit_testcase<cr>", desc = "Edit Case" },
      { "<leader>cpi", "<cmd>CompetiTest receive testcases<cr>", desc = "Receive Problem" },
      { "<leader>cpu", "<cmd>CompetiTest show_ui<cr>", desc = "Show UI" },
      { "<leader>cpc", ":%y+<cr>", desc = "Copy Code" }, -- Copies entire file to clipboard
      { "<leader>cps", "<cmd>!cf submit -f %<cr>", desc = "Submit (CLI)" }, -- Tries to submit current file
    },
    config = function()
      require("competitest").setup({
        local_config_file_name = ".competitest.lua",
        floating_border = "rounded",
        floating_border_highlight = "FloatBorder",
        picker_ui = {
          width = 0.8,
          height = 0.5,
          mappings = {
            focus_next = { "j", "<down>", "<Tab>" },
            focus_prev = { "k", "<up>", "<S-Tab>" },
            close = { "<esc>", "<C-c>", "q", "Q" },
            submit = { "<cr>" },
          },
        },
        editor_ui = {
          popup_width = 0.4,
          popup_height = 0.6,
          show_nu = true,
          show_rnu = false,
          normal_mode_mappings = {
            switch_window = { "<C-h>", "<C-l>", "<C-i>" },
            save_and_close = "<C-s>",
            cancel = { "q", "Q" },
          },
        },
        runner_ui = {
          interface = "popup",
        },
        popup_ui = {
          total_width = 0.8,
          total_height = 0.8,
          layout = {
            { 4, "tc" },
            { 5, { { 1, "so" }, { 1, "si" } } },
            { 5, { { 1, "eo" }, { 1, "se" } } },
          },
        },
        save_current_file = true,
        save_all_files = false,
        compile_directory = ".",
        compile_command = {
          c = { exec = "gcc", args = { "-Wall", "$(FNAME)", "-o", "$(FNOEXT)" } },
          cpp = { exec = "g++", args = { "-Wall", "-O2", "$(FNAME)", "-o", "$(FNOEXT)" } },
          rust = { exec = "rustc", args = { "$(FNAME)" } },
          python = { exec = "python3", args = { "$(FNAME)" } },
        },
        running_directory = ".",
        run_command = {
          c = { exec = "./$(FNOEXT)" },
          cpp = { exec = "./$(FNOEXT)" },
          rust = { exec = "./$(FNOEXT)" },
          python = { exec = "python3", args = { "$(FNAME)" } },
        },
        multiple_testing = -1,
        maximum_time = 5000,
        output_compare_method = "squish",
        view_output_diff = true,
        testcases_directory = "./testcases",
        testcases_use_single_file = true,
        testcases_auto_detect_storage = true,
        testcases_single_file_format = "$(FNOEXT).test",
        testcases_file_format = "$(FNOEXT)_$(TCNUM).$(TCEXT)",
      })
    end,
  },
}
