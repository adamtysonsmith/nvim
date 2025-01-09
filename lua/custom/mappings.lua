---@type MappingsTable
local M = {}

M.custom = {
  n = {
    ["<leader>s"] = {"<cmd> w <CR>", "Save and format file"},
    ["<cmd>s"] = {"<cmd> w <CR>", "Save file"},
    -- force this remapping, already in core but not working in go
    ["K"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },
    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
  },
}

return M
