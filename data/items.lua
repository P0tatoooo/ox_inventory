-- Poissons (MyCity_Fishing) : utiliser l'objet, ou « Montrer la prise » dans son menu,
-- joue la pose trophée (le poisson levé devant soi). Rien n'est consommé : `consume = 0`,
-- sinon ox_inventory retire l'objet dès qu'il a un export client. Une table par objet :
-- ox_inventory modifie `client` au chargement.
local function fishShow()
	return { export = 'MyCity_Fishing.showFish' }
end

local function fishButtons()
	return {
		{
			label = 'Montrer la prise',
			action = function(slot)
				exports.MyCity_Fishing:ShowFishSlot(slot)
			end
		},
	}
end

return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 1,
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
		close = false
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
		label = 'Ceinturon',
		weight = 100,
		stack = false,
		close = false
	},

	['tarp'] = {
		label = 'Bâche',
		weight = 1000,
		stack = 1,
		close = false
	},

    ['wallet'] = {
		label = 'Portefeuille',
		weight = 25,
		stack = false,
		close = false
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
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
            }
        },

		['popcorn'] = {
            label = 'Popcorn',
            weight = 100,
            stack = true,
            close = true,
            degrade = 10080,
            client = {
                status = { hunger = 25},
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
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
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
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
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
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
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
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
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
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
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
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
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
            }
        },

		['baconator'] = {
            label = 'The Baconator',
            weight = 200,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
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
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
            }
        },
		['chocoweedicecream'] = {
            label = 'Glace Choco-Weed',
            weight = 150,
            stack = true,
            degrade = 1440,
            client = {
                status = { hunger = 25 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
            }
        },
        ['waffle'] = {
            label = 'Gaufre',
            weight = 100,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 25 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
            }
        },
		['chocolatewaffle'] = {
            label = 'Gaufre au Chocolat',
            weight = 100,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 25 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
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
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
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
					bone = 60309,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
            }
        },

		['baconcheddarfrenchfries'] = {
            label = 'Frites Bacon-Cheddar',
            weight = 200,
            stack = true,
            close = true,
            degrade = 4320,
            client = {
                status = { hunger = 25},
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
					bone = 60309,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
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
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
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
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
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
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
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
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
            }
        },

		['ribs'] = {
            label = 'Ribs Caramélisés',
            weight = 200,
            stack = true,
            close = true,
            degrade = 4320,
            client = {
                status = { hunger = 25},
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
            }
        },

		['caramelizedpork'] = {
            label = 'Porc Caramélisé',
            weight = 200,
            stack = true,
            close = true,
            degrade = 4320,
            client = {
                status = { hunger = 25},
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
            }
        },

		['eggbacon'] = {
            label = 'Oeufs au Bacon',
            weight = 200,
            stack = true,
            close = true,
            degrade = 4320,
            client = {
                status = { hunger = 25},
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
            }
        },
		
		['tiramisu'] = {
            label = 'Tiramisu',
            weight = 200,
            stack = true,
            close = true,
            degrade = 4320,
            client = {
                status = { hunger = 25},
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
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
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
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
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.drinkBeverage'
            }
        },
		['macchiato'] = {
			label = 'Macchiato',
			weight = 250,
			stack = true,
			close = true,
			client = {
				status = { thirst = 25 },
				anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
				prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
				usetime = 2500,
				export = 'MyCity_CoreV2.drinkBeverage'
			}
		},
		['capuccino'] = {
			label = 'Capuccino',
			weight = 250,
			stack = true,
			close = true,
			client = {
				status = { thirst = 25 },
				anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
				prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
				usetime = 2500,
				export = 'MyCity_CoreV2.drinkBeverage'
			}
		},
		['mochacoffee'] = {
			label = 'Café Mocha',
			weight = 250,
			stack = true,
			close = true,
			client = {
				status = { thirst = 25 },
				anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
				prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
				usetime = 2500,
				export = 'MyCity_CoreV2.drinkBeverage'
			}
		},
		['lattecoffee'] = {
			label = 'Café Latté',
			weight = 250,
			stack = true,
			close = true,
			client = {
				status = { thirst = 25 },
				anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
				prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
				usetime = 2500,
				export = 'MyCity_CoreV2.drinkBeverage'
			}
		},

		['burrito'] = {
            label = 'Burrito',
            weight = 150,
            stack = true,
            degrade = 4320,
            client = {
                status = { hunger = 50 },
                anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
                prop = {
                    model = 'prop_cs_burger_01',
					bone = 18905,
                    pos = { x = 0.12, y = 0.028, z = 0.001},
                    rot = { x = 10.0, y = 175.0, z = 0.0}
                },
                usetime = 2500,
				export = 'MyCity_CoreV2.eatFood'
            }
        },
		
    ---------------SOFT DRINKS-----------------------
    ['water'] = {
		label = "Petite Bouteille d'Eau",
		weight = 250,
		stack = true,
		close = true,
        client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `vw_prop_casino_water_bottle_01a`, pos = vec3(0.0, 0.0, -0.08), rot = vec3(0.0, 0.0, 209.11), bone = 60309 },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkBeverage'
		}
	},

    ['cola'] = {
		label = 'eCola (50 cl)',
		weight = 500,
		stack = true,
		close = true,
		client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `mc_line_bottle_cola_small_crate`, pos = vec3(0.0, 0.0, -0.08), rot = vec3(0.0, 0.0, 209.11), bone = 60309 },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkBeverage'
		}
	},

    ['soda'] = {
		label = 'Sprunk (50 cl)',
		weight = 500,
		stack = true,
		client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `mc_line_bottle_sprunk_small_crate`, pos = vec3(0.0, 0.0, -0.08), rot = vec3(0.0, 0.0, 209.11), bone = 60309 },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkBeverage'
		}
	},

    ['icetea'] = {
		label = 'Thé Glacé (50 cl)',
		weight = 500,
		stack = true,
		close = true,
		client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `mc_line_bottle_icetea_small_crate`, pos = vec3(0.0, 0.0, -0.08), rot = vec3(0.0, 0.0, 209.11), bone = 60309 },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkBeverage'
		}
	},

    ['bigwater'] = {
		label = "Bouteille d'Eau",
		weight = 500,
		stack = true,
		close = true,
        client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkBeverage'
		}
	},

    ['bigcola'] = {
		label = 'eCola (75 cl)',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `mc_line_bottle_cola_crate`, pos = vec3(0.0, 0.0, -0.08), rot = vec3(0.0, 0.0, 209.11), bone = 60309 },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkBeverage'
		}
	},

    ['bigsoda'] = {
		label = 'Sprunk (75 cl)',
		weight = 750,
		stack = true,
		client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `mc_line_bottle_sprunk_crate`, pos = vec3(0.0, 0.0, -0.08), rot = vec3(0.0, 0.0, 209.11), bone = 60309 },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkBeverage'
		}
	},

    ['bigicetea'] = {
		label = 'Thé Glacé (75 cl)',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `mc_line_bottle_icetea_crate`, pos = vec3(0.0, 0.0, -0.08), rot = vec3(0.0, 0.0, 209.11), bone = 60309 },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkBeverage'
		}
	},

    ['biggrapejuice'] = {
		label = 'Jus de Raisin (75 cl)',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `mc_line_bottle_grape_juice_crate`, pos = vec3(0.0, 0.0, -0.08), rot = vec3(0.0, 0.0, 209.11), bone = 60309 },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkBeverage'
		}
	},

	['bigapplejuice'] = {
		label = 'Jus de Pomme (75 cl)',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `mc_line_bottle_apple_juice_crate`, pos = vec3(0.0, 0.0, -0.08), rot = vec3(0.0, 0.0, 209.11), bone = 60309 },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkBeverage'
		}
	},

	['bigorangejuice'] = {
		label = 'Jus d\'Orange (75 cl)',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `mc_line_bottle_orange_juice_crate`, pos = vec3(0.0, 0.0, -0.08), rot = vec3(0.0, 0.0, 209.11), bone = 60309 },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkBeverage'
		}
	},

	['energydrink'] = {
		label = 'Boisson Énergisante (50 cl)',
		weight = 500,
		stack = true,
		close = true,
		client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `mc_line_bottle_energy_crate`, pos = vec3(0.0, 0.0, -0.08), rot = vec3(0.0, 0.0, 209.11), bone = 60309 },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkBeverage'
		}
	},

	['grapejuice'] = {
		label = 'Jus de Raisin (50 cl)',
		weight = 500,
		stack = true,
		close = true,
		client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `mc_line_bottle_grape_juice_small_crate`, pos = vec3(0.0, 0.0, -0.08), rot = vec3(0.0, 0.0, 209.11), bone = 60309 },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkBeverage'
		}
	},

	['applejuice'] = {
		label = 'Jus de Pomme (50 cl)',
		weight = 500,
		stack = true,
		close = true,
		client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `mc_line_bottle_apple_juice_small_crate`, pos = vec3(0.0, 0.0, -0.08), rot = vec3(0.0, 0.0, 209.11), bone = 60309 },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkBeverage'
		}
	},

	['orangejuice'] = {
		label = 'Jus d\'Orange (50 cl)',
		weight = 500,
		stack = true,
		close = true,
		client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `mc_line_bottle_orange_juice_small_crate`, pos = vec3(0.0, 0.0, -0.08), rot = vec3(0.0, 0.0, 209.11), bone = 60309 },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkBeverage'
		}
	},

	['limonade'] = {
		label = 'Limonade (50 cl)',
		weight = 500,
		stack = true,
		close = true,
		client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `mc_line_bottle_limonade_crate`, pos = vec3(0.0, 0.0, -0.08), rot = vec3(0.0, 0.0, 209.11), bone = 60309 },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkBeverage'
		}
	},

    ['tonic'] = {
		label = 'Tonic (50 cl)',
		weight = 500,
		stack = true,
		close = true,
        client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `mc_line_bottle_tonic_crate`, pos = vec3(0.0, 0.0, -0.08), rot = vec3(0.0, 0.0, 209.11), bone = 60309 },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkBeverage'
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
			export = 'MyCity_CoreV2.drinkAlcohol'
		}
	},

	['cappuccino'] = {
		label = 'Cappuccino',
		weight = 140,
		stack = true,
		close = true,
        client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol'
		}
	},

	['sanpeagrumes'] = {
		label = "San Pe' Agrumes",
		weight = 140,
		stack = true,
		close = true,
        client = {
			status = { thirst = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol'
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
			export = 'MyCity_CoreV2.drinkAlcohol',
		}
	},

	['hotchocolate'] = {
		label = 'Chocolat Chaud',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
		}
	},

	['applefreshcocktail'] = {
		label = 'Apple Fresh',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
		}
	},

	['bloodylarycocktail'] = {
		label = 'Bloody Lary',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
		}
	},

	['uffcocktail'] = {
		label = 'Cocktail UFF',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 50 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
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
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
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
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
		}
	},

	['beer'] = {
		label = 'Bière Blonde',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 20
		}
	},

	['champagne'] = {
		label = 'Champagne',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 20
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
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
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
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
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
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 25
		}
	},

	['guinness'] = {
		label = 'Bière Brune',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 20
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
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
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
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
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
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
		}
	},

	['whitewine'] = {
		label = 'Vin Blanc',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 20
		}
	},

	['redwine'] = {
		label = 'Vin Rouge',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 20
		}
	},



	['bigchampagne'] = {
		label = 'Champagne Étoile d\'Or',
		weight = 1500,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 80
		}
	},

	['vodka'] = {
		label = 'Vodka',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
		}
	},

    ['whisky'] = {
		label = 'Whisky',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
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
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
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
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
		}
	},

	['chartreuse'] = {
		label = 'Chartreuse',
		weight = 750,
		stack = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
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
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
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
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
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
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 90
		}
	},

	['asskickercocktail'] = {
		label = 'Ass Kicker',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
		}
	},
	['vpcocktail'] = {
		label = 'Le VP',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 60
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
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 60
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
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
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
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
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
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 60
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
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 80
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
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 60
		}
	},

	['greenpixiecocktail'] = {
		label = 'Green Pixie',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
		}
	},

	['rosantococktail'] = {
		label = 'BlackJack',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
		}
	},

	['irishcoffeecocktail'] = {
		label = 'Irish Coffee',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
		}
	},

	['zombiecocktail'] = {
		label = 'Zombie',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 60
		}
	},

	['slayercocktail'] = {
		label = 'Divin Slayer',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 60
		}
	},

	['dynamitecocktail'] = {
		label = 'Dynamite',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 90
		}
	},

	['cyclecocktail'] = {
		label = 'Cycle',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 90
		}
	},

	['starxcocktail'] = {
		label = 'Star-X',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 15 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			export = 'MyCity_CoreV2.drinkAlcohol',
			alcohol = 30
		}
	},

    -------------------------------------------------------

    ['welcomeflyer'] = {
		label = 'Bienvenue à LS',
		weight = 10,
		stack = true,
        close = true,
        client = {
			export = 'MyCity_Tab.showFlyer'
		},
	},
    ['flyer'] = {
		label = 'Propectus',
		weight = 0.01,
		stack = true,
        close = true,
        client = {
			export = 'MyCity_Tab.showFlyer'
		},
	},
    ['paper'] = {
		label = 'Papier',
		weight = 10,
		stack = true,
	},

	['cups'] = {
		label = 'Gobelets Beer Pong',
		weight = 250,
		close = true,
		consume = 0,
		server = {
			export = 'rcore_beerpong.cups',
		},
	},

	["liartable"] = {
		label = "Liar's Table",
		weight = 1000,
		stack = true,
		close = true
	},

	['basketball_hoop'] = {
		label = 'Panier de Basketball',
		weight = 250,
		close = true,
		consume = 0,
		client = {},
		server = {
			export = 'rcore_basketball.basketball_hoop',
		},
	},

    ['radio'] = {
		label = 'Radio',
		weight = 220,
        stack = false,
		allowArmed = true
	},

    ['screwdriver'] = {
		label = 'Tournevis Rouge',
		weight = 260,
	},

    ['screwdriver2'] = {
		label = 'Tournevis Bleu',
		weight = 260,
	},

	['lockpick'] = {
		label = 'Kit de Crochetage',
		weight = 260,
		consume = 0
	},

    ['lockpick2'] = {
		label = 'Tournevis Multi-Fonctions',
		weight = 260,
		consume = 0
	},

	['money'] = {
		label = 'Argent',
		weight = 0.01
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

	['creamtube'] = {
		label = 'Tube de Crème',
		weight = 100,
		stack = true,
		close = true,
	},

	['newspaper'] = {
		label = 'Journal',
		weight = 100,
		stack = true,
	},

	['apple'] = {
		label = 'Pomme',
		weight = 200,
		stack = true,
		close = true,
	},

	['pineapple'] = {
		label = 'Ananas',
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

	['breathtest'] = {
		label = "Ethylotest",
		weight = 125,
		stack = true,
        consume = 0
	},

	['salivarytest'] = {
		label = "Test Salivaire",
		weight = 125,
		stack = true,
	},

	['bloodtestkit'] = {
		label = "Kit d'Analyse de Sang",
		weight = 125,
		stack = true,
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
		weight = 20,
		stack = true,
		close = true,
	},

	['mmcigarette'] = {
		label = 'Clope Meuh-Meuh',
		weight = 20,
		stack = true,
		close = true,
	},

	['uffcandies'] = {
		label = 'Bonbons UFF',
		weight = 20,
		stack = true,
		close = true,
	},

	['mmgift'] = {
		label = 'Cadeau Meuh-Meuh',
		weight = 200,
		stack = true,
		close = true,
        server = {
            export = "MyCity_CoreV2.UseMMGift"
        }
	},

	['ink'] = {
		label = 'Encre',
		weight = 10,
		stack = true,
		close = false,
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

	['logboat'] = {
		label = 'Bateau Bûche',
		weight = 20000,
		stack = false,
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

	['hairtie'] = {
		label = 'Chouchou',
		weight = 20,
		stack = true,
		close = true,
		consume = 1,
		client = {
			export = 'MyCity_Appearance.toggleHair'
		},
	},

	['tablet'] = {
		label = 'Tablette',
		weight = 200,
		stack = true,
		close = true,
		consume = 0,
		client = {
			export = 'MyCity_Tab.UseTabletItem'
		}
	},

	['hanger'] = {
		label = 'Cintre',
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

	['trainbomb'] = {
		label = 'Bombe pour Train',
		weight = 1000,
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

	['meat'] = {
		label = 'Viande',
		weight = 250,
		stack = true,
		close = true,
	},

	['humanblood'] = {
		label = 'Sang Humain',
		weight = 250,
		stack = true,
		close = true,
	},

	['humanfat'] = {
		label = 'Graisse Humaine',
		weight = 250,
		stack = true,
		close = true,
	},

	['humanbone'] = {
		label = 'Os Humain',
		weight = 250,
		stack = true,
		close = true,
	},

	['humanorgan'] = {
		label = 'Organe Humain',
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

	['fentanyl'] = {
		label = 'Fentanyl',
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
        server = {
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

	['halloweenbasket'] = {
		label = 'Panier à Bonbons',
		weight = 100,
		stack = false,
		close = true,
        client = {
            export = "MyCity_CoreV2.UseHalloweenBasket"
        }
	},

	['packaged_chicken'] = {
		label = 'Barquette de Poulet',
		weight = 250,
		stack = true,
		close = true,
	},

	['painkiller'] = {
		label = 'Revigorate',
		weight = 100,
		stack = true,
		close = true,
		degrade = 10080,
	},

	['bloodinjector'] = {
		label = 'Auto-Injecteur de Sang',
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

	-- Produit intermédiaire du vignoble (MyCity_Vineyard), jusqu'à la ligne
	-- d'embouteillage : contenu et note dans les metadata, un tonnelet = un
	-- lot de 6 bouteilles, porté à deux mains
	['keg'] = {
		label = 'Tonnelet',
		weight = 9000,
		stack = false,
		close = true,
	},

	-- Ce que donne la ligne d'embouteillage du vignoble : une caisse de 6
	-- bouteilles (metadata : bouteille, nombre, contenu, qualité), portée à deux mains
	['bottle_crate'] = {
		label = 'Caisse de bouteilles',
		weight = 9000,
		stack = false,
		close = true,
		-- l'utiliser l'ouvre : ses bouteilles à la place (MyCity_Vineyard
		-- client/crates.lua) ; c'est le serveur qui retire la caisse
		consume = 0,
		client = { export = 'MyCity_Vineyard.openCrate' },
		buttons = {
			{
				label = 'Ouvrir la caisse',
				action = function(slot)
					exports.MyCity_Vineyard:OpenCrateSlot(slot)
				end
			},
		},
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
		weight = 1,
		stack = true,
		close = true,
	},

	['casinochips'] = {
		label = 'Jeton Casino',
		weight = 1,
		stack = true,
		close = true,
	},

	['watch'] = {
		label = 'Montre',
		weight = 100,
		stack = true,
		close = true,
	},

	['weedseed'] = {
		label = 'Graine de Cannabis',
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
		label = 'Fauteuil Roulant',
		weight = 1000,
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

	['packaged_pork'] = {
		label = 'Barquette de Porc',
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

	['sugarcane'] = {
		label = 'Canne à sucre',
		weight = 10,
		stack = true,
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

	['dagger'] = {
		label = 'Dague de Rituel',
		weight = 100,
		stack = false,
		close = false,
	},

	['officedesk'] = {
		label = 'Bureau Préfait',
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
            export = "MyCity_Police.cuffFromItem"
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
		stack = true
	},

    ["atmempty"] = {
		label = "ATM Vide",
		weight = 10000,
		stack = true
	},

	["atmconsole"] = {
		label = "Console ATM",
		weight = 5000,
		stack = true
	},

	["atmframe"] = {
		label = "Cadre ATM",
		weight = 5000,
		stack = true
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
	['snow_tires'] = {
        label = 'Pneus Chaines à Neige',
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

    -- MyCity: the clothes as items (MyCity_Appearance server/clothingitems.lua). One item each, the piece in its
    -- metadata (label, slot, kind / id, drawable, texture, model, imageurl = its MyCity_Appearance picture); worn
    -- in the slots around the character (the `clothing:<citizenid>` inventory). Using one puts it on.
    ['clothing'] = {
		label = 'Vêtement',
		weight = 200,
		stack = false,
		close = false,
		description = 'Un vêtement : glissez-le sur sa case autour du personnage pour le porter.',
		server = {
			export = 'MyCity_Appearance.useClothingItem'
		}
	},

    -- A whole outfit in one item (label, model, components, props: only the pieces it covers; job for a uniform).
    -- Worn in the Tenue slot, its pieces go over the empty slots and push the worn ones into the inventory.
    ['outfit'] = {
		label = 'Tenue',
		weight = 1000,
		stack = false,
		close = false,
		description = 'Une tenue complète : glissez-la sur la case Tenue pour la porter.',
		server = {
			export = 'MyCity_Appearance.useClothingItem'
		}
	},

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
        weight = 0.01,
        stack = true,
        close = false
    },
    ["picture"] = {
        label = "Image Polaroid",
        weight = 0.01,
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
		weight = 0.01,
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
            export = "MyCity_Police.cuffFromItem"
        }
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
		weight = 0.01,
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
		weight = 0.01,
		stack = false,
        close = true,
	},
    ["spikestrip"] = {
        label = "Herse",
        weight = 750,
        client = {
            export = "MyCity_Police.deploySpikestrip"
        }
    },
    -- Utilisé : sorti / rangé (MyCity_Police, client/station.lua). Rangé de
    -- lui-même quand il quitte l'inventaire.
    ["ballistic_shield"] = {
        label = "Bouclier balistique",
        weight = 6000,
        stack = false,
        close = true,
        description = "Se tient à la main gauche, pistolet dans l'autre",
        client = {
            export = "MyCity_Police.useShield"
        }
    },
    ["ziptie"] = {
        label = "Serflex",
        weight = 30,
        stack = true,
        client = {
            export = "MyCity_Police.cuffFromItem"
        }
    },

    ['metal'] = {
		label = 'Métal',
		weight = 300,
		stack = true,
		close = true,
	},

	['metal2'] = {
		label = 'Métal de Qualité',
		weight = 30,
		stack = true,
		close = true,
	},

    ['steel'] = {
		label = 'Acier',
		weight = 1000,
		stack = true,
		close = true,
	},

	['steel2'] = {
		label = "Acier de Qualité",
		weight = 1000,
		stack = true,
		close = true,
	},

    ["envelope"] = {
		label = "Enveloppe Cadeau",
		weight = 0.01,
		stack = true,
		close = false,
	},

	['id_card'] = {
		label = 'Carte d\'Identité',
		weight = 0.01,
		stack = false,
        close = true,
	},

	["driver_license"] = {
		label = "Permis de Conduire",
		weight = 0.01,
		stack = false,
		close = true,
	},

	['boat_license'] = {
		label = 'Permis Bateau',
		weight = 0.01,
		stack = false,
        close = true,
	},

    ["cc_license"] = {
		label = "Permis de Port d'Armes",
		weight = 0.01,
		stack = false,
		close = true,
	},

	["cc_license_pro"] = {
		label = "Permis de Port d'Armes Professionnel",
		weight = 0.01,
		stack = false,
		close = true,
	},

	["fishing_license"] = {
		label = "Permis de Pêche",
		weight = 0.01,
		stack = false,
		close = true,
	},

	["uff_card"] = {
		label = "Carte de l'UFF",
		weight = 0.01,
		stack = false,
		close = true,
	},

	["press_card"] = {
		label = "Carte de Presse",
		weight = 0.01,
		stack = false,
		close = true,
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
	["storagescanner"] = {
        label = 'Décodeur Electronique',
        weight = 1000,
        stack = false
    },
	['rccar'] = {
		label = 'Voiture Télécommandée',
		weight = 2000,
		stack = false,
	},

    ["notebook"] = {
        label = "Cahier",
        weight = 200,
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
		weight = 500,
		stack = true
	},
	['djstand'] = {
		label = 'Table de Mixage',
		weight = 500,
		stack = true
	},
	['bigspeakers'] = {
		label = 'Grosses Enceintes',
		weight = 500,
		stack = true
	},
	['ropebarrier'] = {
		label = 'Barrière de Corde',
		weight = 500,
		stack = true
	},
	['redcarpet'] = {
		label = 'Tapis Rouge',
		weight = 500,
		stack = true
	},
	['admincrate'] = {
		label = 'Caisse Admin',
		weight = 500,
		stack = true
	},
	['trashbag'] = {
		label = 'Sac Poubelle',
		weight = 100,
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
		weight = 500,
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

    ["pickaxe"] = {
		label = "Pioche",
		weight = 1000,
		stack = true,
		close = false,
        consume = 0,
	},

	["jackhammer"] = {
		label = "Marteau Piqueur",
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
		weight = 500,
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
		weight = 500,
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
		label = 'Barrière Police',
		weight = 1000,
		stack = true,
		close = true,
	},

	['heavypolicebarrier'] = {
		label = 'Barrière Lourde Police',
		weight = 1000,
		stack = true,
		close = true,
	},

	['heavypolicebarrier2'] = {
		label = 'Barrière Lourde Etendue Police',
		weight = 1000,
		stack = true,
		close = true,
	},

    ['taxiticket'] = {
		label = 'Ticket Taxi',
		weight = 0.01,
		stack = true,
	},

    ['restaurationticket'] = {
		label = 'Ticket Restaurant',
		weight = 0.01,
		stack = true,
	},

    ['healticket'] = {
		label = 'Ticket Soins',
		weight = 0.01,
		stack = true,
	},

    ['reparationticket'] = {
		label = 'Ticket Réparation',
		weight = 0.01,
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
	['cornseed'] = {
		label = 'Graine de Maïs',
		weight = 10,
		stack = true,
	},
	['corn'] = {
		label = 'Maïs',
		weight = 140,
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
		label = 'Farine',
		weight = 100,
		stack = true,
		close = true,
	},

	['bread'] = {
		label = 'Pain',
		weight = 180,
		stack = true,
		close = true,
	},

    -- Un chariot ou une palette rangés dans un camion (coffre) ou un conteneur
    -- (stockage) : clic droit sur l'objet dans cet inventaire pour le sortir
    -- derrière (MyCity_CoreV2, Client/Jobs/Transistep.lua). `otherInventory = true` :
    -- un bouton de l'autre inventaire seulement (MyCity), absent du sien.
    ["forklift"] = {
		label = "Chariot Elevateur",
		weight = 200000,
		stack = false,
		close = false,
		buttons = {
			{
				label = 'Sortir le chariot élévateur',
				otherInventory = true,
				action = function(slot, inventory)
					TriggerEvent('MyCity_CoreV2:Transistep:TakeOutStored', inventory, slot)
				end
			},
		},
	},

    ["pallet"] = {
		label = "Palette",
		weight = 100000,
		stack = false,
		close = false,
		buttons = {
			{
				label = 'Sortir la palette',
				otherInventory = true,
				action = function(slot, inventory)
					TriggerEvent('MyCity_CoreV2:Transistep:TakeOutStored', inventory, slot)
				end
			},
		},
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

	["christmashood"] = {
		label = "Hotte de Père Noël",
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

    ['tijkeys'] = {
		label = 'Clés Hangar',
		weight = 10,
		stack = true
	},

	['grandcycletalisman'] = {
		label = 'Talisman du Grand Cycle',
		weight = 0.01,
		stack = true
	},

    -- Illegal

	["smg_barrel"] = {
		label = "Canon d'Arme Automatique",
		description = "Pièce de rechange : toutes les mitraillettes et armes d'assaut",
		weight = 1000,
		stack = true,
		close = true,
	},

	["attach_body"] = {
		label = "Corps d'Arme Automatique",
		description = "Pièce de rechange : toutes les mitraillettes et armes d'assaut",
		weight = 1000,
		stack = true,
		close = true,
	},

	["attach_guard"] = {
		label = "Garde-main d'Arme Automatique",
		description = "Pièce de rechange : toutes les mitraillettes et armes d'assaut",
		weight = 1000,
		stack = true,
		close = true,
	},

    ["attach_grip"] = {
		label = "Poignée d'Arme Automatique",
		description = "Pièce de rechange : toutes les mitraillettes et armes d'assaut",
		weight = 1000,
		stack = true,
		close = true,
	},

    ["shotgun_barrel"] = {
		label = "Canon de Fusil à Pompe",
		description = "Pièce de rechange : tous les fusils à pompe",
		weight = 1000,
		stack = true,
		close = true,
	},

	["shotgun_body"] = {
		label = "Corps de Fusil à Pompe",
		description = "Pièce de rechange : tous les fusils à pompe",
		weight = 1000,
		stack = true,
		close = true,
	},

	["shotgun_guard"] = {
		label = "Garde de Fusil à Pompe",
		description = "Pièce de rechange : tous les fusils à pompe",
		weight = 1000,
		stack = true,
		close = true,
	},

    ["shotgun_grip"] = {
		label = "Poignée de Fusil à Pompe",
		description = "Pièce de rechange : tous les fusils à pompe",
		weight = 1000,
		stack = true,
		close = true,
	},

	["pistol_body"] = {
		label = "Corps de Pistolet",
		description = "Pièce de rechange : tous les pistolets",
		weight = 1000,
		stack = true,
		close = true,
	},

	["spring"] = {
		label = "Ressort",
		description = "Pièce de rechange : ressorts, détente, chien et chargeurs de toutes les armes",
		weight = 250,
		stack = true,
		close = true,
	},

	["pistol_grip"] = {
		label = "Poignée de Pistolet",
		description = "Pièce de rechange : tous les pistolets",
		weight = 250,
		stack = true,
		close = true,
	},

	["pistol_barrel"] = {
		label = "Canon de Pistolet",
		description = "Pièce de rechange : tous les pistolets",
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
		label = "Plan Fusil à Pompe Canon Scié",
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
		label = "Plan Fusil à Pompe Double Canon",
		weight = 50,
		stack = false,
		close = true,
	},
    ["bp_pistol"] = {
		label = "Plan Pistolet Beretta",
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
		label = "Plan Fusil Bullpup",
		weight = 50,
		stack = false,
		close = true,
	},

	["bp_snspistol"] = {
		label = "Plan Pistolet SNS",
		weight = 50,
		stack = false,
		close = true,
	},

    ----------------------------
    ["thermite"] = {
		label = "Explosif Thermite",
		weight = 1000,
		stack = true,
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
        consume = 0
	},
	['grinder'] = {
		label = 'Meuleuse',
		weight = 300,
        consume = 0
	},
    ['prepaidphone'] = {
		label = 'Téléphone Jetable',
		weight = 300,
		degrade = 120,
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
	['pistol'] = {
		label = 'Pistolet Beretta Bloqué',
		weight = 1000,
		stack = true,
		close = false,
	},
	['snspistol'] = {
		label = 'Pistolet SNS Bloqué',
		weight = 1000,
		stack = true,
		close = false,
	},
	['ceramicpistol'] = {
		label = 'Pistolet Céramique Bloqué',
		weight = 1000,
		stack = true,
		close = false,
	},
	['combatpistol'] = {
		label = 'Glock Bloqué',
		weight = 1000,
		stack = true,
		close = false,
	},
	['heavypistol'] = {
		label = 'Pistolet Lourd Bloqué',
		weight = 1000,
		stack = true,
		close = false,
	},
	['pumpshotgun'] = {
		label = 'Fusil à Pompe Bloqué',
		weight = 1000,
		stack = true,
		close = false,
	},
	['smg'] = {
		label = 'MP5 Bloquée',
		weight = 1000,
		stack = true,
		close = false,
	},
	['carbinerifle'] = {
		label = 'M4 Bloquée',
		weight = 1000,
		stack = true,
		close = false,
	},

	['fish_bluefin_tuna'] = {
		label = 'Thon rouge',
		weight = 3225,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_alligator_gar'] = {
		label = 'Poisson-alligator',
		weight = 1625,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_amour_blanc'] = {
		label = 'Amour blanc',
		weight = 1070,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_anchois'] = {
		label = 'Anchois',
		weight = 510,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_anguille'] = {
		label = 'Anguille',
		weight = 1565,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_arapaima'] = {
		label = 'Arapaïma',
		weight = 2225,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_bar_commun'] = {
		label = 'Bar commun',
		weight = 1045,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_bar_raye'] = {
		label = 'Bar rayé',
		weight = 1060,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_baracuda'] = {
		label = 'Barracuda',
		weight = 2090,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_barbeau'] = {
		label = 'Barbeau fluviatile',
		weight = 535,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_baudroie'] = {
		label = 'Baudroie abyssale',
		weight = 1545,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_black_bass'] = {
		label = 'Black-bass',
		weight = 1035,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_bonite'] = {
		label = 'Bonite à dos rayé',
		weight = 1545,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_brochet'] = {
		label = 'Brochet',
		weight = 1055,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_calico_bass'] = {
		label = 'Bar calico',
		weight = 1031,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_calmar_geant'] = {
		label = 'Calmar géant',
		weight = 3300,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_carpe'] = {
		label = 'Carpe commune',
		weight = 545,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_carpe_koi'] = {
		label = 'Carpe koï',
		weight = 1540,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_coelacanthe'] = {
		label = 'Cœlacanthe',
		weight = 3100,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_congre'] = {
		label = 'Congre',
		weight = 1625,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_corbina'] = {
		label = 'Corbina de Californie',
		weight = 1035,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_crab'] = {
		label = 'Crabe',
		weight = 515,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_crevette'] = {
		label = 'Crevette',
		weight = 509,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_daurade'] = {
		label = 'Daurade royale',
		weight = 1030,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_ecrevisse'] = {
		label = 'Écrevisse',
		weight = 508,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_espadon'] = {
		label = 'Espadon',
		weight = 2200,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_esturgeon'] = {
		label = 'Esturgeon blanc',
		weight = 2160,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_esturgeon_beluga'] = {
		label = 'Esturgeon Béluga',
		weight = 3300,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_gardon'] = {
		label = 'Gardon',
		weight = 514,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_germon'] = {
		label = 'Germon',
		weight = 2070,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_grandgousier'] = {
		label = 'Grandgousier',
		weight = 3050,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_halibut'] = {
		label = 'Flétan de Californie',
		weight = 1050,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_hippocampe'] = {
		label = 'Hippocampe',
		weight = 1015,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_homard'] = {
		label = 'Homard',
		weight = 1027,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_horn_shark'] = {
		label = 'Requin dormeur',
		weight = 3100,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_jacksmelt'] = {
		label = 'Capucette',
		weight = 517,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_lingcod'] = {
		label = 'Morue-lingue',
		weight = 1565,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_mackeral'] = {
		label = 'Maquereau',
		weight = 525,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_mahi_mahi'] = {
		label = 'Coryphène',
		weight = 1580,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_maigre'] = {
		label = 'Maigre',
		weight = 2100,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_marlin'] = {
		label = 'Marlin bleu',
		weight = 2225,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_merou'] = {
		label = 'Mérou géant',
		weight = 3200,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_octopus'] = {
		label = 'Poulpe',
		weight = 2060,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_omble'] = {
		label = 'Omble chevalier',
		weight = 1035,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_opah'] = {
		label = 'Opah',
		weight = 2090,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_orphie'] = {
		label = 'Orphie',
		weight = 540,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_pacific_halibut'] = {
		label = 'Flétan du Pacifique',
		weight = 3180,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_perche_soleil'] = {
		label = 'Crapet-soleil',
		weight = 512,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_poisson_chat'] = {
		label = 'Poisson-chat',
		weight = 525,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_poisson_lanterne'] = {
		label = 'Poisson-lanterne',
		weight = 1512,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_poisson_lune'] = {
		label = 'Poisson-lune',
		weight = 2165,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_poisson_sabre'] = {
		label = 'Poisson-sabre',
		weight = 1600,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_poisson_scie'] = {
		label = 'Poisson-scie',
		weight = 3350,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_poisson_volant'] = {
		label = 'Poisson volant',
		weight = 1022,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_pufferfish'] = {
		label = 'Poisson-globe',
		weight = 1527,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_raie_aigle'] = {
		label = 'Raie aigle léopard',
		weight = 2150,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_raie_manta'] = {
		label = 'Raie manta',
		weight = 3350,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_raie_pastenague'] = {
		label = 'Raie pastenague',
		weight = 1560,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_regalec'] = {
		label = 'Régalec',
		weight = 3400,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_requin_blanc'] = {
		label = 'Grand requin blanc',
		weight = 3300,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_requin_bleu'] = {
		label = 'Requin bleu',
		weight = 2190,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_requin_leopard'] = {
		label = 'Requin léopard',
		weight = 1590,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_requin_mako'] = {
		label = 'Requin mako',
		weight = 2200,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_requin_marteau'] = {
		label = 'Requin-marteau',
		weight = 3200,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_requin_renard'] = {
		label = 'Requin-renard',
		weight = 2275,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_requin_tigre'] = {
		label = 'Requin-tigre',
		weight = 3275,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_rockfish'] = {
		label = 'Sébaste',
		weight = 1027,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_saint_pierre'] = {
		label = 'Saint-Pierre',
		weight = 2055,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_salmon'] = {
		label = 'Saumon',
		weight = 1045,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_sandre'] = {
		label = 'Sandre',
		weight = 1042,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_sardine'] = {
		label = 'Sardine',
		weight = 511,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_sheephead'] = {
		label = 'Sheephead',
		weight = 1545,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_silure'] = {
		label = 'Silure',
		weight = 1610,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_spatulaire'] = {
		label = 'Spatulaire',
		weight = 1610,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_surfperch'] = {
		label = 'Perche des vagues',
		weight = 520,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_taimen'] = {
		label = 'Taïmen',
		weight = 2100,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_tanche'] = {
		label = 'Tanche',
		weight = 1032,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_thazard'] = {
		label = 'Thazard',
		weight = 1590,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_thon_albacore'] = {
		label = 'Thon albacore',
		weight = 2120,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_thon_listao'] = {
		label = 'Thon listao',
		weight = 1550,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_tortue_caouanne'] = {
		label = 'Tortue caouanne',
		weight = 2060,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_tortue_luth'] = {
		label = 'Tortue luth',
		weight = 3110,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_tortue_verte'] = {
		label = 'Tortue verte',
		weight = 1575,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_totoaba'] = {
		label = 'Totoaba',
		weight = 2100,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_trout'] = {
		label = 'Truite arc-en-ciel',
		weight = 527,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_truite_doree'] = {
		label = 'Truite dorée',
		weight = 1525,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_voilier'] = {
		label = 'Poisson-voilier',
		weight = 2170,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_white_seabass'] = {
		label = 'Bar blanc',
		weight = 1580,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_yellowperch'] = {
		label = 'Perche jaune',
		weight = 516,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fish_yellowtail'] = {
		label = 'Sériole',
		weight = 1575,
		stack = true,
		close = true,
		consume = 0,
		client = fishShow(),
		buttons = fishButtons(),
	},
	['fishing_rod'] = {
		label = 'Canne en bambou',
		weight = 1000,
		stack = false,
		close = true,
		durability = true,
		description = 'Canne de palier 1 -- niveau de peche 1 requis',
	},
	['fishing_rod_2'] = {
		label = 'Canne composite',
		weight = 1000,
		stack = false,
		close = true,
		durability = true,
		description = 'Canne de palier 2 -- niveau de peche 16 requis',
	},
	['fishing_rod_3'] = {
		label = 'Canne carbone',
		weight = 1000,
		stack = false,
		close = true,
		durability = true,
		description = 'Canne de palier 3 -- niveau de peche 32 requis',
	},
	['fishing_rod_4'] = {
		label = 'Canne renforcée',
		weight = 1000,
		stack = false,
		close = true,
		durability = true,
		description = 'Canne de palier 4 -- niveau de peche 50 requis',
	},
	['fishing_rod_5'] = {
		label = 'Canne haute mer',
		weight = 1000,
		stack = false,
		close = true,
		durability = true,
		description = 'Canne de palier 5 -- niveau de peche 72 requis',
	},
	['fishing_rod_6'] = {
		label = 'Canne abyssale',
		weight = 1000,
		stack = false,
		close = true,
		durability = true,
		description = 'Canne de palier 6 -- niveau de peche 90 requis',
	},
	['bait_crickets'] = {
		label = 'Grillons',
		weight = 10,
		stack = true,
		close = true,
		description = 'Appat de peche -- niveau 26 requis.',
	},
	['bait_grasshopper'] = {
		label = 'Sauterelles',
		weight = 10,
		stack = true,
		close = true,
		description = 'Appat de peche -- niveau 44 requis.',
	},
	['bait_minnows'] = {
		label = 'Vairons',
		weight = 10,
		stack = true,
		close = true,
		description = 'Appat de peche -- niveau 64 requis.',
	},
	['bait_seaweed'] = {
		label = 'Algues',
		weight = 10,
		stack = true,
		close = true,
		description = 'Appat de peche -- niveau 8 requis.',
	},
	['bait_squid'] = {
		label = 'Calmar',
		weight = 10,
		stack = true,
		close = true,
		description = 'Appat de peche -- niveau 82 requis.',
	},
	['bait_worm'] = {
		label = 'Ver de terre',
		weight = 10,
		stack = true,
		close = true,
		description = 'Appat de peche -- niveau 1 requis.',
	},
	['fishnet_large'] = {
		label = 'Grand filet de pêche',
		weight = 11000,
		stack = false,
		close = true,
		durability = true,
		description = 'Filet de peche -- niveau 40 requis, 30 poissons par releve, 12 releves.',
	},
	['fishnet_medium'] = {
		label = 'Filet de pêche moyen',
		weight = 7000,
		stack = false,
		close = true,
		durability = true,
		description = 'Filet de peche -- niveau 22 requis, 20 poissons par releve, 10 releves.',
	},
	['fishnet_small'] = {
		label = 'Petit filet de pêche',
		weight = 4000,
		stack = false,
		close = true,
		durability = true,
		description = 'Filet de peche -- niveau 5 requis, 15 poissons par releve, 8 releves.',
	},
}