local filename = ...
if not filename then
    print("Usage: cat <file>")
    return
end

local file, errorMsg = fs.open(shell.resolve(filename), "r")
if file == nil then
    error("Error while opening file: " .. errorMsg, 0)
end
print("=== " .. filename .. " ===")
print(file.readAll())
file.close()
