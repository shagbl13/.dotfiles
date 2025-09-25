local M = {}

local note_dir = os.getenv("HOME") .. "/.dotfiles/.local/notes"
local script_dir = os.getenv("HOME") .. "/.dotfiles/.local/scripts"

-- Utility to escape shell args safely
local function shellescape(str)
    return "'" .. str:gsub("'", "'\\''") .. "'"
end

function M.create_note()
    local file = vim.fn.expand("%:p")  -- full path
    local line = vim.fn.line(".")

    local cmd = string.format("%s nvim %s %d",
        shellescape(script_dir .. "/z"), shellescape(file), line
    )

    if os.execute("tmux ls >/dev/null 2>&1") == 0 then
        os.execute("tmux new-window " .. cmd)
    else
        os.execute("tmux new-session -s zettel " .. cmd)
    end
end

function M.open_link()
    local line = vim.api.nvim_get_current_line()
    local s, e = line:find("%[%[.-%]%]")
    if not s then return end

    local link = line:sub(s + 2, e - 2) -- strip [[ ]]
    local filepath, lnum = link:match("^(.-)#L(%d+)$")
    if not filepath then filepath = link end

    filepath = filepath:gsub("^~", os.getenv("HOME"))

    if vim.fn.filereadable(filepath) == 0 then
        print("Zettel file not found: " .. filepath)
        return
    end

    vim.cmd("edit " .. vim.fn.fnameescape(filepath))
    if lnum then vim.cmd(":" .. lnum) end
end

return M
