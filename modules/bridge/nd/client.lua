<<<<<<< HEAD
=======
if not lib.checkDependency('ND_Core', '2.0.0', true) then return end

NDCore = {}

lib.load('@ND_Core.init')

RegisterNetEvent("ND:characterUnloaded", client.onLogout)

>>>>>>> main
local function reorderGroups(groups)
    groups = groups or {}
    for group, info in pairs(groups) do
        groups[group] = info.rank
    end
    return groups
end

SetTimeout(500, function()
<<<<<<< HEAD
	NDCore = exports["ND_Core"]:GetCoreObject()

	local character = NDCore.Functions.GetSelectedCharacter()
    if character then
    	local groups = reorderGroups(character.data.groups)
    	OnPlayerData("groups", groups)
	end
end)

RegisterNetEvent("ND:setCharacter", function(character)
    local groups = reorderGroups(character.data.groups)
    OnPlayerData("groups", groups)
end)

RegisterNetEvent("ND:jobChanged", function(job, lastJob)
    local character = NDCore.Functions.GetSelectedCharacter()
    local groups = reorderGroups(character.data.groups)
    groups[lastJob.name] = nil
    groups[job.name] = job.rank

    OnPlayerData("groups", groups)
=======
	local player = NDCore.getPlayer()
    if not player then return end
    client.setPlayerData("groups", reorderGroups(player.groups))
end)

RegisterNetEvent("ND:characterLoaded", function(character)
    client.setPlayerData("groups", reorderGroups(character.groups))
end)

RegisterNetEvent("ND:updateCharacter", function(character)
    client.setPlayerData("groups", reorderGroups(character.groups))
>>>>>>> main
end)

---@diagnostic disable-next-line: duplicate-set-field
function client.setPlayerStatus(values)
<<<<<<< HEAD
	for name, value in pairs(values) do
        if value == 0 then
            exports["ND_Status"]:setStatus(name, value)
        else
            exports["ND_Status"]:changeStatus(name, value)
        end
=======
    if GetResourceState("ND_Status") ~= "started" then return end

    local status = exports["ND_Status"]

    for name, value in pairs(values) do

        if value > 100 or value < -100 then
            value = value * 0.0001
        end

        status:changeStatus(name, value)
>>>>>>> main
    end
end
