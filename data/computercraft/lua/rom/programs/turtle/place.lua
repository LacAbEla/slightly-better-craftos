if not turtle then
    error("Requires a Turtle", 0)
end

local success, msg = turtle.place()
if not success then
    error(msg, 0)
end