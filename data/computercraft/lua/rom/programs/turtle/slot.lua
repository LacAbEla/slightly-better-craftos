if not turtle then
    error("Requires a Turtle", 0)
end



local function printSlot(slot)
    local detail = turtle.getItemDetail(slot)
    if detail == nil then
        print("Slot " .. slot .. " is empty")
    else
        print("Slot " .. slot .. " contains " .. turtle.getItemCount(slot) .. " " .. detail.name:gsub("minecraft:", ""))
    end
end


if #{...} == 0 then
    print("Usages:")
    print("slot select <number>")
    print("slot show [number]")
    print("slot list")
else
    local command, slot = ...
    slot = tonumber(slot)

    if command == "select" then
        if slot == nil then
            error("The slot must be a number", 0)
        end
        turtle.select(slot)
    elseif command == "show" then
        if slot == nil then
            slot = turtle.getSelectedSlot()
        end
        printSlot(slot)
    elseif command == "list" then
        for i=1,16 do
            printSlot(i)
        end
    else
        error("Invalid command", 0)
    end
end