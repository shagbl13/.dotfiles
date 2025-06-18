function split_string(inputstr, sep)
    local t = {}
    for part in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
        table.insert(t, part)
    end
    return t
end

local absolue_path = vim.fn.getcwd()
cwd = split_string(absolue_path, '/')
local idx = 0

for _ in pairs(cwd) do
  idx = idx + 1
end

cwd = cwd[idx]
