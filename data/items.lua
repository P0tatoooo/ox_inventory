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
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = 'prop_rolled_sock_02', pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 80 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['soda'] = {
		label = 'Soda',
		weight = 350,
		stack = true,
		client = {
			status = { thirst = 60 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
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

	['mastercard'] = {
		label = 'Mastercard',
		stack = false,
		weight = 10,
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

    -----------------------------------

    ['radio'] = {
		label = 'Radio',
		weight = 220,
        stack = false,
		allowArmed = true
	},

	['black_money'] = {
		label = 'Argent Sale',
        weight = 0.1,
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['lockpick'] = {
		label = 'Tournevis Multi-Fonctions',
		weight = 160,
		consume = 0,
        stack = false
	},

	['money'] = {
		label = 'Argent',
        weight = 0.1
	},

	['water'] = {
		label = 'Bouteille d\'eau',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 80 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['absinthe'] = {
		label = 'absinthe',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 20 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
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
		weight = 100,
		stack = true,
		close = true,
	},

	['antibiotic'] = {
		label = 'antibiotique',
		weight = 100,
		stack = true,
		close = true,

	},

	['antiinflammatory'] = {
		label = 'anti-inflammatoires',
		weight = 100,
		stack = true,
		close = true,

	},

	['apple'] = {
		label = 'pomme',
		weight = 100,
		stack = true,
		close = true,

	},

	['argent_sale'] = {
		label = 'argent sale',
		weight = 1,
		stack = true,
		close = true,
	},

	['assaultrifle'] = {
		label = 'fusil d\'assault désarmé',
		weight = 3000,
		stack = true,
		close = true,
	},

	['baileys'] = {
		label = 'baileys',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 20 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['malt'] = {
		label = 'orge',
		weight = 100,
		stack = true,
		close = true,

	},

	['beer'] = {
		label = 'chope de bière',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 20 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['binoculars'] = {
		label = 'jumelles',
		weight = 800,
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
		stack = false,
	},

	['bluefin_tuna'] = {
		label = 'thon rouge',
		weight = 100,
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
		weight = 2000,
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
		weight = 100,
		stack = true,
		close = true,
	},

	['canesyrup'] = {
		label = 'sirop de canne',
		weight = 100,
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

	['champagne'] = {
		label = 'champagne',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 20 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['charcoal'] = {
		label = 'charbon de bois',
		weight = 10,
		stack = true,
		close = true,

	},


	['cheese'] = {
		label = 'fromage',
		weight = 100,
		stack = true,
		close = true,
	},

	['chemicals'] = {
		label = 'produit chimique',
		weight = 100,
		stack = true,
		close = true,
	},

	['chips'] = {
		label = 'chips',
		weight = 300,
		stack = true,
		close = true,
		degrade = 4320
	},

	['cigar'] = {
		label = 'cigare',
		weight = 100,
		stack = true,
		close = true,

	},

	['cigarettementhol'] = {
		label = 'cigarette menthol',
		weight = 100,
		stack = true,
		close = true,
	},

	['cola'] = {
		label = 'cola',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320,
		client = {
			status = { thirst = 60 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['coca_leaf'] = {
		label = 'feuille de coca',
		weight = 100,
		stack = true,
		close = true,

	},

	['coffee'] = {
		label = 'café',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['coffeemachine'] = {
		label = 'machine à café',
		weight = 3000,
		stack = true,
		close = true,

	},

	['cointreau'] = {
		label = 'cointreau',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 20 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['coke'] = {
		label = 'cocaine',
		weight = 100,
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
		weight = 1500,
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
		weight = 1,
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

	['cupcake'] = {
		label = 'cupcake',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['dbshotgun'] = {
		label = 'fusil à double canon désarmé',
		weight = 3000,
		stack = true,
		close = true,
	},

	['digitaltablet'] = {
		label = 'tablette numérique',
		weight = 100,
		stack = true,
		close = true,
	},

	['donut'] = {
		label = 'donut',
		weight = 500,
		stack = true,
		close = true,
		degrade = 4320,
        client = {
            status = { hunger = 80},
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},

	['drill'] = {
		label = 'perceuse',
		weight = 1000,
		stack = true,
		close = true,

	},

	['egg'] = {
		label = 'oeuf',
		weight = 100,
		stack = true,
		close = true,

	},

	['energydrink'] = {
		label = 'boisson energisante',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 60 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['ephedrine'] = {
		label = 'Éphédrine',
		weight = 1,
		stack = true,
		close = true,

	},

	['fakeplate'] = {
		label = 'fausse plaque',
		weight = 200,
		stack = true,
		close = true,

	},

	['fishing_rod'] = {
		label = 'canne à pêche',
		weight = 500,
		stack = true,
		close = true,

	},

	['frenchfries'] = {
		label = 'frites',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320
	},

	['gamingconsole'] = {
		label = 'console de jeux',
		weight = 1,
		stack = true,
		close = true,
	},

	['gin'] = {
		label = 'gin',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 20 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['glass'] = {
		label = 'verre',
		weight = 100,
		stack = true,
		close = true,
	},

	['golf'] = {
		label = 'balle de golf',
		weight = 50,
		stack = true,
		close = true,

	},

	['golf_green'] = {
		label = 'balle de golf (orange)',
		weight = 50,
		stack = true,
		close = true,

	},

	['golf_pink'] = {
		label = 'balle de golf (pink)',
		weight = 50,
		stack = true,
		close = true,

	},

	['golf_yellow'] = {
		label = 'balle de golf (yellow)',
		weight = 50,
		stack = true,
		close = true,

	},

	['guinness'] = {
		label = 'guinness',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 20 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
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
		weight = 2,
		stack = true,
		close = true,

	},

	['icetea'] = {
		label = 'ice tea',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 60 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['grapejuice'] = {
		label = 'jus de raisin',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320,
		client = {
			status = { thirst = 60 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['kevlar'] = {
		label = 'kevlar',
		weight = 100,
		stack = true,
		close = true,

	},

	['laptop'] = {
		label = 'ordinateur portable',
		weight = 100,
		stack = true,
		close = true,

	},

	['lime'] = {
		label = 'citron vert',
		weight = 100,
		stack = true,
		close = true,

	},

	['limonade'] = {
		label = 'limonade',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 60 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['luckystrike'] = {
		label = 'lucky strike',
		weight = 100,
		stack = true,
		close = true,

	},

	['machinepistol'] = {
		label = 'tec-9 désarmé',
		weight = 1500,
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
		weight = 10,
		stack = true,
		close = true,
	},

	['microsmg'] = {
		label = 'micro smg désarmé',
		weight = 1500,
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
		weight = 1500,
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
		weight = 10,
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
		weight = 100,
		stack = true,
		close = true,

	},

	['divinggear'] = {
		label = 'equipement de plongée',
		weight = 1250,
		stack = true,
		close = true,
	},

	['packaged_chicken'] = {
		label = 'barquette de poulet',
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
		weight = 1500,
		stack = true,
		close = true,

	},

	['pistol50'] = {
		label = 'pistolet calibre .50 désarmé',
		weight = 1500,
		stack = true,
		close = true,
	},

	['pumpshotgun'] = {
		label = 'fusil à pompe désarmé',
		weight = 3000,
		stack = true,
		close = true,

	},

	['purplecake'] = {
		label = 'purple cake',
		weight = 100,
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

	['rhum'] = {
		label = 'rhum',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 20 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
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

	['sake'] = {
		label = 'saké',
		weight = 750,
		stack = true,
		close = true,
	},

	['salmon'] = {
		label = 'saumon',
		weight = 100,
		stack = true,
		close = true,
	},

	['sand'] = {
		label = 'sable',
		weight = 100,
		stack = true,
		close = true,
	},

	['salami'] = {
		label = 'saucisson',
		weight = 500,
		stack = true,
		close = true,
		degrade = 4320,
        client = {
            status = { hunger = 20 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},

	['sawnoffshotgun'] = {
		label = 'fusil à canon scié désarmé',
		weight = 3000,
		stack = true,
		close = true,
	},

	['shark_fin'] = {
		label = 'aileron de requin',
		weight = 500,
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
		weight = 100,
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

	['tea'] = {
		label = 'thé',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320
	},

	['telescope'] = {
		label = 'télescope',
		weight = 100,
		stack = true,
		close = true,
	},

	['television'] = {
		label = 'télévision',
		weight = 100,
		stack = true,
		close = true,
	},

	['tequila'] = {
		label = 'tequila',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 20 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['token'] = {
		label = 'jeton',
		weight = 0,
		stack = true,
		close = true,
	},

	['tonic'] = {
		label = 'soda tonic',
		weight = 100,
		stack = true,
		close = true,
	},

	['trout'] = {
		label = 'truite',
		weight = 100,
		stack = true,
		close = true,
	},

	['whitewine'] = {
		label = 'vin blanc',
		weight = 120,
		stack = true,
		close = true,
		client = {
			status = { thirst = 20 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['redwine'] = {
		label = 'vin rouge',
		weight = 120,
		stack = true,
		close = true,
		client = {
			status = { thirst = 20 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['vodka'] = {
		label = 'vodka',
		weight = 180,
		stack = true,
		close = true,
		client = {
			status = { thirst = 20 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['watch'] = {
		label = 'montre',
		weight = 100,
		stack = true,
		close = true,
	},

	['weed'] = {
		label = 'Marijuana',
		weight = 500,
		stack = true,
		close = true,

	},

	['wheelchair'] = {
		label = 'fauteuil roulant',
		weight = 100,
		stack = true,
		close = true,
	},

	['whisky'] = {
		label = 'whisky',
		weight = 750,
		stack = true,
		close = true,
		client = {
			status = { thirst = 20 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['white_seabass'] = {
		label = 'bar blanc',
		weight = 100,
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

	['churros'] = {
		label = 'churros',
		weight = 250,
		stack = true,
		close = true,
		degrade = 4320
	},

	['sugarcane'] = {
		label = 'canne à sucre',
		weight = 10,
		stack = true,
		close = true,

	},

	['illegalcrate'] = {
		label = 'caisse de contrebande',
		weight = 1000,
		stack = false,
		close = true,

	},

	['doubleaction'] = {
		label = 'revolver double action désarmé',
		weight = 1500,
		stack = true,
		close = true,
	},

    ['enforcer'] = {
		label = 'Bélier',
		weight = 16000,
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

	["diving_gear"] = {
		label = "Diving Gear",
		weight = 30000,
		stack = false,
		close = true,
		description = "An oxygen tank and a rebreather",
		client = {
			image = "diving_gear.png",
		}
	},

	["wine"] = {
		label = "Wine",
		weight = 300,
		stack = true,
		close = false,
		description = "Some good wine to drink on a fine evening",
		client = {
			image = "wine.png",
		}
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

	["visa"] = {
		label = "Visa Card",
		weight = 0,
		stack = false,
		close = false,
		description = "Visa can be used via ATM",
		client = {
			image = "visacard.png",
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
		weight = 100,
		stack = false,
		close = true,
		description = "A camera for the news",
		client = {
			image = "newscam.png",
		}
	},

	["firstaidkit"] = {
		label = "Kit Premier Secours",
		weight = 250,
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

	["grape"] = {
		label = "Grape",
		weight = 100,
		stack = true,
		close = false,
		description = "Mmmmh yummie, grapes",
		client = {
			image = "grape.png",
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

    ['mechanic_tools'] = {
        label = 'Mechanic Tools',
        weight = 1000,
        stack = false,
    },
    ['toolbox'] = {
            label = 'Tool Box',
            weight = 1000,
            stack = false,
    },
    ['turbo_lvl_1'] = {
            label = 'GARET Turbo',
            weight = 1000,
            stack = false,
    },
    ['nos'] = {
            label = 'Nitro',
            weight = 1000,
            stack = false,
    },
    ['stock_transmission'] = {
            label = 'Stock Transmission',
            weight = 1000,
            stack = false,
    },
    ['race_transmission'] = {
            label = 'Race Transmission RWD',
            weight = 1000,
            stack = false,
    },
    ['race_transmission_4wd'] = {
            label = 'Race Transmission 4WD',
            weight = 1000,
            stack = false,
    },
    ['race_transmission_fwd'] = {
            label = 'Race Transmission FWD',
            weight = 1000,
            stack = false,
    },
    ['stock_suspension'] = {
            label = 'Race Suspension',
            weight = 1000,
            stack = false,
    },
    ['race_suspension'] = {
            label = 'Race Suspension',
            weight = 1000,
            stack = false,
    },
    ['michelin_tires'] = {
            label = 'Michelin Tires',
            weight = 1000,
            stack = false,
    },
    ['race_brakes'] = {
            label = 'Race Breaks',
            weight = 1000,
            stack = false,
    },
    ['stock_oil'] = {
            label = 'Stock Oil',
            weight = 1000,
            stack = false,
    },
    ['shell_oil'] = {
            label = 'Shell Oil',
            weight = 1000,
            stack = false,
    },
    ['stock_engine'] = {
            label = 'Stock Engine',
            weight = 1000,
            stack = false,
    },
    ['v8engine'] = {
            label = 'V8 Engine',
            weight = 1000,
            stack = false,
    },
    ['2jzengine'] = {
            label = '2JZ Engine',
            weight = 1000,
            stack = false,
    },
    ['lambov10'] = {
            label = 'lambov10',
            weight = 1000,
            stack = false,
    },
    ['musv8'] = {
            label = 'musv8',
            weight = 1000,
            stack = false,
    },
    ['shonen'] = {
            label = 'shonen',
            weight = 1000,
            stack = false,
    },
    ['rb26det'] = {
            label = 'rb26det',
            weight = 1000,
            stack = false,
    },
    ['rotary7'] = {
            label = 'rotary7',
            weight = 1000,
            stack = false,
    },
    ['m297zonda'] = {
            label = 'm297zonda',
            weight = 1000,
            stack = false,
    },
    ['m158huayra'] = {
            label = 'm158huayra',
            weight = 1000,
            stack = false,
    },
    ['k20a'] = {
            label = 'k20a',
            weight = 1000,
            stack = false,
    },
    ['gt3flat6'] = {
            label = 'gt3flat6',
            weight = 1000,
            stack = false,
    },
    ['predatorv8'] = {
            label = 'predatorv8',
            weight = 1000,
            stack = false,
    },
    ['p60b40'] = {
            label = 'p60b40',
            weight = 1000,
            stack = false,
    },
    ['stock_tires'] = {
            label = 'Stock Tires',
            weight = 1000,
            stack = false,
    },
    ['michelin_tires'] = {
            label = 'Michelin Tires',
            weight = 1000,
            stack = false,
    },
    ['stock_brakes'] = {
            label = 'Stock Brakes',
            weight = 1000,
            stack = false,
    },
    ['race_brakes'] = {
            label = 'Race Brakes',
            weight = 1000,
            stack = false,
    },
    ['stock_sparkplugs'] = {
            label = 'Stock Sparkplugs',
            weight = 1000,
            stack = false,
    },
    ['ngk_sparkplugs'] = {
            label = 'NGK Sparkplugs',
            weight = 1000,
            stack = false,
    },
    -----------------------------------------------------------

    ["camera"] = {
        label = "Appareil Photo",
        weight = 4000,
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
		weight = 300,
		stack = false,
		close = true
	},
	["note"] = {
		label = "Note",
		weight = 350,
		stack = false,
		close = true
	},
	["neonkit"] = {
		label = "Kit Néons",
		weight = 2350,
		stack = false,
		close = true
	},
    ["rope"] = {
		label = "Corde",
		weight = 100,
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
		stack = false,
		close = true,
	},
    ['speaker'] = {
		label = 'Enceinte',
		weight = 2000,
		stack = false,
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
    ["spikestrip"] = {
        label = "Herse",
        weight = 500,
        client = {
            export = "qb-policejob.deploySpikestrip"
        }
    },
    ["ziptie"] = {
        label = "Serflex",
        weight = 10,
        stack = true,
        client = {
            export = "qb-policejob.cuffFromItem"
        }
    },
	['id_card'] = {
		label = 'Carte d\'identité',
		weight = 100,
		stack = false,
        close = true,
	},

	["driver_license"] = {
		label = "Permis de Conduire",
		weight = 100,
		stack = false,
		close = true,
	},

    ["cc_license"] = {
		label = "Permis de Port d'Armes",
		weight = 100,
		stack = false,
		close = true,
	},
	["lawyer_pass"] = {
		label = "Carte d\'Avocat",
		weight = 100,
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
        weight = 500,
        stack = false,
    },

    ["stancerkit"] = {
        label = "Stancer Kit",
        weight = 2000,
        stack = false,
    },

    ["car_door"] = {
        label = "Portière",
        weight = 4000,
        stack = false,
    },

    ["car_radiator"] = {
        label = "Radiateur",
        weight = 4000,
        stack = false,
    },

    ["car_trunk"] = {
        label = "Coffre",
        weight = 4000,
        stack = false,
    },

    ["car_wheel"] = {
        label = "Roue",
        weight = 4000,
        stack = false,
    },

    ["car_hood"] = {
        label = "Capot",
        weight = 4000,
        stack = false,
    },

    ['tape'] = {
		label = 'Ruban adhésif',
		weight = 100,
		stack = true
	},

    ["mixingboard"] = {
        label = "Table de Mixage",
        weight = 4000,
        stack = false,
    },

    ['export_box'] = {
		label = 'Carton Export',
		weight = 1000,
		stack = true
	},

    ['boombox'] = {
		label = 'Enceinte',
		weight = 1000,
		stack = true
	},
    ["poster"] = {
        label = "Poster",
        weight = 360,
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

	["goldingot"] = {
		label = "Gold Ingot",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "goldingot.png",
		}
	},

	["stone"] = {
		label = "Stone",
		weight = 2000,
		stack = true,
		close = false,
		description = "Stone woo",
		client = {
			image = "stone.png",
		}
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
        client = {
            export = "MyCity_CoreV2.placeProp"
        }
	},

    ['barrier'] = {
		label = 'Barrière',
		weight = 1000,
		stack = true,
		close = true,
        client = {
            export = "MyCity_CoreV2.placeProp"
        }
	},

    ['gazebotent'] = {
		label = 'Tente Pliante',
		weight = 1000,
		stack = true,
		close = true,
        client = {
            export = "MyCity_CoreV2.placeProp"
        }
	},

    ['worklight'] = {
		label = 'Lampe de Chantier',
		weight = 1000,
		stack = true,
		close = true,
        client = {
            export = "MyCity_CoreV2.placeProp"
        }
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

	['diabolapizza'] = {
		label = 'Pizza Diabola',
		weight = 1000,
		stack = true,
		degrade = 4320,
        client = {
            status = { hunger = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},
	['bolognesepizza'] = {
		label = 'Pizza Bolognaise',
		weight = 1000,
		stack = true,
		degrade = 4320,
        client = {
            status = { hunger = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},
	['lasagna'] = {
		label = 'lasagnes',
		weight = 1000,
		stack = true,
		degrade = 4320,
        client = {
            status = { hunger = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},
	['carbonarapasta'] = {
		label = 'Pâtes Carbonara',
		weight = 1000,
		stack = true,
		degrade = 4320,
        client = {
            status = { hunger = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},

	['heartstopper'] = {
		label = 'HeartStopper',
		weight = 1000,
		stack = true,
		degrade = 4320,
        client = {
            status = { hunger = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},
	['bleeder'] = {
		label = 'Bleeder',
		weight = 1000,
		stack = true,
		degrade = 4320,
        client = {
            status = { hunger = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},
	['meatfree'] = {
		label = 'MeatFree',
		weight = 1000,
		stack = true,
		degrade = 4320,
        client = {
            status = { hunger = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},
	['moneyshot'] = {
		label = 'MoneyShot',
		weight = 1000,
		stack = true,
		degrade = 4320,
        client = {
            status = { hunger = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
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
            status = { hunger = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},
    ['tendersbucket'] = {
		label = 'bucket tenders',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320,
        client = {
            status = { hunger = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},
	['chickenskewer'] = {
		label = 'Brochette de Poulet',
		weight = 1000,
		stack = true,
		degrade = 4320,
        client = {
            status = { hunger = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},
	['sunday'] = {
		label = 'Sunday',
		weight = 1000,
		stack = true,
		degrade = 4320,
        client = {
            status = { hunger = 20 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},

	['americanchickensandwich'] = {
		label = 'Américain Poulet',
		weight = 1000,
		stack = true,
		degrade = 4320,
        client = {
            status = { hunger = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},
	['americantunasandwich'] = {
		label = 'Américain Thon',
		weight = 1000,
		stack = true,
		degrade = 4320,
        client = {
            status = { hunger = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},
	['vegetariansandwich'] = {
		label = 'Le Végétarien',
		weight = 1000,
		stack = true,
		degrade = 4320,
        client = {
            status = { hunger = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},
	['chefspecialsandwich'] = {
		label = 'Le Spécial du Chef',
		weight = 1000,
		stack = true,
		degrade = 4320,
        client = {
            status = { hunger = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},
	['doubleicecream'] = {
		label = 'Glace Deux Boules',
		weight = 1000,
		stack = true,
		degrade = 4320,
        client = {
            status = { hunger = 20 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},
	['waffle'] = {
		label = 'Gauffre',
		weight = 1000,
		stack = true,
		degrade = 4320,
        client = {
            status = { hunger = 20 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},
	['churros'] = {
		label = 'Chichis',
		weight = 1000,
		stack = true,
		degrade = 4320,
        client = {
            status = { hunger = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},

	['mezcal'] = {
		label = 'Mezcal',
		weight = 750,
		stack = true,
        client = {
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['jesstoniccocktail'] = {
		label = 'Le Jess\'Tonic',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 20 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['bouboucocktail'] = {
		label = 'Le Boubou',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},
	['mojitococktail'] = {
		label = 'jägerbomb',
		weight = 750,
		stack = true,
		close = true,
        client = {
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
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
			status = { thirst = 20 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_can_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

    ['potato'] = {
		label = 'pomme de terre',
		weight = 125,
		stack = true,
	},

	['milk'] = {
		label = 'lait',
		weight = 130,
		stack = true,
		close = true,
	},

	['tomato'] = {
		label = 'tomate',
		weight = 120,
		stack = true,
		close = true,
	},

    ['wheatseed'] = {
		label = 'Graine de Blé',
		weight = 130,
		stack = true,
	},
    ['maltseed'] = {
		label = 'Graine de Malt',
		weight = 130,
		stack = true,
	},
    ['riceseed'] = {
		label = 'Riz Germé',
		weight = 130,
		stack = true,
	},
    ['potatoseed'] = {
		label = 'Pomme de Terre Germée',
		weight = 130,
		stack = true,
	},
    ['sojaseed'] = {
		label = 'Graine de Soja',
		weight = 130,
		stack = true,
	},
    ['tomatoseed'] = {
		label = 'Graine de Tomates',
		weight = 130,
		stack = true,
	},
    ['saladseed'] = {
		label = 'Pousse de Salade',
		weight = 130,
		stack = true,
	},
    ['sugarcaneseed'] = {
		label = 'Graine de Canne à Sucre',
		weight = 130,
		stack = true,
	},
    ['agaveseed'] = {
		label = 'Graine d\'Agave',
		weight = 130,
		stack = true,
	},
    ['coffeeseed'] = {
		label = 'Graine de Café',
		weight = 130,
		stack = true,
	},
    ['teaseed'] = {
		label = 'Graine de Thé',
		weight = 130,
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
		weight = 130,
		stack = true,
	},

	['salad'] = {
		label = 'salade',
		weight = 130,
		stack = true,
	},

	['soja'] = {
		label = 'soja',
		weight = 100,
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
		weight = 120,
		stack = true,
		close = true,
	},

	["grinder"] = {
		label = "Meuleuse",
		weight = 10,
		stack = true,
		close = false,
		description = "Une meuleuse tout à fait normale.",
		client = {
			image = "grinder.png",
		}
	},

	["gold_ingot"] = {
		label = "Missing [fr][loot_item_label] translation.",
		weight = 1,
		stack = true,
		close = false,
		description = "Missing [fr][loot_item_desc] translation.",
		client = {
			image = "gold_ingot.png",
		}
	},
}