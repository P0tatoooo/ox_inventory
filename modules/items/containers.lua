local containers = {}

---@class ItemContainerProperties
---@field slots number
---@field maxWeight number
---@field whitelist? table<string, true> | string[]
---@field blacklist? table<string, true> | string[]

local function arrayToSet(tbl)
	local size = #tbl
	local set = table.create(0, size)

	for i = 1, size do
		set[tbl[i]] = true
	end

	return set
end

---Registers items with itemName as containers (i.e. backpacks, wallets).
---@param itemName string
---@param properties ItemContainerProperties
---@todo Rework containers for flexibility, improved data structure; then export this method.
local function setContainerProperties(itemName, properties)
	local blacklist, whitelist = properties.blacklist, properties.whitelist

	if blacklist then
		local tableType = table.type(blacklist)

		if tableType == 'array' then
			blacklist = arrayToSet(blacklist)
		elseif tableType ~= 'hash' then
			TypeError('blacklist', 'table', type(blacklist))
		end
	end

	if whitelist then
		local tableType = table.type(whitelist)

		if tableType == 'array' then
			whitelist = arrayToSet(whitelist)
		elseif tableType ~= 'hash' then
			TypeError('whitelist', 'table', type(whitelist))
		end
	end

	containers[itemName] = {
		size = { properties.slots, properties.maxWeight },
		blacklist = blacklist,
		whitelist = whitelist,
	}
end

setContainerProperties('paperbag', {
	slots = 5,
	maxWeight = 1000,
	blacklist = { 'testburger' }
})

setContainerProperties('wallet', {
	slots = 10,
	maxWeight = 1000,
	whitelist = {
        'money',
        'id_card',
        'driver_license',
        'cc_license',
        'taxiticket',
        'restaurationticket',
        'healticket',
        'reparationticket',
        'bank_card'
    }
})

setContainerProperties('policebelt', {
	slots = 15,
	maxWeight = 20000,
	whitelist = {
        'handcuffs','radio','binoculars','sprayremover','posterremover','empty_evidence_bag','combatpistolclip','heavypistolclip',
        'smgclip','extendedsmgclip','arclip','extendedarclip','WEAPON_RADARGUN','WEAPON_FLASHLIGHT','WEAPON_COLBATON','WEAPON_STUNGUN',
        'WEAPON_PEPPERSPRAY','WEAPON_ANTIDOTE','WEAPON_COMBATPISTOL','WEAPON_HEAVYPISTOL','WEAPON_SMOKEGRENADE','WEAPON_SMOK2GRENADE',
        'WEAPON_FLASHBANG', 'ziptie','airsoftball', 'WEAPON_AIRSOFTGLOCK20',
        'WEAPON_PISTOL',  'WEAPON_PISTOL50', 'WEAPON_KNIFE', 'WEAPON_SWITCHBLADE', 'WEAPON_KNUCKLE',
    }
})

setContainerProperties('pizzabox', {
	slots = 5,
	maxWeight = 1000,
	whitelist = { 'pizza' }
})

return containers
