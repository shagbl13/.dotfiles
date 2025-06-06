--local lsp = require("lsp-zero")
--
--lsp.preset("recommended")
--
--lsp.ensure_installed({
--  'ts_ls',
--  'emmet_ls',
--  'intelephense',
--  'rust_analyzer',
--  'lua_ls',
--  'gopls',
--  'ltex',
--  'html',
--  'zls',
--  'ols',
--})
--
---- Fix Undefined global 'vim'
--lsp.configure('lua-language-server', {
--  settings = {
--    Lua = {
--      diagnostics = {
--        globals = { 'vim' }
--      }
--    }
--  }
--})
--
--
--lsp.configure('stimulus_ls', {
--  filetypes = {"blade", "eruby", "html", "ruby" }
--})
--
--lsp.configure('html', {
--  filetypes = {"blade", "html", "htmldjango", "javascriptreact", "typescriptreact", "vue" }
--})
--
--lsp.configure('emmet_ls', {
--  filetypes = {"blade", "astro", "css", "eruby", "html", "htmldjango", "javascriptreact", "less", "pug", "sass", "scss", "svelte", "typescriptreact", "vue" }
--})
--
--local cmp = require('cmp')
--local cmp_select = { behavior = cmp.SelectBehavior.Select }
--local cmp_mappings = lsp.defaults.cmp_mappings({
--  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
--  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
--  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
--  ["<C-Space>"] = cmp.mapping.complete(),
--})
--
--cmp_mappings['<Tab>'] = nil
--cmp_mappings['<S-Tab>'] = nil
--
--lsp.setup_nvim_cmp({
--  mapping = cmp_mappings
--})
--
--lsp.set_preferences({
--  suggest_lsp_servers = false,
--  sign_icons = {
--    error = 'E',
--    warn = 'W',
--    hint = 'H',
--    info = 'I'
--  }
--})
--
--lsp.on_attach(function(client, bufnr)
--  local opts = { buffer = bufnr, remap = false }
--
--  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
--  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
--  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
--  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
--  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
--  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
--  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
--  vim.keymap.set("n", "<leader>br", function() vim.lsp.buf.references() end, opts)
--  vim.keymap.set("n", "<leader>bn", function() vim.lsp.buf.rename() end, opts)
--  vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
--  vim.keymap.set("n", "<leader>F", function() vim.lsp.buf.format() end, opts)
--end)
--
--vim.diagnostic.config({
--  virtual_text = true
--})
--
--lsp.setup()
--
