local present, lspsaga = pcall(require, "lspsaga")

if not present then
  return
end

lspsaga.init_lsp_saga({
})

local action = require("lspsaga.action")

-- vim.keymap.set("n", "<leader>f", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
-- vim.keymap.set("n", "<leader>f", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })

-- scroll down hover doc or scroll in definition preview
vim.keymap.set("n", "<C-f>", function()
    action.smart_scroll_with_saga(1)
end, { silent = true })
-- scroll up hover doc
vim.keymap.set("n", "<C-b>", function()
    action.smart_scroll_with_saga(-1)
end, { silent = true })
