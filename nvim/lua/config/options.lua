-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local dap = require("dap")

-- Adapter configuration using lldb-vscode (or adjust to your preferred adapter)
dap.adapters.lldb = {
  type = "executable",
  command = "/usr/bin/lldb-vscode", -- change this to your lldb-vscode or CodeLLDB executable path
  name = "lldb",
}

-- Debug configuration for C++
dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "lldb", -- Must match the adapter name defined above
    request = "launch",
    program = function()
      -- Prompts you to enter the path to the executable.
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    args = {}, -- You can add any command line arguments here
  },
}

-- Optionally, if you also work on C, share the same configuration
dap.configurations.c = dap.configurations.cpp
