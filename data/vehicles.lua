return {
	-- 0	vehicle has no storage
	-- 1	vehicle has no trunk storage
	-- 2	vehicle has no glovebox storage
	-- 3	vehicle has trunk in the hood
	Storage = {
		[`jester`] = 3,
		[`adder`] = 3,
		[`osiris`] = 1,
		[`pfister811`] = 1,
		[`penetrator`] = 1,
		[`autarch`] = 1,
		[`bullet`] = 1,
		[`cheetah`] = 1,
		[`cyclone`] = 1,
		[`voltic`] = 1,
		[`reaper`] = 3,
		[`entityxf`] = 1,
		[`t20`] = 1,
		[`taipan`] = 1,
		[`tezeract`] = 1,
		[`torero`] = 3,
		[`turismor`] = 1,
		[`fmj`] = 1,
		[`infernus`] = 1,
		[`italigtb`] = 3,
		[`italigtb2`] = 3,
		[`nero2`] = 1,
		[`vacca`] = 3,
		[`vagner`] = 1,
		[`visione`] = 1,
		[`prototipo`] = 1,
		[`zentorno`] = 1,
		[`trophytruck`] = 1,
		[`trophytruck2`] = 1,
	},

	-- slots, maxWeight; default weight is 8000 per slot
	glovebox = {
		[0] = {11, 2000},		-- Compact
        [1] = {11, 2000},		-- Sedan
        [2] = {11, 2000},		-- SUV
        [3] = {11, 2000},		-- Coupe
        [4] = {11, 2000},		-- Muscle
        [5] = {11, 2000},		-- Sports Classic
        [6] = {11, 2000},		-- Sports
        [7] = {11, 2000},		-- Super
        [8] = {5, 1000},		-- Motorcycle
        [9] = {11, 2000},		-- Offroad
        [10] = {11, 2000},		-- Industrial
        [11] = {11, 2000},		-- Utility
        [12] = {11, 2000},		-- Van
        [14] = {31, 2000},	    -- Boat
        [15] = {31, 2000},	    -- Helicopter
        [16] = {51, 2000},	    -- Plane
        [17] = {11, 2000},		-- Service
        [18] = {11, 2000},		-- Emergency
        [19] = {11, 2000},		-- Military
        [20] = {11, 2000},		-- Commercial (trucks)
		models = {
            [`nmule`] = {11, 42000}
		}
	},

	trunk = {
		[0] = {21, 40000},		-- Compact
        [1] = {41, 50000},		-- Sedan
        [2] = {51, 70000},		-- SUV
        [3] = {31, 50000},		-- Coupe
        [4] = {41, 50000},		-- Muscle
        [5] = {31, 50000},		-- Sports Classic
        [6] = {31, 40000},		-- Sports
        [7] = {21, 40000},		-- Super
        -- [8] = -- Motorcycle
        [9] = {51, 100000},		-- Offroad
        [10] = {51, 400000},	-- Industrial
        [11] = {41, 320000},	-- Utility
        [12] = {61, 200000},	-- Van
        [14] = {31, 250000},	-- Boat
        [15] = {31, 200000},	-- Helicopter
        [16] = {51, 400000},	-- Plane
        [17] = {41, 320000},	-- Service
        [18] = {41, 320000},	-- Emergency
        [19] = {41, 320000},	-- Military
        [20] = {61, 400000},	-- Commercial
		models = {
			--[`xa21`] = {11, 10000},
            [`burrito`] = {61, 400000},
            [`taco2`] = {61, 400000},
            [`bison3`] = {61, 400000},
            [`nmule`] = {61, 42000000}
		},
        boneIndex = {
        }
	}
}
