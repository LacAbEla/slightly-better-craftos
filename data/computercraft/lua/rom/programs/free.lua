-- SPDX-FileCopyrightText: 2025 LacAbEla
-- SPDX-License-Identifier: MPL-2.0

local function formatThousands(number)
    -- TODO
    return tostring(number)
end


local location = ...
if location == nil then
    location = shell.dir()
elseif not fs.exists(location) then
    -- Prevent reporting false information
    error("location '" .. location .. "' does not exist", 0)
end

print(string.format(
    "%sB free of %sB",
    formatThousands(fs.getFreeSpace(location)),
    formatThousands(fs.getCapacity(location))
))