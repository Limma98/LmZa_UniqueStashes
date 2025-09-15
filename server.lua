if GetCurrentResourceName() ~= 'LmZa_UniqueStashes' then
    print('^1[ERROR]^7 LmZa_UniqueStashes: Resource name must be "LmZa_UniqueStashes". Current name: ' .. GetCurrentResourceName() .. '. Script will not run.')
    return
end

local ox_inventory = exports.ox_inventory

AddEventHandler('onServerResourceStart', function(resourceName)
    if resourceName == 'ox_inventory' or resourceName == GetCurrentResourceName() then
        for _, stash in ipairs(Config.Stashes) do
            local owner = false
            if table.contains(stash.lockTypes, 'personal') then
                owner = true
            end
            ox_inventory:RegisterStash(stash.id, stash.label, stash.slots, stash.weight, owner, stash.groups, stash.coords)
        end
    end
end)

function table.contains(tbl, val)
    for _, v in ipairs(tbl) do
        if v == val then return true end
    end
    return false
end