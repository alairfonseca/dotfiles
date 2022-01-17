local status_ok, _ = pcall(require, "lspconfig")

if not status_ok then
  return
end

require 'plugins.lsp_config.lsp-installer'
