local keymap = vim.keymap.set

vim.g.mapleader = " "

keymap("n", "<leader>e", ":Ex<cr>")
keymap("n", "<leader>cn", ":e ~/.dotfiles/.config/nvim/<cr>")
keymap("n", "<leader>cd", ":e ~/.dotfiles/<cr>")
keymap("n", "<leader>ci", ":e ~/.dotfiles/.config/i3/config<cr>")
keymap("n", "<leader>cb", ":e ~/.dotfiles/.bashrc<cr>")
keymap("n", "<leader>cq", "<cmd>e ~/.dotfiles/.config/qutebrowser/config.py<cr>");
keymap("n", "<leader>ct", "<cmd>e ~/.dotfiles/.config/tmux/tmux.conf<cr>");
keymap("n", "<leader>cw", "<cmd>e ~/repos/work<cr>");
keymap("n", "<leader>cp", "<cmd>e ~/repos/personal<cr>");
keymap("n", "<leader>cr", "<cmd>e ~/repos<cr>");
keymap("n", "<leader>cp", "<cmd>e ~/repos/personal/todo.md<cr>");
keymap("n", "<leader>pc", "<cmd>make<cr>");

keymap("n", "<leader>gl", "<cmd>e ~/lab/<cr>");
keymap("n", "<leader>u", "<cmd>UndotreeToggle<cr>");


keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("n", "J", "mzJ`z")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

keymap({ "n", "x" }, "<leader>P", [["+p]])

keymap("n", "<leader>w", "<C-w>_<C-w>|")

keymap("n", "<leader>rN", "")

-- next greatest remap ever : asbjornHaland
keymap({ "n", "v" }, "<leader>y", [["+y]])
keymap("n", "<leader>Y", [["+Y]])

keymap({ "n", "v" }, "<leader>d", [["_d]])

keymap("n", "Q", "<nop>")
keymap({ "n", "i" }, "<f1>", "<nop>")

keymap("n", "<leader>j", "<cmd>cnext<CR>zz")
keymap("n", "<leader>k", "<cmd>cprev<CR>zz")
keymap("n", "<leader>l", "<cmd>lnext<CR>zz")
keymap("n", "<leader>h", "<cmd>lprev<CR>zz")

keymap("n", "<A-v>", "<cmd>vsplit<CR>")
keymap("n", "<A-s>", "<cmd>split<CR>")
keymap("n", "<A-c>", "<cmd>close<CR>")

keymap("n", "<A-j>", "<C-w>j")
keymap("n", "<A-k>", "<C-w>k")
keymap("n", "<A-h>", "<C-w>h")
keymap("n", "<A-l>", "<C-w>l")

keymap("n", "<A-p>", "<cmd>tabprevious<CR>")
keymap("n", "<A-n>", "<cmd>tabnext<CR>")
keymap("n", "<A-t>", "<cmd>tabnew<CR>")

keymap({ "n", "v" }, "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

keymap("n", "<leader>gp", ":Git push -u origin<cr>");
keymap("n", "<leader>gs", ":Git<cr>")
