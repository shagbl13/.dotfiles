local builtin = require('telescope.builtin')
local telescope = require('telescope')


telescope.setup({
  pickers = {
    find_files = {
      hidden = true,
      no_ignore = false
    }
  }
})

vim.keymap.set('n', '<A-f>', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>hh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>T', ":TSPlaygroundToggle<cr>", {})


