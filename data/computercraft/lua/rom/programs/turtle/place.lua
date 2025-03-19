-- SPDX-FileCopyrightText: 2025 LacAbEla
-- SPDX-License-Identifier: MPL-2.0

if not turtle then
    error("Requires a Turtle", 0)
end

local success, msg = turtle.place()
if not success then
    error(msg, 0)
end