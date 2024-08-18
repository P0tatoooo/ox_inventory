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
		weight = 115,
		stack = true,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = 'prop_rolled_sock_02', pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
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

	['garbage'] = {
		label = 'Poubelle',
	},

	['paperbag'] = {
		label = 'Sac en Papier',
		weight = 1,
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
            label = 'purple cake',
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

        ['cupcake'] = {
            label = 'Cupcake',
            weight = 100,
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
            label = 'chips',
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
            label = 'donut',
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
            label = 'lasagnes',
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
            label = 'bucket tenders',
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
            label = 'frites',
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
		label = 'thé',
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
		label = 'absinthe',
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
		label = 'baileys',
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
		label = 'champagne',
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
		label = 'cointreau',
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
		label = 'gin',
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
		label = 'guinness',
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
		label = 'rhum',
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
		label = 'saké',
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
		label = 'tequila',
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
		label = 'vin blanc',
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
		label = 'vin rouge',
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
		label = 'vodka',
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
		label = 'whisky',
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
		label = 'cuba libre',
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
		label = 'jägerbomb',
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
		label = 'margarita',
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
		label = 'tequila sunrise',
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
		label = 'tequila binouse',
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
		label = 'cosmopolitan',
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
		label = 'carte d\'accès',
		weight = 10,
		stack = true,
		close = true,
	},

	['advancedrifle'] = {
		label = 'fusil avancé désarmé',
		weight = 3000,
		stack = true,
		close = true,
	},

	['amorsagearme'] = {
		label = 'kit d\'amorsage d\'arme',
		weight = 500,
		stack = true,
		close = true,

	},

	['amorsagearmeap'] = {
		label = 'kit d\'amorsage d\'arme ap',
		weight = 500,
		stack = true,
		close = true,

	},

	['amorsagearmear'] = {
		label = 'kit d\'amorsage d\'arme ar',
		weight = 500,
		stack = true,
		close = true,

	},

	['amorsagearmeex'] = {
		label = 'kit d\'amorsage d\'arme ex',
		weight = 500,
		stack = true,
		close = true,

	},

	['amorsagearmefp'] = {
		label = 'kit d\'amorsage d\'arme fp',
		weight = 500,
		stack = true,
		close = true,

	},

	['amorsagearmemm'] = {
		label = 'kit d\'amorsage d\'arme mm',
		weight = 500,
		stack = true,
		close = true,

	},

	['animalfoodbag'] = {
		label = 'nourriture pour animaux',
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
		label = 'antivertigineux',
		weight = 100,
		stack = true,
		close = true,

	},

	['apple'] = {
		label = 'pomme',
		weight = 200,
		stack = true,
		close = true,
	},

	['assaultrifle'] = {
		label = 'fusil d\'assault désarmé',
		weight = 3000,
		stack = true,
		close = true,
	},

	['malt'] = {
		label = 'orge',
		weight = 100,
		stack = true,
		close = true,

	},

	['binoculars'] = {
		label = 'jumelles',
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
		weight = 1250,
		stack = true,
	},

	['bluefin_tuna'] = {
		label = 'thon rouge',
		weight = 200,
		stack = true,
		close = true,
	},

	['bracelet'] = {
		label = 'bracelet',
		weight = 100,
		stack = true,
		close = true,
	},

	['bulletproof'] = {
		label = 'gilet pare-balles',
		weight = 4000,
		stack = false,
		close = true,
        consume = 0,
        server = {
			export = 'MyCity_CoreV2.bulletproof'
		}
	},

	['bullpuprifle'] = {
		label = 'fusil bullpup désarmé',
		weight = 2000,
		stack = true,
		close = true,

	},

	['bullpupshotgun'] = {
		label = 'fusil à pompe bullpup désarmé',
		weight = 3000,
		stack = true,
		close = true,
	},

	['candies'] = {
		label = 'bonbons',
		weight = 200,
		stack = true,
		close = true,
	},

	['canesyrup'] = {
		label = 'sirop de canne',
		weight = 200,
		stack = true,
		close = true,

	},

	['cartridge'] = {
		label = 'douille',
		weight = 1,
		stack = true,
		close = true,

	},

	['casinocoupon1'] = {
		label = 'coupon casino lot 1',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinocoupon2'] = {
		label = 'coupon casino lot 2',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinocoupon3'] = {
		label = 'coupon casino lot 3',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinocoupon4'] = {
		label = 'coupon casino lot 4',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinocoupon5'] = {
		label = 'coupon casino lot 5',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinocoupon6'] = {
		label = 'coupon casino lot 6',
		weight = 10,
		stack = true,
		close = true,
	},

	['charcoal'] = {
		label = 'charbon de bois',
		weight = 10,
		stack = true,
		close = true,
	},

	['cheese'] = {
		label = 'fromage',
		weight = 300,
		stack = true,
		close = true,
	},

	['chemicals'] = {
		label = 'produit chimique',
		weight = 300,
		stack = true,
		close = true,
	},

	['cigar'] = {
		label = 'cigare',
		weight = 200,
		stack = true,
		close = true,

	},

	['cigarettementhol'] = {
		label = 'cigarette menthol',
		weight = 200,
		stack = true,
		close = true,
	},

	['coca_leaf'] = {
		label = 'feuille de coca',
		weight = 200,
		stack = true,
		close = true,

	},

	['coffeemachine'] = {
		label = 'machine à café',
		weight = 4000,
		stack = true,
		close = true,

	},

	['coke'] = {
		label = 'cocaine',
		weight = 200,
		stack = true,
		close = true,
	},

	['combatpdw'] = {
		label = 'adp de combat désarmé',
		weight = 3000,
		stack = true,
		close = true,

	},

	['combatpistol'] = {
		label = 'pistolet de combat désarmé',
		weight = 2500,
		stack = true,
		close = true,

	},

	['compactrifle'] = {
		label = 'ak-u désarmé',
		weight = 3000,
		stack = true,
		close = true,
	},

	['crack'] = {
		label = 'pochon de crack',
		weight = 200,
		stack = true,
		close = true,
	},

	['crackcristal'] = {
		label = 'cristaux de crack',
		weight = 100,
		stack = true,
		close = true,
	},

	['cream'] = {
		label = 'crème fraiche',
		weight = 100,
		stack = true,
		close = true,
	},

	['dbshotgun'] = {
		label = 'fusil à double canon désarmé',
		weight = 3000,
		stack = true,
		close = true,
	},

	['digitaltablet'] = {
		label = 'tablette numérique',
		weight = 200,
		stack = true,
		close = true,
	},

	['drill'] = {
		label = 'perceuse',
		weight = 1500,
		stack = true,
		close = true,
        consume = 0
	},

	['egg'] = {
		label = 'oeuf',
		weight = 100,
		stack = true,
		close = true,
	},

	['ephedra'] = {
		label = 'Ephedra',
		weight = 1,
		stack = true,
		close = true,

	},

	['fakeplate'] = {
		label = 'fausse plaque',
		weight = 500,
		stack = true,
		close = true,

	},

	['fishing_rod'] = {
		label = 'canne à pêche',
		weight = 500,
		stack = true,
		close = true,

	},

	['gamingconsole'] = {
		label = 'console de jeux',
		weight = 1000,
		stack = true,
		close = true,
	},

	['glass'] = {
		label = 'verre',
		weight = 100,
		stack = true,
		close = true,
	},

    ['bottlecap'] = {
		label = 'capsule',
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
		label = 'balle de golf',
		weight = 100,
		stack = true,
		close = true,

	},

	['golf_green'] = {
		label = 'balle de golf (orange)',
		weight = 100,
		stack = true,
		close = true,

	},

	['golf_pink'] = {
		label = 'balle de golf (pink)',
		weight = 100,
		stack = true,
		close = true,

	},

	['golf_yellow'] = {
		label = 'balle de golf (yellow)',
		weight = 100,
		stack = true,
		close = true,

	},

	['gunpowder'] = {
		label = 'poudre à canon',
		weight = 1,
		stack = true,
		close = true,

	},

	['halibut'] = {
		label = 'flétan',
		weight = 100,
		stack = true,
		close = true,

	},

	['heroin'] = {
		label = 'héroine',
		weight = 100,
		stack = true,
		close = true,

	},

	['hood'] = {
		label = 'cagoule',
		weight = 100,
		stack = true,
		close = true,

	},

	['kevlar'] = {
		label = 'kevlar',
		weight = 300,
		stack = true,
		close = true,

	},

	['laptop'] = {
		label = 'ordinateur portable',
		weight = 300,
		stack = true,
		close = true,

	},

	['lime'] = {
		label = 'citron vert',
		weight = 100,
		stack = true,
		close = true,

	},

	['luckystrike'] = {
		label = 'lucky strike',
		weight = 100,
		stack = true,
		close = true,

	},

	['machinepistol'] = {
		label = 'tec-9 désarmé',
		weight = 2000,
		stack = true,
		close = true,

	},

	['cigarette'] = {
		label = 'cigarette',
		weight = 100,
		stack = true,
		close = true,

	},

	['mceventbadge'] = {
		label = 'badge mcevent',
		weight = 10,
		stack = true,
		close = true,

	},

	['mceventcoupon'] = {
		label = 'ticket mcevent',
		weight = 10,
		stack = true,
		close = true,
	},

	['meat'] = {
		label = 'viande',
		weight = 250,
		stack = true,
		close = true,

	},

	['meth'] = {
		label = 'meth',
		weight = 100,
		stack = true,
		close = true,
	},

	['microsmg'] = {
		label = 'micro smg désarmé',
		weight = 2500,
		stack = true,
		close = true,
	},

	['microwave'] = {
		label = 'micro-ondes',
		weight = 100,
		stack = true,
		close = true,

	},

	['minismg'] = {
		label = 'mini smg désarmé',
		weight = 2500,
		stack = true,
		close = true,
	},

	['necklace'] = {
		label = 'collier',
		weight = 100,
		stack = true,
		close = true,

	},

	['nylon'] = {
		label = 'nylon',
		weight = 100,
		stack = true,
		close = true,
	},

	['opium'] = {
		label = 'opium',
		weight = 100,
		stack = true,
		close = true,

	},

	['orange'] = {
		label = 'orange',
		weight = 100,
		stack = true,
		close = true,

	},

	['ore'] = {
		label = 'minerai',
		weight = 150,
		stack = true,
		close = true,
	},

	['divinggear'] = {
		label = 'equipement de plongée',
		weight = 2000,
		stack = true,
		close = true,
        consume = 0,
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
		label = 'barquette de poulet',
		weight = 250,
		stack = true,
		close = true,

	},

    ['packaged_fish'] = {
		label = 'barquette de poisson',
		weight = 250,
		stack = true,
		close = true,
	},

	['painkiller'] = {
		label = 'anti-douleur',
		weight = 100,
		stack = true,
		close = true,
	},

	['painting'] = {
		label = 'tableau',
		weight = 100,
		stack = true,
		close = true,
	},

	['petrol'] = {
		label = 'pétrole',
		weight = 1000,
		stack = true,
		close = true,
	},

    ['gas'] = {
		label = 'essence',
		weight = 1000,
		stack = true,
		close = true,
	},

	['pistol'] = {
		label = 'pistolet désarmé',
		weight = 2000,
		stack = true,
		close = true,

	},

	['pistol50'] = {
		label = 'pistolet calibre .50 désarmé',
		weight = 2000,
		stack = true,
		close = true,
	},

	['pumpshotgun'] = {
		label = 'fusil à pompe désarmé',
		weight = 3000,
		stack = true,
		close = true,
	},

	['purpleweed'] = {
		label = 'purple weed',
		weight = 1,
		stack = true,
		close = true,
	},

	['whitegrapes'] = {
		label = 'raisin blanc',
		weight = 150,
		stack = true,
		close = true,

	},

	['redgrapes'] = {
		label = 'raisin rouge',
		weight = 150,
		stack = true,
		close = true,

	},

	['reinforced_fishing_rod'] = {
		label = 'canne à pêche renforcée',
		weight = 500,
		stack = true,
		close = true,

	},

	['revolver'] = {
		label = 'revolver désarmé',
		weight = 1500,
		stack = true,
		close = true,
	},

	['rice'] = {
		label = 'riz',
		weight = 100,
		stack = true,
		close = true,

	},

	['ring'] = {
		label = 'bague',
		weight = 100,
		stack = true,
		close = true,
	},

	['salmon'] = {
		label = 'saumon',
		weight = 150,
		stack = true,
		close = true,
	},

	['sand'] = {
		label = 'sable',
		weight = 100,
		stack = true,
		close = true,
	},

	['sawnoffshotgun'] = {
		label = 'fusil à canon scié désarmé',
		weight = 3000,
		stack = true,
		close = true,
	},

	['shark_fin'] = {
		label = 'aileron de requin',
		weight = 800,
		stack = true,
		close = true,

	},

	['sim'] = {
		label = 'sim',
		weight = 1,
		stack = false,
		close = true
	},

    ['chicken'] = {
		label = 'poulet',
		weight = 1000,
		stack = false,
	},

	['smg'] = {
		label = 'smg désarmé',
		weight = 3000,
		stack = true,
		close = true,
	},

	['spray'] = {
		label = 'bombe de peinture',
		weight = 500,
		stack = true,
		close = true,
	},

	['stingray'] = {
		label = 'raie',
		weight = 500,
		stack = true,
		close = true,
	},

	['sugar'] = {
		label = 'sucre',
		weight = 100,
		stack = true,
		close = true,

	},

	['sulfur'] = {
		label = 'soufre',
		weight = 1,
		stack = true,
		close = true,
	},

	['telescope'] = {
		label = 'télescope',
		weight = 100,
		stack = true,
		close = true,
	},

	['television'] = {
		label = 'télévision',
		weight = 1000,
		stack = true,
		close = true,
	},

	['token'] = {
		label = 'jeton',
		weight = 1,
		stack = true,
		close = true,
	},

	['trout'] = {
		label = 'truite',
		weight = 200,
		stack = true,
		close = true,
	},

	['watch'] = {
		label = 'montre',
		weight = 100,
		stack = true,
		close = true,
	},

    ['weed_leaf'] = {
		label = 'Feuille de Cannabis',
		weight = 500,
		stack = true,
		close = true,

	},

	['weed'] = {
		label = 'Pochon de Weed',
		weight = 500,
		stack = true,
		close = true,

	},

	['wheelchair'] = {
		label = 'fauteuil roulant',
		weight = 1000,
		stack = true,
		close = true,
	},

	['white_seabass'] = {
		label = 'bar blanc',
		weight = 200,
		stack = true,
		close = true,

	},

	['agave'] = {
		label = 'agave',
		weight = 10,
		stack = true,
		close = true,

	},

	['packaged_meat'] = {
		label = 'barquette de viande',
		weight = 200,
		stack = true,
		close = true,

	},

    ['packaged_fish'] = {
		label = 'barquette de poisson',
		weight = 200,
		stack = true,
		close = true,

	},

	['sprayremover'] = {
		label = 'nettoyant anti-graffitis',
		weight = 750,
		stack = true,
		close = true,
	},

	['packaged_salmon'] = {
		label = 'barquette de saumon',
		weight = 200,
		stack = true,
		close = true,

	},

	['sugarcane'] = {
		label = 'canne à sucre',
		weight = 10,
		stack = true,
		close = true,

	},

	['illegalcrate'] = {
		label = 'caisse de contrebande',
		weight = 2000,
		stack = false,
		close = true,

	},

	['doubleaction'] = {
		label = 'revolver double action désarmé',
		weight = 2500,
		stack = true,
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

    ['shishatobacco'] = {
		label = 'tabac à chicha',
		weight = 750,
		stack = true,
		close = true,

	},

    ['shishatobaccoxl'] = {
		label = 'tabac à chicha XL',
		weight = 750,
		stack = true,
		close = true,
	},

	["nitrous"] = {
		label = "Nitrous",
		weight = 1000,
		stack = false,
		close = true,
	},

	["newsmic"] = {
		label = "News Microphone",
		weight = 100,
		stack = false,
		close = true,
	},

	["empty_evidence_bag"] = {
		label = "Sac de Preuves Vide",
		weight = 0,
		stack = true,
		close = false,
		description = "Used a lot to keep DNA from blood, bullet shells and more",
		client = {
			image = "evidence.png",
		}
	},

	["newsbmic"] = {
		label = "Boom Microphone",
		weight = 100,
		stack = false,
		close = true,
		description = "A Useable BoomMic",
		client = {
			image = "newsbmic.png",
		}
	},

	["newscam"] = {
		label = "News Camera",
		weight = 1000,
		stack = false,
		close = true,
		description = "A camera for the news",
		client = {
			image = "newscam.png",
		}
	},

	["firstaidkit"] = {
		label = "Kit Premier Secours",
		weight = 350,
		stack = true,
	},

	["diving_fill"] = {
		label = "Diving Tube",
		weight = 3000,
		stack = false,
		close = true,
		client = {
			image = "diving_tube.png",
		}
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

	["tunerlaptop"] = {
		label = "Tunerchip",
		weight = 2000,
		stack = false,
		close = true,
		description = "With this tunerchip you can get your car on steroids... If you know what you're doing",
		client = {
			image = "tunerchip.png",
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
		label = 'béquilles',
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
		label = 'skateboard',
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
    ["shield"] = {
        label = "Police shield",
        weight = 8000,
        stack = false,
        consume = 0,
        client = {
            export = "qb-policejob.useShield",
            add = function(total)
                if total > 0 then
                        pcall(function() return exports["qb-policejob"]:hasShield(true) end)
                    end
                end,
            remove = function(total)
                if total < 1 then
                    pcall(function() return exports["qb-policejob"]:hasShield(false) end)
                end
            end
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
		weight = 1000,
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
		label = 'Carte d\'identité',
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
		weight = 1000,
		stack = true,
		close = false,
	},

	["carbon"] = {
		label = "Carbone",
		weight = 1000,
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
		stack = false,
		close = false,
        consume = 0,
	},

	["axe"] = {
		label = "Hache",
		weight = 1000,
		stack = false,
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
		label = 'pomme de terre',
		weight = 100,
		stack = true,
	},

	['milk'] = {
		label = 'lait',
		weight = 120,
		stack = true,
		close = true,
	},

	['tomato'] = {
		label = 'tomate',
		weight = 90,
		stack = true,
		close = true,
	},

    ['wheatseed'] = {
		label = 'Graine de Blé',
		weight = 110,
		stack = true,
	},
    ['maltseed'] = {
		label = 'Graine de Malt',
		weight = 120,
		stack = true,
	},
    ['riceseed'] = {
		label = 'Riz Germé',
		weight = 140,
		stack = true,
	},
    ['potatoseed'] = {
		label = 'Pomme de Terre Germée',
		weight = 140,
		stack = true,
	},
    ['sojaseed'] = {
		label = 'Graine de Soja',
		weight = 140,
		stack = true,
	},
    ['tomatoseed'] = {
		label = 'Graine de Tomates',
		weight = 140,
		stack = true,
	},
    ['saladseed'] = {
		label = 'Pousse de Salade',
		weight = 140,
		stack = true,
	},
    ['sugarcaneseed'] = {
		label = 'Graine de Canne à Sucre',
		weight = 140,
		stack = true,
	},
    ['agaveseed'] = {
		label = 'Graine d\'Agave',
		weight = 140,
		stack = true,
	},
    ['coffeeseed'] = {
		label = 'Graine de Café',
		weight = 140,
		stack = true,
	},
    ['teaseed'] = {
		label = 'Graine de Thé',
		weight = 140,
		stack = true,
	},
    ['coffeebean'] = {
		label = 'grain de café',
		weight = 10,
		stack = true,
		close = true,
	},
    ['tealeaf'] = {
		label = 'feuille de thé',
		weight = 10,
		stack = true,
		close = true,
	},

	['wheat'] = {
		label = 'blé',
		weight = 140,
		stack = true,
	},

	['salad'] = {
		label = 'salade',
		weight = 140,
		stack = true,
	},

	['soja'] = {
		label = 'soja',
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
		label = "Canon de mitraillette",
		weight = 1000,
		stack = true,
		close = true,
	},

	["attach_body"] = {
		label = "Corps de mitraillette",
		weight = 1000,
		stack = true,
		close = true,
	},

	["attach_guard"] = {
		label = "Garde de mitraillette",
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
		label = "Corps de pistolet",
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
		label = "Cannon de pistolet",
		weight = 1000,
		stack = true,
		close = true,
	},
	["bp_combatpdw"] = {
		label = "Plan ADP de combat",
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
}