local keymap = vim.keymap.set
local zettel = require("gbl.zettle") -- load the module

vim.g.mapleader = " "


keymap("n", "<leader>e", ":Ex<cr>")
keymap("n", "<leader>fd", ":e ~/.dotfiles/<cr>")
keymap("n", "<leader>sf", ":e **/*")
keymap("n", "<leader>fn", ":e ~/.dotfiles/.config/nvim/<cr>")
keymap("n", "<leader>fi", ":e ~/.dotfiles/.config/i3/config<cr>")
keymap("n", "<leader>fb", ":e ~/.dotfiles/.bashrc<cr>")
keymap("n", "<leader>fq", "<cmd>e ~/.dotfiles/.config/qutebrowser/config.py<cr>");
keymap("n", "<leader>ft", "<cmd>e ~/.dotfiles/.config/tmux/tmux.conf<cr>");
keymap("n", "<leader>fw", "<cmd>e ~/repos/work<cr>");
keymap("n", "<leader>fp", "<cmd>e ~/repos/personal<cr>");
keymap("n", "<leader>fr", "<cmd>e ~/repos<cr>");
keymap("n", "<leader>fm", "<cmd>e ~/.dotfiles/personal/todo.md<cr>");

keymap("n", "<leader>pc", "<cmd>make<cr>");

keymap("n", "<leader>u", "<cmd>UndotreeToggle<cr>");

keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("n", "J", "mzJ`z")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

--keymap("n", "<A-f>", ":find ")

keymap({ "n", "x" }, "<leader>P", [["+p]])

-- next greatest remap ever : asbjornHaland
keymap({ "n", "v" }, "<leader>y", [["+y]])

keymap("n", "<leader>Y", [["+Y]])

keymap({ "n", "v" }, "<leader>d", [["_d]])

keymap({ "n" }, "Q", "<nop>")

keymap({ "n", "i" }, "<f1>", "<nop>")

keymap("n", "<leader>j", "<cmd>cnext<CR>zz")
keymap("n", "<leader>k", "<cmd>cprev<CR>zz")
keymap("n", "<leader>l", "<cmd>lnext<CR>zz")
keymap("n", "<leader>h", "<cmd>lprev<CR>zz")

keymap({ "n", "v" }, "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

keymap("n", "<leader>gp", ":Git push -u origin<cr>");
keymap("n", "<leader>gs", ":Git<cr>")

keymap("n", "<leader>zn", zettel.create_note, { noremap = true, silent = true })
keymap("n", "<leader>zo", zettel.open_link, { noremap = true, silent = true })
keymap("n", "<leader>zd", ":tabedit ~/.dotfiles/.local/notes/<CR>", { noremap = true, silent = true })
