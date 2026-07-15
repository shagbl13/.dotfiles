-- Diagnostics
vim.diagnostic.config({
    severity_sort = true,
    virtual_text = false,
    underline = {
        severity = vim.diagnostic.severity.ERROR,
    },
    float = {

        border = "rounded",
        source = "if_many",
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "E",
            [vim.diagnostic.severity.WARN] = "W",
            [vim.diagnostic.severity.INFO] = "I",
            [vim.diagnostic.severity.HINT] = "H",
        },
    },
})

-- LSP Keymaps
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),

    callback = function(event)
        local map = function(keys, func, desc, mode)
            vim.keymap.set(mode or "n", keys, func, {
                buffer = event.buf,
                desc = "LSP: " .. desc,
            })
        end

        map("gd", vim.lsp.buf.definition, "Goto Definition")
        map("gD", vim.lsp.buf.declaration, "Goto Declaration")
        map("gr", vim.lsp.buf.references, "References")
        map("gi", vim.lsp.buf.implementation, "Implementation")
        map("gt", vim.lsp.buf.type_definition, "Type Definition")

        map("K", vim.lsp.buf.hover, "Hover")
        map("<C-h>", vim.lsp.buf.signature_help, "Signature Help", "i")

        map("<leader>ca", vim.lsp.buf.code_action, "Code Action")
        map("<leader>rn", vim.lsp.buf.rename, "Rename")
        map("<leader>ws", vim.lsp.buf.workspace_symbol, "Workspace Symbol")

        map("<leader>f", function()
            vim.lsp.buf.format({ async = true })
        end, "Format")

        map("<leader>vd", vim.diagnostic.open_float, "Line Diagnostics")
        map("[d", function()
            vim.diagnostic.jump({ count = -1, float = true })
        end, "Previous Diagnostic")

        map("]d", function()
            vim.diagnostic.jump({ count = 1, float = true })
        end, "Next Diagnostic")
    end,
})

---------------------------------------------------------------------
-- LSP Servers
---------------------------------------------------------------------

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                checkThirdParty = false,
            },
            completion = {
                callSnippet = "Replace",
            },
        },
    },
})

vim.lsp.config("clangd", {})
vim.lsp.config("gopls", {})
--vim.lsp.config("zls", {})
vim.lsp.config("html", {})
vim.lsp.config("cssls", {})
vim.lsp.config("ts_ls", {})
vim.lsp.config("intelephense", {})
vim.lsp.config("ltex", {})
vim.lsp.config("ols", {})
vim.lsp.config("dartls", {})

vim.lsp.config("emmet_ls", {
    filetypes = {
        "blade",
        "html",
        "htmldjango",
        "javascriptreact",
        "typescriptreact",
        "vue",
    },
})


---------------------------------------------------------------------
-- Enable servers
---------------------------------------------------------------------

vim.lsp.enable({
    "lua_ls",
    "clangd",
    "gopls",
    --"zls",
    "html",
    "cssls",
    "ts_ls",
    "intelephense",
    "ltex",
    "ols",
    "dartls",
    "emmet_ls",
})
