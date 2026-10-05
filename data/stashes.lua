return {
    -- Casiers LSPD / BCSO (policelocker, sherifflocker) : MyCity_Police
    -- (RegisterStash avec leur position, cibles ox_target).
    {
		coords = vector3(-523.9194, -176.1098, 42.83658),
		target = {
			loc = vec3(451.25, -994.28, 30.69),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'gouvlocker',
		label = 'Casier Gouverneur',
		owner = true,
		slots = 70,
		weight = 100000,
		groups = 'government'
	},

    {
		coords = vector3(-514.3424, -179.9495, 42.83658),
		target = {
			loc = vec3(451.25, -994.28, 30.69),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'gouvlocker2',
		label = 'Casier Procureur',
		owner = true,
		slots = 70,
		weight = 100000,
		groups = 'government'
	},

    {
		coords = vector3(-548.5811, -200.841, 47.65506),
		target = {
			loc = vec3(451.25, -994.28, 30.69),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'gouvsecuritymanagerlocker',
		label = 'Casier Sécurité Gouvernement',
		owner = true,
		slots = 70,
		weight = 100000,
		groups = 'government'
	},

	--[[{
		coords = vec3(301.3, -600.23, 43.28),
		name = 'emslocker',
		label = 'Personal Locker',
		owner = false,
		slots = 70,
		weight = 80000,
		groups = {['ballas'] = 2}
	},]]
}
