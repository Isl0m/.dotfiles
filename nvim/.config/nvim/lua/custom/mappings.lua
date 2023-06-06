---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["J"] = { "mzJ`z" },
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft <CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight <CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown <CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp <CR>", "window up" },
    ["<leader>rh"] = { ":lua require'rust-tools'.hover_actions.hover_actions() <CR>", "rust hover actions" },
    ["<leader>re"] = { ":lua require'rust-tools'.inlay_hints.enable() <CR>", "inlay hints enable" },
    ["<leader>rd"] = { ":lua require'rust-tools'.inlay_hints.disable() <CR>", "inlay hints disable" },
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "move line down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "move line up" },
  },
}

return M
