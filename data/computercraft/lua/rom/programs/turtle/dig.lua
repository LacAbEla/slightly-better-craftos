if not turtle then
    error("Requires a Turtle", 0)
end


if #{...} == 0 then
    print("Usage: dig <direction> [length]")
else
    local direction, length = ...
    if length ~= nil then
        length = tonumber(length)
    end
    
    local digCommand, moveCommand, detectCommand
    if direction == "forward" or direction == "f" then
        digCommand = turtle.dig
        moveCommand = turtle.forward
        detectCommand = turtle.detect
    elseif direction == "up" or direction == "u" then
        digCommand = turtle.digUp
        moveCommand = turtle.up
        detectCommand = turtle.detectUp
    elseif direction == "down" or direction == "d" then
        digCommand = turtle.digDown
        moveCommand = turtle.down
        detectCommand = turtle.detectDown
    else
        error("Invalid direction. Try: forward, up, down.", 0)
    end
    
    if length == nil then
        -- Dig one block
        local success, msg = digCommand()
        if not success then
            error(msg, 0)
        end
    else
        -- Dig a tunnel
        for i=1, length do
            local success, msg = digCommand()
            if not success and detectCommand() then
                -- Digging failed and the block remains there
                error(msg, 0)
            end
            if not moveCommand() and turtle.getFuelLevel() == 0 then
                error("Out of fuel", 0)
            end
        end
    end
end