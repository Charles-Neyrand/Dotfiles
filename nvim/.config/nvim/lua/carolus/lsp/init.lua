local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("carolus.lsp.lsp-installer")
require("carolus.lsp.handlers").setup()
