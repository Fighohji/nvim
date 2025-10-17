return {
  'xeluxee/competitest.nvim',
  dependencies = {
    'MunifTanjim/nui.nvim',
  },
  config = function()
    -- default language: c, cpp, rust, java, python, compiler and interpreter needed
    require('competitest').setup({
      -- runner_ui = {
      --  interface = 'split',
      -- },
      compile_command = {
        -- clang++ -Xlinker -stack_size -Xlinker 0x8000000 -o main main.cpp -std=c++20
        cpp = { exec = 'clang++', args = { '$(FNAME)', '-Xlinker', '-stack_size', '-Xlinker', '0x8000000', '-std=c++20', '-O2', '-o', '$(FNOEXT)' } },
        -- some_lang = { exec = 'some_compiler', args = { '$(FNAME)' } },
      },
      run_command = {
        cpp = { exec = './$(FNOEXT)' },
        python = { exec = 'python3', args = { '$(FNAME)' } }, -- if windows, delete this line
        -- some_lang = { exec = 'some_interpreter', args = { '$(FNAME)' } },
      },
      maximum_time = 4000,
      -- view_output_diff = true,
      testcases_single_file_format = "$(FNOEXT).testcases",
      testcases_input_file_format = "$(TCNUM).in",
      testcases_output_file_format = "$(TCNUM).out",
      template_file = {
        cpp = "~/Competitive Programming/template/head.cpp",
        py = "~/Competitive Programming/template/head.py",
      },
      -- CWD -> current working directory PROBLEM -> 	problem name
      -- details https://github.com/xeluxee/competitest.nvim#receive-modifiers
      received_problems_path = "$(HOME)/Competitive Programming/$(JUDGE)/$(CONTEST)/$(PROBLEM)/main.$(FEXT)",
      received_contests_directory = "$(HOME)/Competitive Programming/$(JUDGE)/$(CONTEST)",
      received_contests_problems_path = "$(PROBLEM)/main.$(FEXT)",
    })
    local wk = require("which-key")
    wk.add({
      { "<leader>t",  group = "Test" },
      { "<leader>ta", "<cmd>CompetiTest add_testcase<CR>",      desc = "Add" },
      { "<leader>tc", "<cmd>CompetiTest receive contest<CR>",   desc = "Receive contest" },
      { "<leader>td", "<cmd>CompetiTest delete_testcase<CR>",   desc = "Del" },
      { "<leader>te", "<cmd>CompetiTest edit_testcase<CR>",     desc = "Edit" },
      { "<leader>tn", "<cmd>CompetiTest run_no_compile<CR>",    desc = "Run No Compile" },
      { "<leader>tp", "<cmd>CompetiTest receive problem<CR>",   desc = "Receive problem" },
      { "<leader>tr", "<cmd>CompetiTest receive testcases<CR>", desc = "Receive testcases" },
      { "<leader>tt", "<cmd>CompetiTest run<CR>",               desc = "Run" },
      { "<leader>tu", "<cmd>CompetiTest show_ui<CR>",           desc = "Show ui" },
    })
  end
}
