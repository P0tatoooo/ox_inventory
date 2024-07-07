return {
	{
		items = {
			{
				name = 'WEAPON_COMBATPDW',
				ingredients = {
					bp_combatpdw = 1,
					smg_barrel = 1,
					attach_body = 1,
					attach_grip = 1,
					attach_guard = 1,
					spring = 2
				},
				duration = 60000,
				count = 1,
			},
			{
				name = 'WEAPON_COMPACTRIFLE',
				ingredients = {
					bp_compactrifle = 1,
					smg_barrel = 1,
					attach_body = 1,
					attach_grip = 1,
					attach_guard = 1,
					spring = 1
				},
				duration = 60000,
				count = 1,
			},
			{
				name = 'WEAPON_ASSAULTRIFLE',
				ingredients = {
					bp_assaultrifle = 1,
					smg_barrel = 1,
					attach_body = 1,
					attach_grip = 1,
					attach_guard = 1,
					spring = 2
				},
				duration = 60000,
				count = 1,
			},
			{
				name = 'WEAPON_MICROSMG',
				ingredients = {
					bp_microsmg = 1,
					smg_barrel = 1,
					attach_body = 1,
					attach_grip = 1,
					attach_guard = 1,
					spring = 1
				},
				duration = 60000,
				count = 1,
			},
			{
				name = 'bulletproof',
				ingredients = {
					kevlar = 10,
					armor_satchel = 3,
				},
				duration = 60000,
				count = 1,
			},
		},
		groups = {
			['braithemb'] = 0,
			['casano'] = 0,
			['yakuza'] = 0,
		},
		points = {
			vec3(852.91, -967.63, 26.53),
			vec3(-1103.22, -1014.38, 2.55),
			vec3(714.44, 4197.35, 39.88),
		},
		zones = {
			{
				coords = vec3(852.91, -967.63, 26.53),
				size = vec3(3.8, 1.05, 0.15),
				distance = 1.5,
				rotation = 315.0,
			},
			{
				coords = vec3(-1103.22, -1014.38, 2.55),
				size = vec3(3.8, 1.05, 0.15),
				distance = 1.5,
				rotation = 315.0,
			},
			{
				coords = vec3(714.44, 4197.35, 39.88),
				size = vec3(3.8, 1.05, 0.15),
				distance = 1.5,
				rotation = 315.0,
			},
		},
	},
	--[[{
		items = {
			{
				name = 'lockpick',
				ingredients = {
					scrapmetal = 5,
					WEAPON_HAMMER = 0.05
				},
				duration = 5000,
				count = 2,
			},
		},
		points = {
			vec3(-3179.21, 1093.44, 20.86),
		},
		zones = {
			{
				coords = vec3(-3179.21, 1093.44, 20.86),
				size = vec3(3.8, 1.05, 0.15),
				distance = 1.5,
				rotation = 315.0,
			},
		},
	},]]

}
