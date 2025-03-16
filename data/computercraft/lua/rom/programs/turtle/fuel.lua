if not turtle then
    error("Requires a Turtle", 0)
end

local currentFuel = turtle.getFuelLevel()
local maxFuel = turtle.getFuelLimit()
write("Current fuel: " .. currentFuel .. " of " .. maxFuel)
if type(maxFuel) == "number" and maxFuel ~= 0 then
    write(string.format(" (%.3f%%)", currentFuel/maxFuel*100))
end
print()