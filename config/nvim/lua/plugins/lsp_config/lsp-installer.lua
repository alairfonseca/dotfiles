local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")

if not status_ok then
  return
end

lsp_installer.on_server_ready(function(server)
    local opts = {
	on_attach = require("plugins.lsp_config.handlers").on_attach,
	capabilities = require("plugins.lsp_config.handlers").capabilities,
    }

    if server.name == "rust_analyzer" then
        -- Initialize the LSP via rust-tools instead
        require("rust-tools").setup {
            -- The "server" property provided in rust-tools setup function are the
            -- settings rust-tools will provide to lspconfig during init.
            -- We merge the necessary settings from nvim-lsp-installer (server:get_default_options())
            -- with the user's own settings (opts).
            server = vim.tbl_deep_extend("force", server:get_default_options(), opts),
        }
        server:attach_buffers()
    end

    if server.name == "pyright" then
    	local pyright_opts = require("plugins.lsp_config.settings.pyright")
	opts = vim.tbl_deep_extend("force", pyright_opts, opts)
    end

    server:setup(opts)
end)
