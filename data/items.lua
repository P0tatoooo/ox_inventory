return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 80 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 100,
		stack = true,
	},

	['pharmacybandage'] = {
		label = 'Pansement',
		weight = 100,
		stack = true,
		--[[ client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = 'prop_rolled_sock_02', pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		} ]]
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['paperbag'] = {
		label = 'Sac en Papier',
		weight = 100,
		stack = false,
		close = false,
		consume = 0
	},

	["phone"] = {
        label = "Téléphone",
        weight = 190,
        stack = false,
        consume = 0,
        client = {
            export = "lb-phone.UsePhoneItem",
            remove = function()
                TriggerEvent("lb-phone:itemRemoved")
            end,
            add = function()
                TriggerEvent("lb-phone:itemAdded")
            end
        }
    },

    ['policebelt'] = {
		label = 'Ceinturon LSPD',
		weight = 100,
		stack = false,
		close = false,
		consume = 0
	},

    ['wallet'] = {
		label = 'Portefeuille',
		weight = 10,
		stack = false,
		close = false,
		consume = 0
	},

        --------------FOOD--------------------------
        -----------------------------------
        ['purplecake'] = {
            label = 'Purple Cake',
            weight = 100,
            stack = true,
            close = true,
            client = {
                status = { hunger = 25 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

        ['churros'] = {
            label = 'Churros',
            weight = 200,
            stack = true,
            close = true,
            degrade = 4320,
            client = {
                status = { hunger = 25 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

        ['crepe'] = {
            label = 'Crêpe',
            weight = 200,
            stack = true,
            close = true,
            degrade = 4320,
            client = {
                status = { hunger = 25 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

        ['salami'] = {
            label = 'Saucisson',
            weight = 500,
            stack = true,
            close = true,
            degrade = 10080,
            client = {
                status = { hunger = 25 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

        ['chips'] = {
            label = 'Chips',
            weight = 100,
            stack = true,
            close = true,
            degrade = 10080,
            client = {
                status = { hunger = 25},
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

        ['donut'] = {
            label = 'Donut',
            weight = 150,
            stack = true,
            close = true,
            degrade = 4320,
            client = {
                status = { hunger = 25},
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

        ['diabolapizza'] = {
            label = 'Pizza Diabola',
            weight = 100,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

        ['bolognesepizza'] = {
            label = 'Pizza Bolognaise',
            weight = 100,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },
        ['lasagna'] = {
            label = 'Lasagnes',
            weight = 250,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },
        ['carbonarapasta'] = {
            label = 'Pâtes Carbonara',
            weight = 200,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

        ['sugol'] = {
            label = 'Sugol',
            weight = 150,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 25 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

        ['carpaccio'] = {
            label = 'Carpaccio de Boeuf',
            weight = 150,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 25 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

        ['heartstopper'] = {
            label = 'HeartStopper',
            weight = 500,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },
        ['bleeder'] = {
            label = 'Bleeder',
            weight = 200,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },
        ['meatfree'] = {
            label = 'MeatFree',
            weight = 150,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },
        ['moneyshot'] = {
            label = 'MoneyShot',
            weight = 200,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

        ['chickenburger'] = {
            label = 'The Chicken',
            weight = 200,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

        ['fruitsalad'] = {
            label = 'Salade de Fruits',
            weight = 150,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 25 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

        ['kasburger'] = {
            label = 'KAS Burger',
            weight = 1000,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },
        ['tendersbucket'] = {
            label = 'Bucket Tenders',
            weight = 700,
            stack = true,
            close = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },
        ['chickenskewer'] = {
            label = 'Brochette de Poulet',
            weight = 200,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },
        ['sunday'] = {
            label = 'Sunday',
            weight = 150,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 25 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

        ['americanchickensandwich'] = {
            label = 'Américain Poulet',
            weight = 150,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },
        ['americantunasandwich'] = {
            label = 'Américain Thon',
            weight = 150,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },
        ['vegetariansandwich'] = {
            label = 'Le Végétarien',
            weight = 150,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },
        ['chefspecialsandwich'] = {
            label = 'Le Spécial du Chef',
            weight = 150,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },
        ['doubleicecream'] = {
            label = 'Glace Deux Boules',
            weight = 150,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 25 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },
        ['waffle'] = {
            label = 'Gauffre',
            weight = 100,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 25 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

        ['frenchfries'] = {
            label = 'Frites',
            weight = 200,
            stack = true,
            close = true,
            degrade = 4320,
            client = {
                status = { hunger = 25},
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

		['cheddarfrenchfries'] = {
            label = 'Frites au Cheddar',
            weight = 200,
            stack = true,
            close = true,
            degrade = 4320,
            client = {
                status = { hunger = 25},
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

		['sandyshoresbuger'] = {
            label = 'Burger Sandy Shores',
            weight = 200,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

		['paletohotbuger'] = {
            label = 'Burger Paleto Hot',
            weight = 200,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

		['chiliadskewer'] = {
            label = 'Brochette Chilliad',
            weight = 200,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

		['potatomash'] = {
            label = 'Purée de Patates',
            weight = 200,
            stack = true,
            close = true,
            degrade = 4320,
            client = {
                status = { hunger = 25},
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

		['tomatosalade'] = {
            label = 'Salade et Tomate',
            weight = 200,
            stack = true,
            close = true,
            degrade = 4320,
            client = {
                status = { hunger = 25},
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

		['applepie'] = {
            label = 'Tarte aux Pommes',
            weight = 200,
            stack = true,
            close = true,
            degrade = 4320,
            client = {
                status = { hunger = 25},
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },

		['milkshake'] = {
            label = 'Milkshake',
            weight = 150,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 12, thirst = 12 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
                    pos = { x = 0.02, y = 0.02, z = -0.02},
                    rot = { x = 0.0, y = 0.0, z = 0.0}
                },
                usetime = 2500,
            }
        },
    ---------------SOFT DRINKS-----------------------
    ['water'] = {
		label = 'Bouteille Rainé',
		weight = 500,
		stack = true,
		close = true,
        client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `vw_prop_casino_water_bottle_01a`, pos = vec3(0.0, 0.0, -0.08), rot = vec3(0.0, 0.0, 209.11), bone = 60309 },
			usetime = 2500,
		}
	},

    ['cola'] = {
		label = 'Canette d\'eCola',
		weight = 330,
		stack = true,
		close = true,
		client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

    ['soda'] = {
		label = 'Canette de Sprunk',
		weight = 330,
		stack = true,
		client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

    ['icetea'] = {
		label = 'Canette d\'Orang O Tang',
		weight = 330,
		stack = true,
		close = true,
		client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

    ['bigwater'] = {
		label = 'Bouteille d\'Eau Flow',
		weight = 500,
		stack = true,
		close = true,
        client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

    ['bigcola'] = {
		label = 'Bouteille d\'eCola',
		weight = 500,
		stack = true,
		close = true,
		client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

    ['bigsoda'] = {
		label = 'Bouteille de Sprunk',
		weight = 500,
		stack = true,
		client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

    ['bigicetea'] = {
		label = 'Bouteille d\'Orang O Tang',
		weight = 500,
		stack = true,
		close = true,
		client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

    ['biggrapejuice'] = {
		label = 'Bouteille de Jus de Raisin',
		weight = 1000,
		stack = true,
		close = true,
		client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['energydrink'] = {
		label = 'Canette de Boisson Energisante',
		weight = 450,
		stack = true,
		close = true,
		client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['grapejuice'] = {
		label = 'Brique de jus de raisin',
		weight = 200,
		stack = true,
		close = true,
		client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['limonade'] = {
		label = 'Canette de Limonade',
		weight = 450,
		stack = true,
		close = true,
		client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

    ['tea'] = {
		label = 'Thé',
		weight = 100,
		stack = true,
		close = true,
		client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

    ['tonic'] = {
		label = 'Canette d\'eCola Tonic',
		weight = 500,
		stack = true,
		close = true,
        client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

    ['coffee'] = {
		label = 'Café',
		weight = 140,
		stack = true,
		close = true,
        client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

    ['jesstoniccocktail'] = {
		label = 'Le Jess\'Tonic',
		weight = 150,
		stack = true,
		close = true,
        client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['bouboucocktail'] = {
		label = 'Le Boubou',
		weight = 150,
		stack = true,
		close = true,
        client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['prospectcocktail'] = {
		label = 'Le Prospect',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

    ['fruitcocktail'] = {
		label = 'Cocktail de Fruits',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

    ---------------ALCOOL DRINKS-----------------------

    ['absinthe'] = {
		label = 'Absinthe',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['baileys'] = {
		label = 'Baileys',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['beer'] = {
		label = 'Bière',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['champagne'] = {
		label = 'Champagne',
		weight = 950,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['cointreau'] = {
		label = 'Cointreau',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['gin'] = {
		label = 'Gin',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['pastis'] = {
		label = 'Pastis',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['guinness'] = {
		label = 'Guinness',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['rhum'] = {
		label = 'Rhum',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

    ['sake'] = {
		label = 'Saké',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['tequila'] = {
		label = 'Tequila',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['whitewine'] = {
		label = 'Vin Blanc',
		weight = 850,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['redwine'] = {
		label = 'Vin Rouge',
		weight = 850,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['vodka'] = {
		label = 'Vodka',
		weight = 850,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

    ['whisky'] = {
		label = 'Whisky',
		weight = 850,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['mezcal'] = {
		label = 'Mezcal',
		weight = 750,
		stack = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

    ['jagermeister'] = {
		label = 'Jagermeister',
		weight = 750,
		stack = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['sexandthedivincocktail'] = {
		label = 'Sex and the Divin',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['whiskycocacocktail'] = {
		label = 'Whisy-Coca',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['graveyardcocktail'] = {
		label = 'Le Cimetière',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['tontoncocktail'] = {
		label = 'Le Tonton',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['foxcocktail'] = {
		label = 'Le Fox',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['texasteqcocktail'] = {
		label = 'Le Texas Teq\'',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['birdcocktail'] = {
		label = 'Le Bird',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['cowboycocktail'] = {
		label = 'Le Cowboy',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['skyappelcocktail'] = {
		label = 'Le Sky\' Appel',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['orgasmcocktail'] = {
		label = 'Orgasme',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['sexonthebeachcocktail'] = {
		label = 'Sex On The Beach',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['energyvodkacocktail'] = {
		label = 'Energy Vodka',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['pinacoladaorangecocktail'] = {
		label = 'Pina Colada Orange',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['cubalibrecocktail'] = {
		label = 'Cuba Libre',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['jagerbombcocktail'] = {
		label = 'Jägerbomb',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['mojitococktail'] = {
		label = 'Mojito',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['margaritacocktail'] = {
		label = 'Margarita',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['tequilasunrisecocktail'] = {
		label = 'Tequila Sunrise',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['codawncocktail'] = {
		label = 'CoDAWN !',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['tequilabinousecocktail'] = {
		label = 'Tequila Binouse',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['palomacocktail'] = {
		label = 'Paloma',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['micheladacocktail'] = {
		label = 'Michelada',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['mezcalmulecocktail'] = {
		label = 'Mezcal Mule',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['horchatacocktail'] = {
		label = 'Horchata',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['vampirococktail'] = {
		label = 'Vampiro',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['cosmopolitancocktail'] = {
		label = 'Cosmopolitan',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
    -------------------------------------------------------

    ['welcomeflyer'] = {
		label = 'Bienvenue à LS',
		weight = 10,
		stack = true,
        close = true,
        client = {
			export = 'MyCity_Printer.showFlyer'
		},
	},
    ['flyer'] = {
		label = 'Propectus',
		weight = 10,
		stack = true,
        close = true,
        client = {
			export = 'MyCity_Printer.showFlyer'
		},
	},
    ['paper'] = {
		label = 'Papier',
		weight = 10,
		stack = true,
	},

    ['radio'] = {
		label = 'Radio',
		weight = 220,
        stack = false,
		allowArmed = true
	},

    ['screwdriver'] = {
		label = 'Tournevis',
		weight = 260,
        stack = false
	},

    ['screwdriver2'] = {
		label = 'Tournevis',
		weight = 260,
        stack = false
	},

    ['screwdriver3'] = {
		label = 'Tournevis',
		weight = 260,
        stack = false
	},

	['lockpick'] = {
		label = 'Kit de Crochetage',
		weight = 260,
		consume = 0,
        stack = false
	},

    ['lockpick2'] = {
		label = 'Tournevis Multi-Fonctions',
		weight = 260,
		consume = 0,
        stack = false
	},

	['money'] = {
		label = 'Argent'
	},

    ['black_money'] = {
		label = 'Liasses de Billets',
        stack = true,
	},

	['accesscard'] = {
		label = 'Carte d\'Accès',
		weight = 10,
		stack = true,
		close = true,
	},

	['animalfoodbag'] = {
		label = 'Nourriture pour Animaux',
		weight = 200,
		stack = true,
		close = true,
	},

	['antibiotic'] = {
		label = 'Comprimé',
		weight = 200,
		stack = true,
		close = true,

	},

	['antiinflammatory'] = {
		label = 'Sirop',
		weight = 200,
		stack = true,
		close = true,

	},

    ['antidizziness'] = {
		label = 'Antivertigineux',
		weight = 100,
		stack = true,
		close = true,

	},

	['apple'] = {
		label = 'Pomme',
		weight = 200,
		stack = true,
		close = true,
	},

	['malt'] = {
		label = 'Orge',
		weight = 100,
		stack = true,
		close = true,

	},

	['binoculars'] = {
		label = 'Jumelles',
		weight = 1000,
		stack = true,
		close = true,
	},

	['bloodsample'] = {
		label = 'Échantillon de sang',
		weight = 125,
		stack = false,
	},

    ['bloodbag'] = {
		label = 'Poche de sang',
		weight = 200,
		stack = true,
	},

	['bluefin_tuna'] = {
		label = 'Thon Rouge',
		weight = 200,
		stack = true,
		close = true,
	},

	['bracelet'] = {
		label = 'Bracelet',
		weight = 100,
		stack = true,
		close = true,
	},

	['bulletproof'] = {
		label = 'Gilet Pare-Balles',
		weight = 4000,
		stack = false,
		close = true,
        consume = 0,
        server = {
			export = 'MyCity_CoreV2.bulletproof'
		}
	},

	['candies'] = {
		label = 'Bonbons',
		weight = 200,
		stack = true,
		close = true,
	},

	['canesyrup'] = {
		label = 'Sirop de Canne',
		weight = 200,
		stack = true,
		close = true,

	},

	['cartridge'] = {
		label = 'Douille',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinocoupon1'] = {
		label = 'Coupon Casino Lot 1',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinocoupon2'] = {
		label = 'Coupon Casino Lot 2',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinocoupon3'] = {
		label = 'Coupon Casino Lot 3',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinocoupon4'] = {
		label = 'Coupon Casino Lot 4',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinocoupon5'] = {
		label = 'Coupon Casino Lot 5',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinocoupon6'] = {
		label = 'Coupon Casino Lot 6',
		weight = 10,
		stack = true,
		close = true,
	},

	['charcoal'] = {
		label = 'Charbon de Bois',
		weight = 10,
		stack = true,
		close = true,
	},

	['cheese'] = {
		label = 'Fromage',
		weight = 300,
		stack = true,
		close = true,
	},

	['chemicals'] = {
		label = 'Produit Chimique',
		weight = 300,
		stack = true,
		close = true,
	},

	['cigar'] = {
		label = 'Cigare',
		weight = 200,
		stack = true,
		close = true,
	},

	['cigarettementhol'] = {
		label = 'Cigarette Menthol',
		weight = 200,
		stack = true,
		close = true,
	},

	['coca_leaf'] = {
		label = 'Feuille de Coca',
		weight = 100,
		stack = true,
		close = true,

	},

	['coffeemachine'] = {
		label = 'Machine à Café',
		weight = 4000,
		stack = true,
		close = true,

	},

	['coke'] = {
		label = 'Cocaine',
		weight = 100,
		stack = true,
		close = true,
	},

	['crack'] = {
		label = 'Pochon de Crack',
		weight = 100,
		stack = true,
		close = true,
	},

	['cream'] = {
		label = 'Crème Fraiche',
		weight = 100,
		stack = true,
		close = true,
	},

	['digitaltablet'] = {
		label = 'Tablette Numérique',
		weight = 200,
		stack = true,
		close = true,
	},

	['drill'] = {
		label = 'Perceuse',
		weight = 1500,
		stack = true,
		close = true,
        consume = 0
	},

	['egg'] = {
		label = 'Oeuf',
		weight = 100,
		stack = true,
		close = true,
	},

	['ephedra'] = {
		label = 'Ephedra',
		weight = 100,
		stack = true,
		close = true,
	},

	['poppyresin'] = {
		label = 'Pavot',
		weight = 100,
		stack = true,
		close = true,
	},

	['fakeplate'] = {
		label = 'Fausse Plaque',
		weight = 500,
		stack = true,
		close = true,

	},

	['fishing_rod'] = {
		label = 'Canne à Pêche',
		weight = 500,
		stack = true,
		close = true,
	},

	['gamingconsole'] = {
		label = 'Console de Jeux',
		weight = 1000,
		stack = true,
		close = true,
	},

	['glass'] = {
		label = 'Verre',
		weight = 100,
		stack = true,
		close = true,
	},

    ['bottlecap'] = {
		label = 'Capsule',
		weight = 10,
		stack = true,
		close = true,
	},

    ['plastic'] = {
		label = 'Plastique',
		weight = 100,
		stack = true,
		close = true,
	},

    ['electroniccircuit'] = {
		label = 'Circuit Electronique',
		weight = 100,
		stack = true,
		close = true,
	},

    ['kevlarfiber'] = {
		label = 'Fibre de Kevlar',
		weight = 100,
		stack = true,
		close = true,
	},

	['golf'] = {
		label = 'Balle de Golf',
		weight = 100,
		stack = true,
		close = true,
	},

	['gunpowder'] = {
		label = 'Poudre à Canon',
		weight = 20,
		stack = true,
		close = true,
	},

	['halibut'] = {
		label = 'Flétan',
		weight = 100,
		stack = true,
		close = true,

	},

	['heroin'] = {
		label = 'Héroine',
		weight = 100,
		stack = true,
		close = true,

	},

	['hood'] = {
		label = 'Cagoule',
		weight = 100,
		stack = true,
		close = true,

	},

	['kevlar'] = {
		label = 'Kevlar',
		weight = 300,
		stack = true,
		close = true,

	},

	['laptop'] = {
		label = 'Ordinateur Portable',
		weight = 300,
		stack = true,
		close = true,

	},

	['lime'] = {
		label = 'Citron',
		weight = 100,
		stack = true,
		close = true,
	},

	['cigarette'] = {
		label = 'Cigarette',
		weight = 100,
		stack = true,
		close = true,
	},

	['mceventbadge'] = {
		label = 'Badge MCEvent',
		weight = 10,
		stack = true,
		close = true,
	},

	['mceventcoupon'] = {
		label = 'Ticket MCEvent',
		weight = 1,
		stack = true,
		close = true,
	},

	['meat'] = {
		label = 'Viande',
		weight = 250,
		stack = true,
		close = true,

	},

	['meth'] = {
		label = 'Meth',
		weight = 100,
		stack = true,
		close = true,
	},

	['microwave'] = {
		label = 'Micro-Ondes',
		weight = 100,
		stack = true,
		close = true,

	},

	['necklace'] = {
		label = 'Collier',
		weight = 100,
		stack = true,
		close = true,

	},

	['nylon'] = {
		label = 'Nylon',
		weight = 100,
		stack = true,
		close = true,
	},

	['opium'] = {
		label = 'Opium',
		weight = 100,
		stack = true,
		close = true,
	},

	['orange'] = {
		label = 'Orange',
		weight = 100,
		stack = true,
		close = true,
	},

	['ore'] = {
		label = 'Minerai',
		weight = 150,
		stack = true,
		close = true,
	},

	['divinggear'] = {
		label = 'Equipement de Plongée',
		weight = 2000,
		stack = true,
		close = true,
        consume = 0,
        client = {
            export = "MyCity_CoreV2.UseDivingGear"
        }
	},

    ['tattoogun'] = {
		label = 'Pistolet de Tatouage',
		weight = 500,
		stack = true,
		close = true,
        consume = 0,
        client = {
            export = "MyCity_CoreV2.UseTattooGun"
        }
	},

	['packaged_chicken'] = {
		label = 'Barquette de Poulet',
		weight = 250,
		stack = true,
		close = true,
	},

    ['packaged_fish'] = {
		label = 'Barquette de Poisson',
		weight = 250,
		stack = true,
		close = true,
	},

	['painkiller'] = {
		label = 'Anti-Douleur',
		weight = 100,
		stack = true,
		close = true,
	},

	['painting'] = {
		label = 'Tableau',
		weight = 100,
		stack = true,
		close = true,
	},

	['petrol'] = {
		label = 'Pétrole',
		weight = 1000,
		stack = true,
		close = true,
	},

    ['gas'] = {
		label = 'Essence',
		weight = 1000,
		stack = true,
		close = true,
	},

	['purpleweed'] = {
		label = 'Purple Weed',
		weight = 100,
		stack = true,
		close = true,
	},

	['whitegrapes'] = {
		label = 'Raisin Blanc',
		weight = 150,
		stack = true,
		close = true,
	},

	['redgrapes'] = {
		label = 'Raisin Rouge',
		weight = 150,
		stack = true,
		close = true,

	},

	['reinforced_fishing_rod'] = {
		label = 'Canne à Pêche Renforcée',
		weight = 500,
		stack = true,
		close = true,

	},

	['rice'] = {
		label = 'Riz',
		weight = 100,
		stack = true,
		close = true,

	},

	['ring'] = {
		label = 'Bague',
		weight = 100,
		stack = true,
		close = true,
	},

	['salmon'] = {
		label = 'Saumon',
		weight = 150,
		stack = true,
		close = true,
	},

	['shark_fin'] = {
		label = 'Aileron de requin',
		weight = 800,
		stack = true,
		close = true,
	},

    ['chicken'] = {
		label = 'poulet',
		weight = 1000,
		stack = false,
	},

	['spray'] = {
		label = 'Bombe de peinture',
		weight = 500,
		stack = true,
		close = true,
	},

	['stingray'] = {
		label = 'Raie',
		weight = 500,
		stack = true,
		close = true,
	},

	['sugar'] = {
		label = 'Sucre',
		weight = 100,
		stack = true,
		close = true,
	},

	['sulfur'] = {
		label = 'Soufre',
		weight = 10,
		stack = true,
		close = true,
	},

	['telescope'] = {
		label = 'Télescope',
		weight = 100,
		stack = true,
		close = true,
	},

	['television'] = {
		label = 'Télévision',
		weight = 1000,
		stack = true,
		close = true,
	},

	['token'] = {
		label = 'Jeton',
		weight = 100,
		stack = true,
		close = true,
	},

	['trout'] = {
		label = 'Truite',
		weight = 200,
		stack = true,
		close = true,
	},

	['watch'] = {
		label = 'Montre',
		weight = 100,
		stack = true,
		close = true,
	},

    ['weed_leaf'] = {
		label = 'Feuille de Cannabis',
		weight = 100,
		stack = true,
		close = true,
	},

	['weed'] = {
		label = 'Pochon de Weed',
		weight = 100,
		stack = true,
		close = true,
	},

	['wheelchair'] = {
		label = 'fauteuil Toulant',
		weight = 1000,
		stack = true,
		close = true,
	},

	['white_seabass'] = {
		label = 'Bar Blanc',
		weight = 200,
		stack = true,
		close = true,
	},

	['agave'] = {
		label = 'Agave',
		weight = 10,
		stack = true,
		close = true,

	},

	['packaged_meat'] = {
		label = 'Barquette de Viande',
		weight = 200,
		stack = true,
		close = true,
	},

    ['packaged_fish'] = {
		label = 'Barquette de Poisson',
		weight = 200,
		stack = true,
		close = true,
	},

	['sprayremover'] = {
		label = 'Nettoyant Anti-Graffitis',
		weight = 750,
		stack = true,
		close = true,
	},

	['packaged_salmon'] = {
		label = 'Barquette de Saumon',
		weight = 200,
		stack = true,
		close = true,
	},

	['sugarcane'] = {
		label = 'Canne à sucre',
		weight = 10,
		stack = true,
		close = true,
	},

	['illegalcrate'] = {
		label = 'Caisse de Contrebande',
		weight = 2000,
		stack = false,
		close = true,
	},

    ['enforcer'] = {
		label = 'Bélier',
		weight = 15000,
		stack = false,
		close = true,
	},

    ['pearl'] = {
		label = 'Perle',
		weight = 100,
		stack = true,
		close = true,
	},

    ['turtle'] = {
		label = 'Tortue',
		weight = 500,
		stack = true,
		close = true,
	},

	['doll'] = {
		label = 'Statuette',
		weight = 100,
		stack = true,
		close = true,
	},

    ['shishatobacco'] = {
		label = 'Tabac à Chicha',
		weight = 750,
		stack = true,
		close = true,
	},

    ['shishatobaccoxl'] = {
		label = 'Tabac à Chicha XL',
		weight = 750,
		stack = true,
		close = true,
	},

	["empty_evidence_bag"] = {
		label = "Sac de Preuves Vide",
		weight = 0,
		stack = true,
		close = false,
		client = {
			image = "evidence.png",
		}
	},

	["firstaidkit"] = {
		label = "Kit Premier Secours",
		weight = 350,
		stack = true,
	},

	["handcuffs"] = {
		label = "Menottes",
		weight = 100,
		stack = true,
		close = true,
        client = {
            export = "qb-policejob.cuffFromItem"
        }
	},

	["repairkit"] = {
		label = "Kit de Réparation",
		weight = 2500,
		stack = true,
		close = false,
	},

	["filled_evidence_bag"] = {
		label = "Sac de Preuves",
		weight = 200,
		stack = false,
		close = false,
		client = {
			image = "evidence.png",
		}
	},

    ["atm"] = {
		label = "ATM",
		weight = 10000,
		stack = false
	},

    ["atmempty"] = {
		label = "ATM Vide",
		weight = 10000,
		stack = false
	},

    ['stock_turbo'] = {
            label = 'Turbo Custom',
            weight = 1000,
            stack = true,
    },
    ['nos'] = {
            label = 'Kit NOS',
            weight = 1000,
            stack = true,
    },
    ['stock_transmission'] = {
            label = 'Transmission',
            weight = 1000,
            stack = true,
    },
    ['race_transmission'] = {
            label = 'Race Transmission RWD',
            weight = 1000,
            stack = true,
    },
    ['race_transmission_4wd'] = {
            label = 'Race Transmission 4WD',
            weight = 1000,
            stack = true,
    },
    ['race_transmission_fwd'] = {
            label = 'Race Transmission FWD',
            weight = 1000,
            stack = true,
    },
    ['stock_engine'] = {
            label = 'Moteur',
            weight = 1000,
            stack = true,
    },
    ['custom_engine'] = {
            label = 'Moteur Custom',
            weight = 1000,
            stack = true,
    },
    ['stock_tires'] = {
            label = 'Pneus',
            weight = 1000,
            stack = true,
    },
    ['atomic_tires'] = {
        label = 'Pneus Atomic',
        weight = 1000,
        stack = true,
    },
    ['stock_brakes'] = {
            label = 'Freins',
            weight = 1000,
            stack = true,
    },
    ['race_brakes'] = {
            label = 'Freins de Course',
            weight = 1000,
            stack = true,
    },
    ['stock_sparkplugs'] = {
            label = 'Bougies',
            weight = 1000,
            stack = true,
    },
    ['atomic_sparkplugs'] = {
            label = 'Bougies Atomic',
            weight = 1000,
            stack = true,
    },
    ['stock_suspension'] = {
        label = 'Suspensions',
        weight = 1000,
        stack = true,
    },
    ['race_suspension'] = {
            label = 'Suspensions de Course',
            weight = 1000,
            stack = true,
    },
    ['stock_oil'] = {
            label = 'Huile Moteur',
            weight = 1000,
            stack = true,
    },
    ['atomic_oil'] = {
            label = 'Huile Atomic',
            weight = 1000,
            stack = true,
    },
    -----------------------------------------------------------

    ['object'] = {
		label = 'Objet',
		weight = 500,
		stack = true,
		close = true,
        client = {
            export = "MyCity_CoreV2.placeProp"
        }
	},

    ["camera"] = {
        label = "Appareil Photo",
        weight = 1500,
        stack = false,
        close = true,
    },
    ["photopaper"] = {
        label = "Papier Photo",
        weight = 10,
        stack = true,
        close = false
    },
    ["picture"] = {
        label = "Image Polaroid",
        weight = 10,
        stack = false,
        close = true,
        client = {
            export = "MyCity_Camera.showitem"
        }
    },

    ["notepad"] = {
		label = "Carnet",
		weight = 200,
		stack = false,
		close = true
	},
	["note"] = {
		label = "Note",
		weight = 150,
		stack = false,
		close = true
	},
	["neonkit"] = {
		label = "Kit Néons",
		weight = 1000,
		stack = true,
		close = true
	},
    ["driftkit"] = {
		label = "Kit Drift",
		weight = 1000,
		stack = true,
		close = true
	},
    ["rope"] = {
		label = "Corde",
		weight = 400,
		stack = true,
        client = {
            export = "qb-policejob.cuffFromItem"
        }
	},
    ["headbag"] = {
		label = "Sac tête",
		weight = 100,
		stack = true
	},
    ['crutches'] = {
		label = 'Béquilles',
		weight = 1000,
		stack = true,
		close = true,
	},
    ['prisonticket'] = {
		label = 'Ticket Pénitentiaire',
		weight = 1,
		stack = true
	},
    ['skateboard'] = {
		label = 'Skateboard',
		weight = 2000,
		stack = false,
        close = true,
	},
    ['electricscooter'] = {
		label = 'Trottinette Electrique',
		weight = 2000,
		stack = false,
        close = true,
	},
	['loyaltycard'] = {
		label = 'Carte de Fidélité',
		weight = 10,
		stack = true,
        close = false,
		buttons = {
			{
				label = 'Ajouter un Tampon',
				action = function(slot)
					TriggerServerEvent('MyCity_CoreV2:LoyaltyCards:AddPoint', slot)
				end
			},
		}
	},
    ['bank_card'] = {
		label = 'Carte Bancaire',
		weight = 10,
		stack = false,
        close = true,
	},
    ["spikestrip"] = {
        label = "Herse",
        weight = 750,
        client = {
            export = "qb-policejob.deploySpikestrip"
        }
    },
    ["ziptie"] = {
        label = "Serflex",
        weight = 30,
        stack = true,
        client = {
            export = "qb-policejob.cuffFromItem"
        }
    },

    ['metal'] = {
		label = 'Métal',
		weight = 300,
		stack = true,
		close = true,
	},

    ['steel'] = {
		label = 'Acier',
		weight = 1000,
		stack = true,
		close = true,
	},

    ["envelope"] = {
		label = "Enveloppe Cadeau",
		weight = 10,
		stack = true,
		close = false,
	},

	['id_card'] = {
		label = 'Carte d\'Identité',
		weight = 10,
		stack = false,
        close = true,
	},

	["driver_license"] = {
		label = "Permis de Conduire",
		weight = 10,
		stack = false,
		close = true,
	},

    ["cc_license"] = {
		label = "Permis de Port d'Armes",
		weight = 10,
		stack = false,
		close = true,
	},
	["lawyer_pass"] = {
		label = "Carte d\'Avocat",
		weight = 10,
		stack = false,
		close = false
	},
    ["rugby"] = {
        label = 'Ballon de Rugby',
        weight = 1000,
        stack = false
    },
    ["basketball"] = {
        label = 'Ballon de Basketball',
        weight = 1000,
        stack = false
    },
    ["baseball"] = {
        label = 'Balle de Baseball',
        weight = 1000,
        stack = false
    },
    ["football"] = {
        label = 'Ballon de Football',
        weight = 1000,
        stack = false
    },
    ["metalwand"] = {
        label = 'Détecteur de Métal Portable',
        weight = 1000,
        stack = false
    },
	['rccar'] = {
		label = 'Voiture Télécommandée',
		weight = 2000,
		stack = false,
	},
    ['racing_gps'] = {
		label = 'GPS de Course',
		weight = 1000,
		stack = false,
	},

    ['obd_scanner'] = {
		label = 'OBD Scanner',
		weight = 1000,
		stack = false,
	},

    ["chalkboard1"] = {
        label = "Tableau - Sol",
        weight = 5000,
        stack = false,
    },

    ["chalkboard2"] = {
        label = "Tableau - Mur",
        weight = 5000,
        stack = false,
    },

    ["chalkboard3"] = {
        label = "Tableau - Carré",
        weight = 5000,
        stack = false,
    },

    ["chalkboard4"] = {
        label = "Tableau - Vertical",
        weight = 5000,
        stack = false,
    },

    ["notebook"] = {
        label = "Cahier",
        weight = 200,
        stack = false,
    },

    ["stancerkit"] = {
        label = "Stancer Kit",
        weight = 2000,
        stack = false,
    },

    ["car_door"] = {
        label = "Portière",
        weight = 2000,
        stack = false,
    },

    ["car_radiator"] = {
        label = "Radiateur",
        weight = 1500,
        stack = false,
    },

    ["car_trunk"] = {
        label = "Coffre",
        weight = 1500,
        stack = false,
    },

    ["car_wheel"] = {
        label = "Roue",
        weight = 1500,
        stack = false,
    },

    ["car_hood"] = {
        label = "Capot",
        weight = 1500,
        stack = false,
    },

    ["car_engine"] = {
        label = "Moteur",
        weight = 3000,
        stack = false,
    },

    ["car_transmission"] = {
        label = "Transmission",
        weight = 2000,
        stack = false,
    },

    ['tape'] = {
		label = 'Ruban adhésif',
		weight = 50,
		stack = true
	},

    ["mixingboard"] = {
        label = "Table de Mixage",
        weight = 4000,
        stack = true,
    },

    ['export_box'] = {
		label = 'Carton Export',
		weight = 100000,
		stack = true
	},

    ['boombox'] = {
		label = 'Enceinte',
		weight = 1500,
		stack = true
	},
    ["poster"] = {
        label = "Poster",
        weight = 260,
    },

    ["posterremover"] = {
        label = "Spatule",
        weight = 360,
    },

	["ironore"] = {
		label = "Minerai de Fer",
		weight = 1000,
		stack = true,
		close = false,
	},

    ["crackedironore"] = {
		label = "Minerai de Fer Fissuré",
		weight = 300,
		stack = true,
		close = false,
	},

	["carbon"] = {
		label = "Carbone",
		weight = 300,
		stack = true,
		close = false,
	},

	["drillbit"] = {
		label = "Mèche de Perceuse",
		weight = 10,
		stack = true,
		close = false,
	},

    ["pickaxe"] = {
		label = "Pioche",
		weight = 1000,
		stack = true,
		close = false,
        consume = 0,
	},

	["axe"] = {
		label = "Hache",
		weight = 1000,
		stack = true,
		close = false,
        consume = 0,
	},

	["goldingot"] = {
		label = "Lingot d\'Or",
		weight = 1000,
		stack = true,
		close = false,
	},

    ["carparts"] = {
		label = "Pièces Détachées",
		weight = 2000,
		stack = true,
		close = false,
	},

    ['ironingot'] = {
		label = 'Lingot de Fer',
		weight = 1000,
		stack = true,
		close = true,
	},

	['carbonfiber'] = {
		label = 'Fibre de Carbone',
		weight = 300,
		stack = true,
		close = true,
	},

    ['steelingot'] = {
		label = 'Lingot d\'Acier',
		weight = 1000,
		stack = true,
		close = true,
	},

    ['cone'] = {
		label = 'Cône',
		weight = 1000,
		stack = true,
		close = true,
	},

    ['barrier'] = {
		label = 'Barrière',
		weight = 1000,
		stack = true,
		close = true,
	},

    ['gazebotent'] = {
		label = 'Tente Pliante',
		weight = 2000,
		stack = true,
		close = true,
	},

    ['worklight'] = {
		label = 'Lampe de Chantier',
		weight = 1500,
		stack = true,
		close = true,
	},

	['policebarrier'] = {
		label = 'Barrière LSPD',
		weight = 1000,
		stack = true,
		close = true,
	},

	['heavypolicebarrier'] = {
		label = 'Barrière Lourde LSPD',
		weight = 1000,
		stack = true,
		close = true,
	},

	['heavypolicebarrier2'] = {
		label = 'Barrière Lourde Etendue LSPD',
		weight = 1000,
		stack = true,
		close = true,
	},

    ['taxiticket'] = {
		label = 'Ticket Taxi',
		weight = 1,
		stack = true,
	},

    ['restaurationticket'] = {
		label = 'Ticket Restaurant',
		weight = 1,
		stack = true,
	},

    ['healticket'] = {
		label = 'Ticket Soins',
		weight = 1,
		stack = true,
	},

    ['reparationticket'] = {
		label = 'Ticket Réparation',
		weight = 1,
		stack = true,
	},

    ['potato'] = {
		label = 'Pomme de Terre',
		weight = 100,
		stack = true,
	},

	['milk'] = {
		label = 'Lait',
		weight = 120,
		stack = true,
		close = true,
	},

	['tomato'] = {
		label = 'Tomate',
		weight = 90,
		stack = true,
		close = true,
	},

    ['wheatseed'] = {
		label = 'Graine de Blé',
		weight = 10,
		stack = true,
	},
    ['maltseed'] = {
		label = 'Graine de Malt',
		weight = 10,
		stack = true,
	},
    ['riceseed'] = {
		label = 'Riz Germé',
		weight = 10,
		stack = true,
	},
    ['potatoseed'] = {
		label = 'Pomme de Terre Germée',
		weight = 10,
		stack = true,
	},
    ['sojaseed'] = {
		label = 'Graine de Soja',
		weight = 10,
		stack = true,
	},
    ['tomatoseed'] = {
		label = 'Graine de Tomates',
		weight = 10,
		stack = true,
	},
    ['saladseed'] = {
		label = 'Pousse de Salade',
		weight = 10,
		stack = true,
	},
    ['sugarcaneseed'] = {
		label = 'Graine de Canne à Sucre',
		weight = 10,
		stack = true,
	},
    ['agaveseed'] = {
		label = 'Graine d\'Agave',
		weight = 10,
		stack = true,
	},
    ['coffeeseed'] = {
		label = 'Graine de Café',
		weight = 10,
		stack = true,
	},
    ['teaseed'] = {
		label = 'Graine de Thé',
		weight = 140,
		stack = true,
	},
    ['coffeebean'] = {
		label = 'Grain de Café',
		weight = 10,
		stack = true,
		close = true,
	},
    ['tealeaf'] = {
		label = 'Feuille de Thé',
		weight = 10,
		stack = true,
		close = true,
	},
	['aniseseed'] = {
		label = 'Graine d\'Anis',
		weight = 10,
		stack = true,
	},

	['anis'] = {
		label = 'Anis',
		weight = 140,
		stack = true,
	},

	['wheat'] = {
		label = 'Blé',
		weight = 140,
		stack = true,
	},

	['salad'] = {
		label = 'Salade',
		weight = 140,
		stack = true,
	},

	['soja'] = {
		label = 'Soja',
		weight = 140,
		stack = true,
	},

	['flour'] = {
		label = 'farine',
		weight = 100,
		stack = true,
		close = true,
	},

	['bread'] = {
		label = 'pain',
		weight = 180,
		stack = true,
		close = true,
	},

    ["forklift"] = {
		label = "Chariot Elevateur",
		weight = 200000,
		stack = false,
		close = false,
	},

    ["pallet"] = {
		label = "Palette",
		weight = 100000,
		stack = false,
		close = false,
	},

    ["trolley"] = {
		label = "Diable",
		weight = 5000,
		stack = false,
		close = false,
        client = {
            add = function(total)
                if total > 0 then
                    TriggerServerEvent('MyCity_CoreV2:Transistep:HasTrolley', true)
                end
            end,

            remove = function(total)
                if total < 1 then
                    TriggerServerEvent('MyCity_CoreV2:Skills:UpdateInventory')
                end
            end
        }
	},

    ["log"] = {
		label = "Bûche",
		weight = 1000,
		stack = true,
		close = false,
	},

    ["plank"] = {
		label = "Planche de Bois",
		weight = 200,
		stack = true,
		close = false,
	},

    ['thunderskullskeys'] = {
		label = 'Clés TS',
		weight = 10,
		stack = true
	},

    -- Illegal

	["smg_barrel"] = {
		label = "Canon de Mitraillette",
		weight = 1000,
		stack = true,
		close = true,
	},

	["attach_body"] = {
		label = "Corps de Mitraillette",
		weight = 1000,
		stack = true,
		close = true,
	},

	["attach_guard"] = {
		label = "Garde de Mitraillette",
		weight = 1000,
		stack = true,
		close = true,
	},

    ["attach_grip"] = {
		label = "Poignée de Mitraillette",
		weight = 1000,
		stack = true,
		close = true,
	},

    ["shotgun_barrel"] = {
		label = "Canon de Fusil à Pompe",
		weight = 1000,
		stack = true,
		close = true,
	},

	["shotgun_body"] = {
		label = "Corps de Fusil à Pompe",
		weight = 1000,
		stack = true,
		close = true,
	},

	["shotgun_guard"] = {
		label = "Garde de Fusil à Pompe",
		weight = 1000,
		stack = true,
		close = true,
	},

    ["shotgun_grip"] = {
		label = "Poignée de Fusil à Pompe",
		weight = 1000,
		stack = true,
		close = true,
	},

	["pistol_body"] = {
		label = "Corps de Pistolet",
		weight = 1000,
		stack = true,
		close = true,
	},

	["spring"] = {
		label = "Ressort",
		weight = 250,
		stack = true,
		close = true,
	},

	["pistol_barrel"] = {
		label = "Cannon de Pistolet",
		weight = 1000,
		stack = true,
		close = true,
	},
	["bp_combatpdw"] = {
		label = "Plan ADP de Combat",
		weight = 50,
		stack = false,
		close = true,
	},
	["bp_compactrifle"] = {
		label = "Plan AK-U",
		weight = 50,
		stack = false,
		close = true,
	},
	["bp_assaultrifle"] = {
		label = "Plan AK-47",
		weight = 50,
		stack = false,
		close = true,
	},
	["bp_microsmg"] = {
		label = "Plan UZI",
		weight = 50,
		stack = false,
		close = true,
	},
    ["bp_machinepistol"] = {
		label = "Plan TEC-9",
		weight = 50,
		stack = false,
		close = true,
	},
    ["bp_smg"] = {
		label = "Plan MP5",
		weight = 50,
		stack = false,
		close = true,
	},
    ["bp_pumpshotgun"] = {
		label = "Plan Fusil à Pompe",
		weight = 50,
		stack = false,
		close = true,
	},
    ["bp_sawnoffshotgun"] = {
		label = "Plan Fusil à Pompe Court",
		weight = 50,
		stack = false,
		close = true,
	},
    ["bp_bullpupshotgun"] = {
		label = "Plan Fusil à Pompe Bullpup",
		weight = 50,
		stack = false,
		close = true,
	},
    ["bp_dbshotgun"] = {
		label = "Plan Fusil à Pompe Double Coup",
		weight = 50,
		stack = false,
		close = true,
	},
    ["bp_pistol"] = {
		label = "Plan Pistolet",
		weight = 50,
		stack = false,
		close = true,
	},
    ["bp_pistol50"] = {
		label = "Plan Pistolet Cal .50",
		weight = 50,
		stack = false,
		close = true,
	},
	["bp_minismg"] = {
		label = "Plan Skorpion",
		weight = 50,
		stack = false,
		close = true,
	},
	["bp_bullpuprifle"] = {
		label = "Plan QBZ-95",
		weight = 50,
		stack = false,
		close = true,
	},
	["armor_satchel"] = {
		label = "Plaque de métal",
		weight = 500,
		stack = true,
		close = true,
	},
	["bp_kevlar"] = {
		label = "Plan gilet pare balle",
		weight = 50,
		stack = false,
		close = true,
	},

    ----------------------------
    ["security_card_01"] = {
		label = "Carte de Sécurité",
		weight = 100,
		stack = true,
	},
    ["thermite"] = {
		label = "Explosif Thermite",
		weight = 1000,
		stack = true,
	},
    ["deposit_box_key"] = {
		label = "Clé de Coffre",
		weight = 100,
		stack = false,
	},
    ['hackingdevice'] = {
		label = 'Appareil de Piratage',
		weight = 300,
	},

    ----------------------------
    ['reddiamond'] = {
		label = 'Diamant Rouge',
		weight = 300,
	},
    ['sapphirepanther'] = {
		label = 'Panthère Sertie de Saphirs',
		weight = 300,
	},
    ['rubynecklace'] = {
		label = 'Collier de Rubis',
		weight = 300,
	},
    ['mayabottle'] = {
		label = 'Bouteille Maya',
		weight = 300,
	},
    ['glasscutter'] = {
		label = 'Coupe-Verre',
		weight = 300,
        stack = false,
        consume = 0
	},
    ['prepaidphone'] = {
		label = 'Téléphone Jetable',
		weight = 300,
        stack = false,
        client = {
            export = "MyCity_CoreV2.usePrepaidPhone",
        }
	},
	['moneybag'] = {
		label = 'Sac à Billets',
		weight = 1000,
		stack = false,
	},



	--Gun Crafting

	["trigger_g_p"] = {
		label = "Ceramic Pistol Trigger",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Ceramic Pistol",
		client = {
			image = "TriggerGP.png",
		}
	},

	["grip_left_s_p"] = {
		label = "SNS Pistol Left Grip",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for SNS Pistol",
		client = {
			image = "GripLeftSP.png",
		}
	},

	["folding_stock_assembly_m"] = {
		label = "Micro SMG stock assembly",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for microsmg",
		client = {
			image = "FoldingStockAssemblyM.png",
		}
	},

	["magazine_body_g_p"] = {
		label = "Ceramic Pistol Magazine Body",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Ceramic Pistol",
		client = {
			image = "MagazineBodyGP.png",
		}
	},

	["main_frame_a_s"] = {
		label = "Assault SMG Main Frame",
		weight = 20,
		stack = true,
		close = true,
		description = "A part for Assault SMG",
		client = {
			image = "MainFrameAS.png",
		}
	},

	["grip_c"] = {
		label = "Carbine Grip",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Carbine Rifle",
		client = {
			image = "GripC.png",
		}
	},

	["front_sight"] = {
		label = ".50 Front Sight",
		weight = 1,
		stack = true,
		close = true,
		description = "A part for .50 pistol",
		client = {
			image = "FrontSight.png",
		}
	},

	["top_grip_a_s"] = {
		label = "Assault SMG Top Grip",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Assault SMG",
		client = {
			image = "TopGripAS.png",
		}
	},

	["rear_sight_g_p"] = {
		label = "Ceramic Pistol Rear Sight",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Ceramic Pistol",
		client = {
			image = "RearSightGP.png",
		}
	},

	["b_p_heavy_pistol"] = {
		label = "Heavy Pistol Blueprint",
		weight = 1,
		stack = true,
		close = true,
		description = "Blueprint for Heavy Pistol",
		client = {
			image = "bpheavypistol.png",
		}
	},

	["main_frame_c"] = {
		label = "Carbine Main Frame",
		weight = 20,
		stack = true,
		close = true,
		description = "A part for Carbine Rifle",
		client = {
			image = "MainFrameC.png",
		}
	},

	["handguard_l"] = {
		label = "Shotgun Handguard",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Shotgun",
		client = {
			image = "HandguardL.png",
		}
	},

	["nozzle_c_r"] = {
		label = "Compact Rifle Nozzle",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Compact Rifle",
		client = {
			image = "NozzleCR.png",
		}
	},

	["front_sight_s"] = {
		label = "SMG Sight",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for SMG",
		client = {
			image = "FrontSightS.png",
		}
	},

	["bolt_carrier_c"] = {
		label = "Carbine Bolt Carrier",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Carbine Rifle",
		client = {
			image = "BoltCarrierC.png",
		}
	},

	["sight_holder_b_p"] = {
		label = "Bullpup Rifle Sight Holder",
		weight = 1,
		stack = true,
		close = true,
		description = "A part for Bullpup Rifle",
		client = {
			image = "SightHolderBP.png",
		}
	},

	["reloader_a_s"] = {
		label = "Assault SMG Reloader",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Assault SMG",
		client = {
			image = "ReloaderAS.png",
		}
	},

	["barrel_m"] = {
		label = "Micro SMG barrel",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for microsmg",
		client = {
			image = "BarrelM.png",
		}
	},

	["barrel_retaining_nut_m"] = {
		label = "Micro SMG retaining nut",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for microsmg",
		client = {
			image = "BarrelRetainingNutM.png",
		}
	},

	["mechanism_housing"] = {
		label = ".50 Mechanism Housing",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for .50 pistol",
		client = {
			image = "MechanismHousing.png",
		}
	},

	["rear_sight_c_r"] = {
		label = "Compact Rifle Rear Sight",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Compact Rifle",
		client = {
			image = "RearSightCR.png",
		}
	},

	["receiver_s"] = {
		label = "SMG Receiver",
		weight = 100,
		stack = true,
		close = true,
		description = "A part for SMG",
		client = {
			image = "ReceiverS.png",
		}
	},

	["bolthead_carrier_s_c"] = {
		label = "Special Carbine Bolthead",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Special Carbine",
		client = {
			image = "BoltheadCarrierSC.png",
		}
	},

	["handguard_s"] = {
		label = "SMG Handguard",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for SMG",
		client = {
			image = "HandguardS.png",
		}
	},

	["b_p_advanced_rifle"] = {
		label = "Advanced Rifle Blueprint",
		weight = 1,
		stack = true,
		close = true,
		description = "Blueprint for Advanced Rifle",
		client = {
			image = "bpadvancedrifle.png",
		}
	},

	["slide_g_p"] = {
		label = "Ceramic Pistol Slide",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Ceramic Pistol",
		client = {
			image = "SlideGP.png",
		}
	},

	["trigger_a_r"] = {
		label = "Advanced Rifle Trigger",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Advanced Rifle",
		client = {
			image = "TriggerAR.png",
		}
	},

	["main_frame_h_p"] = {
		label = "Heavy Pistol Main Frame",
		weight = 20,
		stack = true,
		close = true,
		description = "A part for Heavy Pistol",
		client = {
			image = "MainFrameHP.png",
		}
	},

	["nozzle_b_p"] = {
		label = "Bullpup Rifle Nozzle",
		weight = 1,
		stack = true,
		close = true,
		description = "A part for Bullpup Rifle",
		client = {
			image = "NozzleBP.png",
		}
	},

	["main_frame_k"] = {
		label = "Combat Pistol Main Frame",
		weight = 20,
		stack = true,
		close = true,
		description = "A part for Combat pistol",
		client = {
			image = "MainFrameCP.png",
		}
	},

	["grip_l"] = {
		label = "Shotgun Grip",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Shotgun",
		client = {
			image = "GripL.png",
		}
	},

	["extractor_parts_g_p"] = {
		label = "Ceramic Pistol Extractor parts",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Ceramic Pistol",
		client = {
			image = "ExtractorPartsGP.png",
		}
	},

	["gas_block_s_c"] = {
		label = "Special Carbine Gas block",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Special Carbine",
		client = {
			image = "GasBlockSC.png",
		}
	},

	["barrel_c"] = {
		label = "Carbine Barrel",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Carbine Rifle",
		client = {
			image = "BarrelC.png",
		}
	},

	["firing_pin_g_p"] = {
		label = "Ceramic Pistol Firing Pin",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Ceramic Pistol",
		client = {
			image = "FiringPinGP.png",
		}
	},

	["lower_hand_guard_c_r"] = {
		label = "Compact Rifle Lower Hand Guard",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Compact Rifle",
		client = {
			image = "LowerHandGuardCR.png",
		}
	},

	["rear_sight_a_s"] = {
		label = "Assault SMG Rear Sight",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Assault SMG",
		client = {
			image = "RearSightAS.png",
		}
	},

	["barrel_bushing_a"] = {
		label = "Assault Rifle bushing",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for assault rifle",
		client = {
			image = "BarrelBushingA.png",
		}
	},

	["trigger_m"] = {
		label = "Micro SMG trigger",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for microsmg",
		client = {
			image = "TriggerM.png",
		}
	},

	["trigger_a"] = {
		label = "Assault Rifle Trigger",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for assault rifle",
		client = {
			image = "TriggerA.png",
		}
	},

	["trigger_c_r"] = {
		label = "Compact Rifle Trigger",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Compact Rifle",
		client = {
			image = "TriggerCR.png",
		}
	},

	["gas_piston_tube_a"] = {
		label = "Assault Rifle Piston Tube",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for assault rifle",
		client = {
			image = "GasPistonTubeA.png",
		}
	},

	["hammer_a"] = {
		label = "Assault Rifle Hammer",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for assault rifle",
		client = {
			image = "HammerA.png",
		}
	},

	["b_p_pistol"] = {
		label = "Pistol Blueprint",
		weight = 1,
		stack = true,
		close = true,
		description = "Blueprint for Pistol",
		client = {
			image = "bppistol.png",
		}
	},

	["receiver_c"] = {
		label = "Carbine Receiver",
		weight = 100,
		stack = true,
		close = true,
		description = "A part for Carbine Rifle",
		client = {
			image = "ReceiverC.png",
		}
	},

	["main_frame_b_p"] = {
		label = "Bullpup Rifle Main Frame",
		weight = 1,
		stack = true,
		close = true,
		description = "A part for Bullpup Rifle",
		client = {
			image = "MainFrameBP.png",
		}
	},

	["main_grip_a_s"] = {
		label = "Assault SMG Main Grip",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Assault SMG",
		client = {
			image = "MainGripAS.png",
		}
	},

	["b_p_compact_rifle"] = {
		label = "Advanced Rifle Blueprint",
		weight = 1,
		stack = true,
		close = true,
		description = "Blueprint for Compact Rifle",
		client = {
			image = "bpcompactrifle.png",
		}
	},

	["magazine_body_k"] = {
		label = "Combat Pistol Magazine Body",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Combat pistol",
		client = {
			image = "MagazineBodyCP.png",
		}
	},

	["rear_sight_k"] = {
		label = "Combat Pistol Rear Sight",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Combat pistol",
		client = {
			image = "RearSightCP.png",
		}
	},

	["grip_lock_a_s"] = {
		label = "Assault SMG Grip Lock",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Assault SMG",
		client = {
			image = "GripLockAS.png",
		}
	},

	["main_frame_g_p"] = {
		label = "Ceramic Pistol Main Frame",
		weight = 20,
		stack = true,
		close = true,
		description = "A part for Ceramic Pistol",
		client = {
			image = "MainFrameGP.png",
		}
	},

	["handguard_right_m"] = {
		label = "Micro SMG right handguard",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for microsmg",
		client = {
			image = "HandguardRightM.png",
		}
	},

	["b_p_50"] = {
		label = ".50 Blueprint",
		weight = 1,
		stack = true,
		close = true,
		description = "Blueprint for .50",
		client = {
			image = "bppistol50.png",
		}
	},

	["barrel_k"] = {
		label = "Combat Pistol Barrel",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Combat pistol",
		client = {
			image = "BarrelCP.png",
		}
	},

	["main_frame_s_c"] = {
		label = "Special Carbine Main Frame",
		weight = 20,
		stack = true,
		close = true,
		description = "A part for Special Carbine",
		client = {
			image = "MainFrameSC.png",
		}
	},

	["hand_grip_b_p"] = {
		label = "Bullpup Rifle Hand Grip",
		weight = 1,
		stack = true,
		close = true,
		description = "A part for Bullpup Rifle",
		client = {
			image = "HandGripBP.png",
		}
	},

	["front_sight_a_s"] = {
		label = "Assault SMG Front Sight",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Assault SMG",
		client = {
			image = "FrontSightAS.png",
		}
	},

	["front_sight_l"] = {
		label = "Shotgun Sight",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Shotgun",
		client = {
			image = "FrontSightL.png",
		}
	},

	["slide_k"] = {
		label = "Combat Pistol Slide",
		weight = 100,
		stack = true,
		close = true,
		description = "A part for Combat pistol",
		client = {
			image = "SlideCP.png",
		}
	},

	["barrel_b_p"] = {
		label = "Bullpup Rifle Barrel",
		weight = 1,
		stack = true,
		close = true,
		description = "A part for Bullpup Rifle",
		client = {
			image = "BarrelBP.png",
		}
	},

	["magazine_a_r"] = {
		label = "Advanced Rifle Magazine",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Advanced Rifle",
		client = {
			image = "MagazineAR.png",
		}
	},

	["front_sight_a_r"] = {
		label = "Advanced Rifle Front Sight",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Advanced Rifle",
		client = {
			image = "FrontSightAR.png",
		}
	},

	["lower_hand_guard_a"] = {
		label = "Assault Rifle Hand Guard",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for assault rifle",
		client = {
			image = "LowerHandGuardA.png",
		}
	},

	["trigger_s"] = {
		label = "SMG Trigger",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for SMG",
		client = {
			image = "TriggerS.png",
		}
	},

	["grip_left_p"] = {
		label = "Pistol Left Grip",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for pistol",
		client = {
			image = "GripLeftP.png",
		}
	},

	["grip_right_s_p"] = {
		label = "SNS Pistol RightGrip",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for SNS Pistol",
		client = {
			image = "GrpRightSP.png",
		}
	},

	["magazine_m"] = {
		label = "Micro SMG magazine",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for microsmg",
		client = {
			image = "MagazineM.png",
		}
	},

	["firing_pin"] = {
		label = ".50 Firing Pin",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for .50 pistol",
		client = {
			image = "FiringPin.png",
		}
	},

	["bolt_assembly"] = {
		label = ".50 Bolt Assembly",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for .50 pistol",
		client = {
			image = "BoltAssembly.png",
		}
	},

	["rear_sight_s_c"] = {
		label = "Special Carbine Rear Sight",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Special Carbine",
		client = {
			image = "RearSightSC.png",
		}
	},

	["slide_h_p"] = {
		label = "Heavy Pistol Slide",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Heavy Pistol",
		client = {
			image = "SlideHP.png",
		}
	},

	["receiver_m"] = {
		label = "Micro SMG receiver",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for microsmg",
		client = {
			image = "ReceiverM.png",
		}
	},

	["upper_grip_a_s"] = {
		label = "Assault SMG Upper Grip",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Assault SMG",
		client = {
			image = "UpperGripAS.png",
		}
	},

	["handguard_s_c"] = {
		label = "Special Carbine Handguard",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Special Carbine",
		client = {
			image = "HandguardSC.png",
		}
	},

	["magazine_body"] = {
		label = ".50 Magazine Body",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for .50 pistol",
		client = {
			image = "MagazineBody.png",
		}
	},

	["b_p_combat_pistol"] = {
		label = "Combat Pistol Blueprint",
		weight = 1,
		stack = true,
		close = true,
		description = "Blueprint for Combat Pistol",
		client = {
			image = "bpcombatpistol.png",
		}
	},

	["trigger_l"] = {
		label = "Shotgun Trigger",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Shotgun",
		client = {
			image = "TriggerL.png",
		}
	},

	["rear_recoil_spring_guide_a"] = {
		label = "Assault Rifle Spring Guide",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for assault rifle",
		client = {
			image = "RearRecoilSpringGuideA.png",
		}
	},

	["front_sight_h_p"] = {
		label = "Heavy Pistol Front Sight",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Heavy Pistol",
		client = {
			image = "FrontSightHP.png",
		}
	},

	["magazine_c_r"] = {
		label = "Compact Rifle Magazine",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Compact Rifle",
		client = {
			image = "MagazineCR.png",
		}
	},

	["bolt_m"] = {
		label = "Micro SMG bolt",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for microsmg",
		client = {
			image = "BoltM.png",
		}
	},

	["reloader_b_p"] = {
		label = "Bullpup Rifle Reloader",
		weight = 1,
		stack = true,
		close = true,
		description = "A part for Bullpup Rifle",
		client = {
			image = "ReloaderBP.png",
		}
	},

	["butt_cover_a_r"] = {
		label = "Advanced Rifle Butt Cover",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Advanced Rifle",
		client = {
			image = "ButtCoverAR.png",
		}
	},

	["grip_a"] = {
		label = "Assault Rifle Grip",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for assault rifle",
		client = {
			image = "GripA.png",
		}
	},

	["main_frame_a"] = {
		label = "Assault Rifle Main frame",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for assault rifle",
		client = {
			image = "MainFrameA.png",
		}
	},

	["outer_barrel"] = {
		label = ".50 Outer Barrel",
		weight = 20,
		stack = true,
		close = true,
		description = "A part for .50 pistol",
		client = {
			image = "OuterBarrel.png",
		}
	},

	["recoil_spring_guide_k"] = {
		label = "Combat Pistol Spring Guide",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Combat pistol",
		client = {
			image = "RecoilSpringGuideCP.png",
		}
	},

	["magazine_tube_l"] = {
		label = "Shotgun Magazine Tube",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Shotgun",
		client = {
			image = "MagazineTubeL.png",
		}
	},

	["receiver_cover_m"] = {
		label = "Micro SMG reciver cover",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for microsmg",
		client = {
			image = "ReceiverCoverM.png",
		}
	},

	["firing_pin_s"] = {
		label = "SMG Firing Pin",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for SMG",
		client = {
			image = "FiringPinS.png",
		}
	},

	["recoil_spring_guide_g_p"] = {
		label = "Ceramic Pistol Recoil Spring Guide",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Ceramic Pistol",
		client = {
			image = "RecoilSpringGuideGP.png",
		}
	},

	["trigger_k"] = {
		label = "Combat Pistol Trigger",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Combat pistol",
		client = {
			image = "TriggerCP.png",
		}
	},

	["rear_sight_s"] = {
		label = "SMG Rear Sight",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for SMG",
		client = {
			image = "RearSightS.png",
		}
	},

	["hammer_s_p"] = {
		label = "SNS Pistol Hammer",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for SNS Pistol",
		client = {
			image = "HammerSP.png",
		}
	},

	["barrel_h_p"] = {
		label = "Heavy Pistol Barrel",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Heavy Pistol",
		client = {
			image = "BarrelHP.png",
		}
	},

	["b_p_pump_shotgun"] = {
		label = "Pump Shotgun Blueprint",
		weight = 1,
		stack = true,
		close = true,
		description = "Blueprint for Pump Shotgun",
		client = {
			image = "bppumpshotgun.png",
		}
	},

	["gas_piston_tube_c_r"] = {
		label = "Compact Rifle Gas Piston Tube",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Compact Rifle",
		client = {
			image = "GasPistonTubeCR.png",
		}
	},

	["front_sight_c_r"] = {
		label = "Compact Rifle Front Sight",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Compact Rifle",
		client = {
			image = "FrontSightCR.png",
		}
	},

	["trigger_c"] = {
		label = "Carbine Trigger",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Carbine Rifle",
		client = {
			image = "TriggerC.png",
		}
	},

	["magazine_spring_holder_g_p"] = {
		label = "Ceramic Pistol Magazine Spring Holder",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Ceramic Pistol",
		client = {
			image = "MagazineSpringHolderGP.png",
		}
	},

	["bolt_carrier_c_r"] = {
		label = "Compact Rifle Bolt Carrier",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Compact Rifle",
		client = {
			image = "BoltCarrierCR.png",
		}
	},

	["handgaurd_left_m"] = {
		label = "Micro SMG left handguard",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for microsmg",
		client = {
			image = "HandgaurdLeftM.png",
		}
	},

	["rear_sight"] = {
		label = ".50 Rear Sight",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for .50 pistol",
		client = {
			image = "RearSight.png",
		}
	},

	["trigger_b_p"] = {
		label = "Bullpup Rifle Trigger",
		weight = 1,
		stack = true,
		close = true,
		description = "A part for Bullpup Rifle",
		client = {
			image = "TriggerBP.png",
		}
	},

	["magazine_spring_holder_k"] = {
		label = "Combat Pistol Magazine Spring Holder",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Combat pistol",
		client = {
			image = "MagazineSpringHolderCP.png",
		}
	},

	["hammer_k"] = {
		label = "Combat Pistol Hammer",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Combat pistol",
		client = {
			image = "HammerCP.png",
		}
	},

	["main_frame_s"] = {
		label = "SMG Main Frame",
		weight = 20,
		stack = true,
		close = true,
		description = "A part for SMG",
		client = {
			image = "MainFrameS.png",
		}
	},

	["rear_sight_p"] = {
		label = "Pistol Rear Sight",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for pistol",
		client = {
			image = "RearSightP.png",
		}
	},

	["b_p_bullpup_rifle"] = {
		label = "Bullpup Rifle Blueprint",
		weight = 1,
		stack = true,
		close = true,
		description = "Blueprint for Bullpup Rifle",
		client = {
			image = "bpbullpuprifle.png",
		}
	},

	["magazine_c"] = {
		label = "Carbine Magazine",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Carbine Rifle",
		client = {
			image = "MagazineC.png",
		}
	},

	["upper_handguard_c"] = {
		label = "Carbine upper handguard",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Carbine Rifle",
		client = {
			image = "UpperHandguardC.png",
		}
	},

	["b_p_special_carbine"] = {
		label = "Special Carbine Blueprint",
		weight = 1,
		stack = true,
		close = true,
		description = "Blueprint for Special Carbine",
		client = {
			image = "bpspecialcarbine.png",
		}
	},

	["grip_s_c"] = {
		label = "Special Carbine Grip",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Special Carbine",
		client = {
			image = "GripSC.png",
		}
	},

	["rear_sight_a"] = {
		label = "Assault Rifle Rear Sight",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for assault rifle",
		client = {
			image = "RearSightA.png",
		}
	},

	["firing_pin_h_p"] = {
		label = "Heavy Pistol Firing Pin",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Heavy Pistol",
		client = {
			image = "FiringPinHP.png",
		}
	},

	["front_sight_a"] = {
		label = "Assault Rifle Front sight",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for assault rifle",
		client = {
			image = "FrontSightA.png",
		}
	},

	["barrel_a_s"] = {
		label = "Assault SMG Barrel",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Assault SMG",
		client = {
			image = "BarrelAS.png",
		}
	},

	["hammer_p"] = {
		label = "Pistol Hammer",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for pistol",
		client = {
			image = "HammerP.png",
		}
	},

	["front_sight_g_p"] = {
		label = "Ceramic Pistol Front Sight",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Ceramic Pistol",
		client = {
			image = "FrontSightGP.png",
		}
	},

	["barrel_a"] = {
		label = "Assault Rifle Barrel",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for assault rifle",
		client = {
			image = "BarrelA.png",
		}
	},

	["b_p_assault_rifle"] = {
		label = "Assault Rifle Blueprint",
		weight = 1,
		stack = true,
		close = true,
		description = "Blueprint for Assault Rifle",
		client = {
			image = "bpassaultrifle.png",
		}
	},

	["rear_sight_s_p"] = {
		label = "SNS Pistol Rear Sight",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for SNS Pistol",
		client = {
			image = "RearSightSP.png",
		}
	},

	["barrel_s"] = {
		label = "SMG Barrel",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for SMG",
		client = {
			image = "BarrelS.png",
		}
	},

	["trigger_s_c"] = {
		label = "Special Carbine Trigger",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Special Carbine",
		client = {
			image = "TriggerSC.png",
		}
	},

	["reloader_cylinder_a_r"] = {
		label = "Advanced Rifle Reloader Cylinder",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Advanced Rifle",
		client = {
			image = "ReloaderCylinderAR.png",
		}
	},

	["slide"] = {
		label = ".50 Slide",
		weight = 30,
		stack = true,
		close = true,
		description = "A part for .50 pistol",
		client = {
			image = "Slide.png",
		}
	},

	["magazine_s_p"] = {
		label = "SNS Pistol Magazine",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for SNS Pistol",
		client = {
			image = "MagazineSP.png",
		}
	},

	["firing_pin_k"] = {
		label = "Combat Pistol Firing Pin",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Combat pistol",
		client = {
			image = "FiringPinCP.png",
		}
	},

	["stock_c"] = {
		label = "Carbine Stock",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Carbine Rifle",
		client = {
			image = "StockC.png",
		}
	},

	["magazine_cap_l"] = {
		label = "Shotgun Magazine Cap",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Shotgun",
		client = {
			image = "MagazineCapL.png",
		}
	},

	["barrel_g_p"] = {
		label = "Ceramic Pistol Barrel",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Ceramic Pistol",
		client = {
			image = "BarrelGP.png",
		}
	},

	["trigger_h_p"] = {
		label = "Heavy Pistol Trigger",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Heavy Pistol",
		client = {
			image = "TriggerHP.png",
		}
	},

	["slide_p"] = {
		label = "Pistol Slide",
		weight = 100,
		stack = true,
		close = true,
		description = "A part for pistol",
		client = {
			image = "SlideP.png",
		}
	},

	["buttstock_s_c"] = {
		label = "Special Carbine buttstock",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Special Carbine",
		client = {
			image = "ButtstockSC.png",
		}
	},

	["b_p_ceramic_pistol"] = {
		label = "Ceramic Pistol Blueprint",
		weight = 1,
		stack = true,
		close = true,
		description = "Blueprint for Ceramic Pistol",
		client = {
			image = "bpceramicpistol.png",
		}
	},

	["recoil_spring_guide_h_p"] = {
		label = "Heavy Pistol Spring Guide",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Heavy Pistol",
		client = {
			image = "RecoilSpringGuideHP.png",
		}
	},

	["sight_holder_a_s"] = {
		label = "Assault SMG Sight Holder",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Assault SMG",
		client = {
			image = "SightHolderAS.png",
		}
	},

	["front_sight_s_p"] = {
		label = "SNS Pistol Front Sight",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for SNS Pistol",
		client = {
			image = "FrontSightSP.png",
		}
	},

	["magazine_s_c"] = {
		label = "Special Carbine Magazine",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Special Carbine",
		client = {
			image = "MagazineSC.png",
		}
	},

	["main_frame"] = {
		label = ".50 Main Frame",
		weight = 100,
		stack = true,
		close = true,
		description = "A part for .50 pistol",
		client = {
			image = "MainFrame.png",
		}
	},

	["barrel_p"] = {
		label = "Pistol Barrel",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for pistol",
		client = {
			image = "BarrelP.png",
		}
	},

	["rear_sight_b_p"] = {
		label = "Bullpup Rifle Rear Sight",
		weight = 1,
		stack = true,
		close = true,
		description = "A part for Bullpup Rifle",
		client = {
			image = "RearSightBP.png",
		}
	},

	["reloader_a_r"] = {
		label = "Advanced Rifle Reloader",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Advanced Rifle",
		client = {
			image = "ReloaderAR.png",
		}
	},

	["b_p_s_m_g"] = {
		label = "SMG Blueprint",
		weight = 1,
		stack = true,
		close = true,
		description = "Blueprint for SMG",
		client = {
			image = "bpsmg.png",
		}
	},

	["magazine_spring_holder_p"] = {
		label = "Pistol Magazine Spring Holder",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for pistol",
		client = {
			image = "MagazineSpringHolderP.png",
		}
	},

	["trigger_p"] = {
		label = "Pistol Trigger",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for pistol",
		client = {
			image = "TriggerP.png",
		}
	},

	["body_grip_m"] = {
		label = "Micro SMG body grip",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for microsmg",
		client = {
			image = "BodyGripM.png",
		}
	},

	["grip_right_h_p"] = {
		label = "Heavy Pistol RightGrip",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Heavy Pistol",
		client = {
			image = "GrpRightHP.png",
		}
	},

	["hammer"] = {
		label = ".50 Hammer",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for .50 pistol",
		client = {
			image = "Hammer.png",
		}
	},

	["b_p_assault_smg"] = {
		label = "Assault SMG Blueprint",
		weight = 1,
		stack = true,
		close = true,
		description = "Blueprint for Assault SMG",
		client = {
			image = "bpassaultsmg.png",
		}
	},

	["muzzel_s_c"] = {
		label = "Special Carbine Muzzel",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Special Carbine",
		client = {
			image = "MuzzelSC.png",
		}
	},

	["grip_c_r"] = {
		label = "Compact Rifle Grip",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Compact Rifle",
		client = {
			image = "GripCR.png",
		}
	},

	["hammer_h_p"] = {
		label = "Heavy Pistol Hammer",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Heavy Pistol",
		client = {
			image = "HammerHP.png",
		}
	},

	["magazine_s"] = {
		label = "SMG Magazine",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for SMG",
		client = {
			image = "MagazineS.png",
		}
	},

	["barrel_l"] = {
		label = "Shotgun Barrel",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Shotgun",
		client = {
			image = "BarrelL.png",
		}
	},

	["scope_port_a_r"] = {
		label = "Advanced Rifle Scope Port",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Advanced Rifle",
		client = {
			image = "ScopePortAR.png",
		}
	},

	["magazine_h_p"] = {
		label = "Heavy Pistol Magazine",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Heavy Pistol",
		client = {
			image = "MagazineHP.png",
		}
	},

	["bolt_carrier_s"] = {
		label = "SMG Bolt Carrier",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for SMG",
		client = {
			image = "BoltCarrierS.png",
		}
	},

	["main_frame_p"] = {
		label = "Pistol Main Frame",
		weight = 20,
		stack = true,
		close = true,
		description = "A part for pistol",
		client = {
			image = "MainFrameP.png",
		}
	},

	["magazine_spring_holder"] = {
		label = ".50 Magazine Spring Holder",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for .50 pistol",
		client = {
			image = "MagazineSpringHolder.png",
		}
	},

	["rear_sight_a_r"] = {
		label = "Advanced Rifle Rear Sight",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Advanced Rifle",
		client = {
			image = "RearSightAR.png",
		}
	},

	["barrel_s_p"] = {
		label = "SNS Pistol Barrel",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for SNS Pistol",
		client = {
			image = "BarrelSP.png",
		}
	},

	["main_frame_c_r"] = {
		label = "Compact Rifle Main Frame",
		weight = 20,
		stack = true,
		close = true,
		description = "A part for Compact Rifle",
		client = {
			image = "MainFrameCR.png",
		}
	},

	["nozzle_hold_c_r"] = {
		label = "Compact Rifle Nozzle Holder",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Compact Rifle",
		client = {
			image = "NozzleHoldCR.png",
		}
	},

	["b_p_micro_s_m_g"] = {
		label = "Micro SMG Blueprint",
		weight = 1,
		stack = true,
		close = true,
		description = "Blueprint for Micro SMG",
		client = {
			image = "bpmicrosmg.png",
		}
	},

	["spring_coil_k"] = {
		label = "Combat Pistol Spring Coil",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Combat pistol",
		client = {
			image = "SpringCoilCP.png",
		}
	},

	["main_frame_s_p"] = {
		label = "SNS Pistol Main Frame",
		weight = 20,
		stack = true,
		close = true,
		description = "A part for SNS Pistol",
		client = {
			image = "MainFrameSP.png",
		}
	},

	["slide_s_p"] = {
		label = "SNS Pistol Slide",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for SNS Pistol",
		client = {
			image = "SlideSP.png",
		}
	},

	["front_sight_s_c"] = {
		label = "Special Carbine Front Sight",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Special Carbine",
		client = {
			image = "FrontSightSC.png",
		}
	},

	["barrel_s_c"] = {
		label = "Special Carbine Barrel",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Special Carbine",
		client = {
			image = "BarrelSC.png",
		}
	},

	["magazine_b_p"] = {
		label = "Bullpup Rifle Magazine",
		weight = 1,
		stack = true,
		close = true,
		description = "A part for Bullpup Rifle",
		client = {
			image = "MagazineBP.png",
		}
	},

	["front_sight_c"] = {
		label = "Carbine Front Sight",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Carbine Rifle",
		client = {
			image = "FrontSightC.png",
		}
	},

	["trigger"] = {
		label = ".50 Trigger",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for .50 pistol",
		client = {
			image = "Trigger.png",
		}
	},

	["magazine_body_a"] = {
		label = "Assault Rifle Magazine Body",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for assault rifle",
		client = {
			image = "MagazineBodyA.png",
		}
	},

	["receiver_cover_a"] = {
		label = "Assault Rifle Receiver Cover",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for assault rifle",
		client = {
			image = "ReceiverCoverA.png",
		}
	},

	["butt_lock_b_p"] = {
		label = "Bullpup Rifle Butt Lock",
		weight = 1,
		stack = true,
		close = true,
		description = "A part for Bullpup Rifle",
		client = {
			image = "ButtLockBP.png",
		}
	},

	["hand_grip_a_r"] = {
		label = "Advanced Rifle Hand Grip",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Advanced Rifle",
		client = {
			image = "HandGripAR.png",
		}
	},

	["trigger_s_p"] = {
		label = "SNS Pistol Trigger",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for SNS Pistol",
		client = {
			image = "TriggerSP.png",
		}
	},

	["front_port_a_r"] = {
		label = "Advanced Rifle Front Port",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for Advanced Rifle",
		client = {
			image = "FrontPortAR.png",
		}
	},

	["gas_port_a"] = {
		label = "Assault Rifle Gas port",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for assault rifle",
		client = {
			image = "GasPortA.png",
		}
	},

	["front_sight_k"] = {
		label = "Combat Pistol Front Sight",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Combat pistol",
		client = {
			image = "FrontSightCP.png",
		}
	},

	["main_frame_a_r"] = {
		label = "Advanced Rifle Main Frame",
		weight = 20,
		stack = true,
		close = true,
		description = "A part for Advanced Rifle",
		client = {
			image = "MainFrameAR.png",
		}
	},

	["stock_s"] = {
		label = "SMG Stock",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for SMG",
		client = {
			image = "StockS.png",
		}
	},

	["grip_left_h_p"] = {
		label = "Heavy Pistol Left Grip",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Heavy Pistol",
		client = {
			image = "GripLeftHP.png",
		}
	},

	["trigger_a_s"] = {
		label = "Assault SMG Trigger",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Assault SMG",
		client = {
			image = "TriggerAS.png",
		}
	},

	["barrel_a_r"] = {
		label = "Advanced Rifle Barrel",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Advanced Rifle",
		client = {
			image = "BarrelAR.png",
		}
	},

	["rear_sight_l"] = {
		label = "Shotgun Rear Sight",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Shotgun",
		client = {
			image = "RearSightL.png",
		}
	},

	["main_frame_l"] = {
		label = "Shotgun Main Frame",
		weight = 20,
		stack = true,
		close = true,
		description = "A part for Shotgun",
		client = {
			image = "MainFrameL.png",
		}
	},

	["lower_handguard_c"] = {
		label = "Carbine Lower Handguard",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Carbine Rifle",
		client = {
			image = "LowerHandguardC.png",
		}
	},

	["handguard_assembly_s_c"] = {
		label = "Special Carbine Handguard assembly",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Special Carbine",
		client = {
			image = "HandguardAssemblySC.png",
		}
	},

	["front_sight_holder_b_p"] = {
		label = "Bullpup Rifle Front Sight Holder",
		weight = 1,
		stack = true,
		close = true,
		description = "A part for Bullpup Rifle",
		client = {
			image = "FrontSightHolderBP.png",
		}
	},

	["magazine_body_p"] = {
		label = "Pistol Magazine Body",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for pistol",
		client = {
			image = "MagazineBodyP.png",
		}
	},

	["grip_right_p"] = {
		label = "Pistol Right Grip",
		weight = 2,
		stack = true,
		close = true,
		description = "A part for pistol",
		client = {
			image = "GripRightP.png",
		}
	},

	["b_p_s_n_s_pistol"] = {
		label = "SNS Pistol Blueprint",
		weight = 1,
		stack = true,
		close = true,
		description = "Blueprint for SNS Pistol",
		client = {
			image = "bpsnspistol.png",
		}
	},

	["bolt_carrier_a"] = {
		label = "Assault Rifle Bolt carrier",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for assault rifle",
		client = {
			image = "BoltCarrierA.png",
		}
	},

	["nozzle_a_r"] = {
		label = "Advanced Rifle Nozzle",
		weight = 10,
		stack = true,
		close = true,
		description = "A part for Advanced Rifle",
		client = {
			image = "NozzleAR.png",
		}
	},
}