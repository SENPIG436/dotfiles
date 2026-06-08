vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local keymap = vim.keymap

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

_G.setup_lsp_keymaps = function(client, bufnr)
  keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Go to definition" })
  keymap.set("n", "gs", vim.lsp.buf.declaration, { buffer = bufnr, desc = "Go to declaration" })
  keymap.set("n", "gr", vim.lsp.buf.references, { buffer = bufnr, desc = "Find references" })
  keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = bufnr, desc = "Go to implementation" })
  keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = bufnr, desc = "Rename" })
  keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr, desc = "Code action" })
end

keymap.set("n", "<leader>r", ":RunCode<CR>")
keymap.set("n", "<leader>t", "<Cmd>ToggleTerm<CR>")
keymap.set("n", "d", vim.diagnostic.goto_next)
keymap.set("n", "D", vim.diagnostic.goto_prev)
