--vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true



vim.opt.clipboard = unnamed

vim.opt.smartindent = true
vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
--vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.path:append("**")

vim.opt.updatetime = 50
vim.opt.splitright = true


--vim.api.nvim_create_autocmd({ "bufread", "bufnewfile", "bufwritepre" }, {
--  pattern = { "*.*" },
--  callback = function()
--    vim.lsp.buf.format()
--  end
--})



--vim.api.nvim_create_autocmd({ "bufwritepre" }, {
--  pattern = { "*.*" },
--  callback = function()
--    vim.cmd [[ !ctags -R . ]]
--  end
--})

vim.api.nvim_create_autocmd({ "bufread", "bufnewfile", "bufwritepre" }, {
  pattern = { "*.go" },
  callback = function()
    vim.opt.makeprg = "go run ."
    --vim.cmd [[ %!gofmt ]]
  end
})

vim.api.nvim_create_autocmd({ "bufread", "bufnewfile", "bufwritepre" }, {
  pattern = { "*.php" },
  callback = function()
    vim.opt.makeprg = "php src/index.php"
    vim.lsp.buf.format()
  end
})

vim.api.nvim_create_autocmd({ "bufread", "bufnewfile", "bufwritepre" }, {
  pattern = { "*.ts" },
  callback = function()
    vim.opt.makeprg = "tsc & node dist/app.js"
  end
})

vim.api.nvim_create_autocmd({ "bufread", "bufnewfile" }, {
  pattern = { "*.blade.php" },
  callback = function()
    vim.opt.filetype = 'blade'
  end
})


vim.cmd([[
filetype plugin on
]])
