local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

local lspconfig = require("lspconfig")
local servers = { "html", "cssls",  "jsonls", "tsserver", "emmet_ls", "elixirls", "prismals"}

-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local enhanced_on_attach = function(client, bufnr)
	-- if client.supports_method("textDocument/formatting") then
	-- 	vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
	-- 	vim.api.nvim_create_autocmd("BufWritePre", {
	-- 			group = augroup,
	-- 			buffer = bufnr,
	-- 			callback = function()
	-- 					-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
	-- 					vim.lsp.buf.formatting_sync()
	-- 			end,
	-- 	})
	-- end
  -- formatting
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("Format", { clear = true }),
      buffer = bufnr,
      callback = function() vim.lsp.buf.formatting_seq_sync() end
    })
  end
	-- Highlight hover
	if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec([[
      hi LspReferenceRead cterm=bold ctermbg=DarkMagenta guibg=LightYellow
      hi LspReferenceText cterm=bold ctermbg=DarkMagenta guibg=LightYellow
      hi LspReferenceWrite cterm=bold ctermbg=DarkMagenta guibg=LightYellow
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
  end
	on_attach(client, bufnr)
end

for _, lsp in ipairs(servers) do
  if lsp == "elixirls" then
    lspconfig.elixirls.setup({
      on_attach = enhanced_on_attach,
      capabilities = capabilities,
      cmd = { "/Users/tan/code/elixir-ls/language_server.sh" }
    })
  else
    lspconfig[lsp].setup({
      on_attach = enhanced_on_attach,
      capabilities = capabilities,
    })
  end
end
