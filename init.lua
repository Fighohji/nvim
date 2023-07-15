--powershell
local powershell_options = {
    shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
    shellcmdflag = " -NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
    shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
    shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
    shellquote = "",
    shellxquote = "",
}

for option, value in pairs(powershell_options) do
    vim.opt[option] = value
end
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local set = vim.o
set.tabstop=4
set.softtabstop=4
set.shiftwidth=4
set.number = true
set.relativenumber = true
