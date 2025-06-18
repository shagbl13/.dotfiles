local augroup = vim.api.nvim_create_augroup
local ThePrimeagenGroup = augroup('ThePrimeagen', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

--function R(name)
--    require("plenary.reload").reload_module(name)
--end

autocmd({"BufWritePre"}, {
    group = ThePrimeagenGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

autocmd({ "bufread", "bufnewfile", "bufwritepre" }, {
  pattern = { "*.go" },
  callback = function()
    vim.opt.makeprg = "go run ."
    --vim.cmd [[ %!gofmt ]]
  end
})

autocmd(
  { "bufread", "bufnewfile", "bufwritepre" }, {
  pattern = { "*.php" },
  callback = function()
    vim.opt.makeprg = "php src/index.php"
    vim.lsp.buf.format()
  end
})

autocmd({ "bufread", "bufnewfile", "bufwritepre" }, {
  pattern = { "*.ts" },
  callback = function()
    vim.opt.makeprg = "tsc & node dist/app.js"
  end
})

autocmd({ "bufread", "bufnewfile" }, {
  pattern = { "*.blade.php" },
  callback = function()
    vim.opt.filetype = 'blade'
  end
})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})
