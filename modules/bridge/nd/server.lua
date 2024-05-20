<<<<<<< HEAD
local playerDropped = ...
local Inventory = require 'modules.inventory.server'
local NDCore

AddEventHandler("ND:characterUnloaded", playerDropped)

RegisterNetEvent("ND:jobChanged", function(source, job, lastJob)
    local inventory = Inventory(source)
	if not inventory then return end
	inventory.player.groups[lastJob.name] = nil
	inventory.player.groups[job.name] = job.rank
end)
=======
if not lib.checkDependency('ND_Core', '2.0.0', true) then return end

local Inventory = require 'modules.inventory.server'
NDCore = {}

lib.load('@ND_Core.init')

AddEventHandler("ND:characterUnloaded", server.playerDropped)
>>>>>>> main

local function reorderGroups(groups)
    groups = groups or {}
    for group, info in pairs(groups) do
        groups[group] = info.rank
    end
    return groups
end

<<<<<<< HEAD
SetTimeout(500, function()
    NDCore = exports["ND_Core"]:GetCoreObject()
    server.GetPlayerFromId = NDCore.Functions.GetPlayer
    for _, character in pairs(NDCore.Functions.GetPlayers()) do
        character.identifier = character.id
        character.name = ("%s %s"):format(character.firstName, character.lastName)
        character.dateofbirth = character.dob
        character.sex = character.gender
        character.groups = reorderGroups(character.data.groups)
        server.setPlayerInventory(character, character.inventory)
        Inventory.SetItem(character.source, "money", character.cash)
    end
end)

RegisterNetEvent("ND:characterLoaded", function(character)
    if not character then return end
    character.identifier = character.id
    character.name = ("%s %s"):format(character.firstName, character.lastName)
    character.dateofbirth = character.dob
    character.sex = character.gender

    local groups = reorderGroups(character.data.groups)
    server.setPlayerInventory(character, character.inventory)
    Inventory.SetItem(character.source, "money", character.cash)
end)

RegisterNetEvent("ND:moneyChange", function(player, account, amount, changeType)
    if account ~= "cash" then return end
    local item = Inventory.GetItem(player, "money", nil, true)
    Inventory.SetItem(player, "money", changeType == "set" and amount or changeType == "remove" and item - amount or changeType == "add" and item + amount)
=======
local function setCharacterInventory(character)
    character.identifier = character.id
    character.name = ("%s %s"):format(character.firstname, character.lastname)
    character.dateofbirth = character.dob
    character.sex = character.gender
    character.groups = reorderGroups(character.groups)
    server.setPlayerInventory(character, character.inventory)
    Inventory.SetItem(character.source, "money", character.cash)
end

SetTimeout(500, function()
    server.GetPlayerFromId = NDCore.getPlayer
    for _, character in pairs(NDCore.getPlayers()) do
        setCharacterInventory(character)
    end
end)

-- Accounts that need to be synced with physical items
server.accounts = {
    money = 0
}

AddEventHandler("ND:characterLoaded", function(character)
    if not character then return end
    setCharacterInventory(character)
end)

AddEventHandler("ND:moneyChange", function(src, account, amount, changeType, reason)
    if account ~= "cash" then return end
    local item = Inventory.GetItem(src, "money", nil, true)
    Inventory.SetItem(src, "money", changeType == "set" and amount or changeType == "remove" and item - amount or changeType == "add" and item + amount)
end)

AddEventHandler("ND:updateCharacter", function(character)
    local inventory = Inventory(character.source)
	if not inventory then return end
	inventory.player.groups = reorderGroups(character.groups)
>>>>>>> main
end)

---@diagnostic disable-next-line: duplicate-set-field
function server.syncInventory(inv)
    local accounts = Inventory.GetAccountItemCounts(inv)

    if accounts then
<<<<<<< HEAD
        local character = NDCore.Functions.GetPlayer(inv.id)
        NDCore.Functions.SetPlayerData(character.id, "cash", accounts.money)
=======
        local player = NDCore.getPlayer(inv.id)
        player.setData("cash", accounts.money)
>>>>>>> main
    end
end

---@diagnostic disable-next-line: duplicate-set-field
function server.setPlayerData(player)
    return {
        source = player.source,
        identifier = player.id,
<<<<<<< HEAD
        name = ("%s %s"):format(player.firstName, player.lastName),
        groups = player.data.groups,
        sex = player.gender,
        dateofbirth = player.dob,
        job = player.job
=======
        name = ("%s %s"):format(player.firstname, player.lastname),
        groups = player.groups,
        sex = player.gender,
        dateofbirth = player.dob
>>>>>>> main
    }
end

---@diagnostic disable-next-line: duplicate-set-field
function server.hasLicense(inv, license)
<<<<<<< HEAD
    local character = NDCore.Functions.GetPlayer(inv.id)
    if not character or not character.data.licences then return end

    for _, characterLicense in pairs(character.data.licences) do
=======
    local player = NDCore.getPlayer(inv.id)
    if not player then return end

    local licenses = player.getMetadata("licenses") or {}
    for i=1, #licenses do
        local characterLicense = licenses[i]
>>>>>>> main
        if characterLicense.type == license and characterLicense.status == "valid" then
            return characterLicense.type
        end
    end
end

---@diagnostic disable-next-line: duplicate-set-field
function server.buyLicense(inv, license)
	if server.hasLicense(inv, license.name) then
		return false, "already_have"
	elseif Inventory.GetItem(inv, "money", false, true) < license.price then
		return false, "can_not_afford"
	end

	Inventory.RemoveItem(inv, "money", license.price)
<<<<<<< HEAD
	NDCore.Functions.CreatePlayerLicense(inv.owner, "weapon")
	return true, "have_purchased"
end
=======
    local player = NDCore.getPlayer(inv.id)
    player.createLicense("weapon")
	return true, "have_purchased"
end

---@diagnostic disable-next-line: duplicate-set-field
function server.isPlayerBoss(playerId, group)
    local player = NDCore.getPlayer(playerId)
    if not player then return end

    local groupInfo = player.getGroup(group)
	return groupInfo and groupInfo.isBoss
end

---@param entityId number
---@return number | string
---@diagnostic disable-next-line: duplicate-set-field
function server.getOwnedVehicleId(entityId)
    return NDCore.getVehicle(entityId)?.id
end
>>>>>>> main
