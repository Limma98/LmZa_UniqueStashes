if GetCurrentResourceName() ~= 'LmZa_UniqueStashes' then
    print('^1[ERROR]^7 LmZa_UniqueStashes: Resource name must be "LmZa_UniqueStashes". Current name: ' .. GetCurrentResourceName() .. '. Script will not run.')
    return
end

local ox_inventory = exports.ox_inventory
local inZone = {}

local function tableContains(tbl, val)
    for _, v in ipairs(tbl) do
        if v == val then return true end
    end
    return false
end

local function tryOpenStash(stash)
    if tableContains(stash.lockTypes, 'code') then
        local input = lib.inputDialog('Enter Code', {
            {type = 'input', label = 'Code', description = 'Enter the stash code', required = true, password = true}
        })
        if not input or input[1] ~= stash.code then
            lib.notify(Custom.NotifyWrongCode)
            return false
        end
    end

    lib.notify(Custom.NotifyOpening)
    if lib.progressBar({
        duration = Config.ProgressDuration,
        label = Custom.ProgressLabel,
        useWhileDead = false,
        canCancel = true,
        disable = { move = true, car = true, combat = true }
    }) then

        local data = {id = stash.id}
        if tableContains(stash.lockTypes, 'personal') then

        end
        ox_inventory:openInventory('stash', data)
    else
        lib.notify(Custom.NotifyCancelled)
    end
end


Citizen.CreateThread(function()
    if Config.UseTarget then
        for _, stash in ipairs(Config.Stashes) do
            exports.ox_target:addSphereZone({
                coords = stash.coords,
                radius = 1.0,
                debug = false,
                options = {
                    {
                        name = stash.id .. '_open',
                        icon = 'fa-solid fa-box',
                        label = 'Open ' .. stash.label,
                        onSelect = function()
                            tryOpenStash(stash)
                        end,
                        distance = Config.InteractDistance
                    }
                }
            })
        end
    else

        while true do
            Citizen.Wait(0)
            local playerCoords = GetEntityCoords(PlayerPedId())
            for i, stash in ipairs(Config.Stashes) do
                local dist = #(playerCoords - stash.coords)
                if dist < Config.InteractDistance then
                    if not inZone[i] then
                        lib.showTextUI(Custom.DrawText, {
                            position = Custom.DrawTextPosition,
                            icon = Custom.DrawTextIcon,
                            style = Custom.DrawTextStyle
                        })
                        inZone[i] = true
                    end
                    if IsControlJustPressed(0, 38) then -- E key
                        tryOpenStash(stash)
                    end
                else
                    if inZone[i] then
                        lib.hideTextUI()
                        inZone[i] = false
                    end
                end
            end
        end
    end
end)