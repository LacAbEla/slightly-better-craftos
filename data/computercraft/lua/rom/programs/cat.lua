-- SPDX-FileCopyrightText: 2025 LacAbEla
-- SPDX-License-Identifier: MPL-2.0

local filename = ...
if not filename then
    print("Usage: cat <file>")
    return
end


-- Read file contents
local contents
local file, errorMsg = fs.open(shell.resolve(filename), "r")
if file == nil then
    error("Error while opening file: " .. errorMsg, 0)
end
contents = file.readAll()
file.close()

-- Print header with the filename in one line
local originalColor = term.getTextColor()
term.setTextColor(term.isColor() and colors.lightBlue or colors.lightGray)
local termWidth, _ = term.getSize()
if termWidth < 12 then
    print(filename:sub(1, termWidth))
elseif #filename > termWidth - 8 then -- 8 is the length of the header borders
    print("=== " .. filename:sub(1, termWidth - 11) .. "... ===") -- 11 is the 8 from above plus the three dots
else
    print("=== " .. filename .. " ===")
end
term.setTextColor(originalColor)

-- Paged print of the file contents
local _, posHeight = term.getCursorPos()
textutils.pagedPrint(contents, posHeight - 3)
