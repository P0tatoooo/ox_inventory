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
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 80 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 80 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
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

	['identification'] = {
		label = 'Identification',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['phone'] = {
		label = 'Téléphone',
		weight = 190,
		stack = false,
		consume = 0,
	},

	['mastercard'] = {
		label = 'Mastercard',
		stack = false,
		weight = 10,
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

    ['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 80, thirst = 80 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
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

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
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
            status = { thirst = 80},
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }

	},

	['absinthe'] = {
		label = 'absinthe',
		weight = 750,
		stack = true,
		close = true,

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

	['ammoniac'] = {
		label = 'ammoniaque',
		weight = 100,
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

	['anesthesique'] = {
		label = 'anesthésique',
		weight = 100,
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

	['applegranita'] = {
		label = 'granita pomme',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['applejuice'] = {
		label = 'jus de pommes',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['applepie'] = {
		label = 'tarte aux pommes',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
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

	['bahamascoupon'] = {
		label = 'ticket bahama mamas',
		weight = 10,
		stack = true,
		close = true,

	},

	['bahamasloyaltycard'] = {
		label = 'cdf bahama mamas',
		weight = 10,
		stack = true,
		close = true,

	},

	['bahamasloyaltycard0'] = {
		label = 'cdf bahama mamas - 1 point',
		weight = 10,
		stack = true,
		close = true,

	},

	['bahamasloyaltycard1'] = {
		label = 'cdf bahama mamas - 2 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['bahamasloyaltycard2'] = {
		label = 'cdf bahama mamas - 3 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['bahamasloyaltycard3'] = {
		label = 'cdf bahama mamas - 4 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['bahamasloyaltycard4'] = {
		label = 'cdf bahama mamas - 5 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['bahamasloyaltycard5'] = {
		label = 'cdf bahama mamas - 6 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['bahamasloyaltycard6'] = {
		label = 'cdf bahama mamas - 7 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['bahamasloyaltycard7'] = {
		label = 'cdf bahama mamas - 8 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['bahamasloyaltycard8'] = {
		label = 'cdf bahama mamas - 9 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['bahamasloyaltycard9'] = {
		label = 'cdf bahama mamas - 10 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['baileys'] = {
		label = 'baileys',
		weight = 750,
		stack = true,
		close = true,

	},

	['banana'] = {
		label = 'banane',
		weight = 120,
		stack = true,
		close = true,

	},

	['bananamilkshake'] = {
		label = 'milkshake banane',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['bandagepharma'] = {
		label = 'bandage pharmacie',
		weight = 100,
		stack = true,
		close = true,

	},

	['barberloyaltycard'] = {
		label = 'cdf ls coiffure',
		weight = 10,
		stack = true,
		close = true,

	},

	['barberloyaltycard0'] = {
		label = 'cdf ls coiffure - 1 point',
		weight = 10,
		stack = true,
		close = true,

	},

	['barberloyaltycard1'] = {
		label = 'cdf ls coiffure - 2 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['barberloyaltycard2'] = {
		label = 'cdf ls coiffure - 3 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['barberloyaltycard3'] = {
		label = 'cdf ls coiffure - 4 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['barberloyaltycard4'] = {
		label = 'cdf ls coiffure - 5 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['barberloyaltycard5'] = {
		label = 'cdf ls coiffure - 6 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['barberloyaltycard6'] = {
		label = 'cdf ls coiffure - 7 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['barberloyaltycard7'] = {
		label = 'cdf ls coiffure - 8 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['barberloyaltycard8'] = {
		label = 'cdf ls coiffure - 9 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['barberloyaltycard9'] = {
		label = 'cdf ls coiffure - 10 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['barleymalt'] = {
		label = 'moût d\'orge',
		weight = 100,
		stack = true,
		close = true,

	},

	['battery'] = {
		label = 'battery',
		weight = 10000,
		stack = true,
		close = true,

	},

	['beer'] = {
		label = 'chope de bière',
		weight = 750,
		stack = true,
		close = true,

	},

	['beer2'] = {
		label = 'bière',
		weight = 750,
		stack = true,
		close = true,

	},

	['binoculars'] = {
		label = 'jumelles',
		weight = 800,
		stack = true,
		close = true,

	},

	['blacksand'] = {
		label = 'sable aurifère',
		weight = 100,
		stack = true,
		close = true,

	},

	['wheat'] = {
		label = 'blé',
		weight = 130,
		stack = true,
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

	['blue_phone'] = {
		label = 'iphone bleu',
		weight = 150,
		stack = false
	},

    ['white_phone'] = {
		label = 'iphone blanc',
		weight = 150,
		stack = false
	},

    ['green_phone'] = {
		label = 'iphone vert',
		weight = 150,
		stack = false
	},

	['bobbykush'] = {
		label = 'bobby kush',
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

	['bread'] = {
		label = 'pain',
		weight = 120,
		stack = true,
		close = true,

	},

	['broth'] = {
		label = 'bouillon',
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

	['bulletproof_10'] = {
		label = 'gilet 14k',
		weight = 2000,
		stack = false,
		close = true,

	},

	['bulletproof_11'] = {
		label = 'gilet cdg',
		weight = 2000,
		stack = false,
		close = true,

	},

	['bulletproof_2'] = {
		label = 'gilet pare-balles beige',
		weight = 2000,
		stack = false,
		close = true,

	},

	['bulletproof_3'] = {
		label = 'gilet pare-balles tactique',
		weight = 2000,
		stack = false,
		close = true,

	},

	['bulletproof_4'] = {
		label = 'gilet pare-balles kaki colombia',
		weight = 2000,
		stack = false,
		close = true,

	},

	['bulletproof_5'] = {
		label = 'gilet pare-balles noir colombia',
		weight = 2000,
		stack = false,
		close = true,

	},

	['bulletproof_6'] = {
		label = 'gilet pare-balles tactique kaki ',
		weight = 2000,
		stack = false,
		close = true,

	},

	['bulletproof_7'] = {
		label = 'gilet pare-balles tactique noir',
		weight = 2000,
		stack = false,
		close = true,

	},

	['bulletproof_8'] = {
		label = 'gilet pare-balles sinaloa',
		weight = 2000,
		stack = false,
		close = true,

	},

	['bulletproof_9'] = {
		label = 'gilet pare-balles skull',
		weight = 2000,
		stack = false,
		close = true,

	},

	['bulletproof_lspd0'] = {
		label = 'gilet cadet',
		weight = 2000,
		stack = false,
		close = true,

	},

	['bulletproof_lspd1'] = {
		label = 'gilet patrouille',
		weight = 2000,
		stack = false,
		close = true,

	},

	['bulletproof_lspd2'] = {
		label = 'gilet tactique',
		weight = 2000,
		stack = false,
		close = true,

	},

	['bulletproof_lspd3'] = {
		label = 'gilet swat ic',
		weight = 2000,
		stack = false,
		close = true,

	},

	['bulletproof_lspd4'] = {
		label = 'gilet swat ce',
		weight = 2000,
		stack = false,
		close = true,

	},

	['bulletproof_lspd5'] = {
		label = 'gilet swat lourd',
		weight = 2000,
		stack = false,
		close = true,

	},

	['bulletproof_lspd6'] = {
		label = 'gilet g-u',
		weight = 2000,
		stack = false,
		close = true,

	},

	['bulletproof_lspd7'] = {
		label = 'gilet g-u jaune',
		weight = 2000,
		stack = false,
		close = true,

	},

	['bulletproof_lspd8'] = {
		label = 'gilet d&g-u',
		weight = 2000,
		stack = false,
		close = true,

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

	['burgershotloyaltycard'] = {
		label = 'cdf burgershot',
		weight = 10,
		stack = true,
		close = true,

	},

	['burgershotloyaltycard0'] = {
		label = 'cdf burgershot - 1 point',
		weight = 10,
		stack = true,
		close = true,

	},

	['burgershotloyaltycard1'] = {
		label = 'cdf burgershot - 2 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['burgershotloyaltycard2'] = {
		label = 'cdf burgershot - 3 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['burgershotloyaltycard3'] = {
		label = 'cdf burgershot - 4 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['burgershotloyaltycard4'] = {
		label = 'cdf burgershot - 5 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['burgershotloyaltycard5'] = {
		label = 'cdf burgershot - 6 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['burgershotloyaltycard6'] = {
		label = 'cdf burgershot - 7 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['burgershotloyaltycard7'] = {
		label = 'cdf burgershot - 8 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['burgershotloyaltycard8'] = {
		label = 'cdf burgershot - 9 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['burgershotloyaltycard9'] = {
		label = 'cdf burgershot - 10 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['burrito'] = {
		label = 'burrito',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['bushmills'] = {
		label = 'bushmills',
		weight = 750,
		stack = true,
		close = true,

	},

	['cabbage'] = {
		label = 'chou',
		weight = 100,
		stack = true,
		close = true,

	},

	['californiarollassortment'] = {
		label = 'assortiment california rolls',
		weight = 500,
		stack = true,
		close = true,
		degrade = 4320
	},

	['canapecaviar'] = {
		label = 'canapé de caviar',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
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

	['canoncompoarme'] = {
		label = 'canon d\'arme',
		weight = 300,
		stack = true,
		close = true,

	},

	['carcleaningproduct'] = {
		label = 'produit entretien véhicule',
		weight = 750,
		stack = true,
		close = true,

	},

	['cardealerloyaltycard'] = {
		label = 'cdf premium deluxe motorsport',
		weight = 10,
		stack = true,
		close = true,

	},

	['cardealerloyaltycard0'] = {
		label = 'cdf premium deluxe motorsport - 1 point',
		weight = 10,
		stack = true,
		close = true,

	},

	['cardealerloyaltycard1'] = {
		label = 'cdf premium deluxe motorsport - 2 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['cardealerloyaltycard2'] = {
		label = 'cdf premium deluxe motorsport - 3 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['cardealerloyaltycard3'] = {
		label = 'cdf premium deluxe motorsport - 4 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['cardealerloyaltycard4'] = {
		label = 'cdf premium deluxe motorsport - 5 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['cardealerloyaltycard5'] = {
		label = 'cdf premium deluxe motorsport - 6 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['cardealerloyaltycard6'] = {
		label = 'cdf premium deluxe motorsport - 7 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['cardealerloyaltycard7'] = {
		label = 'cdf premium deluxe motorsport - 8 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['cardealerloyaltycard8'] = {
		label = 'cdf premium deluxe motorsport - 9 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['cardealerloyaltycard9'] = {
		label = 'cdf premium deluxe motorsport - 10 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['carte_identite'] = {
		label = 'carte d\'identité',
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

	['casinoloyaltycard'] = {
		label = 'cdf casino',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinoloyaltycard0'] = {
		label = 'cdf casino - 1 point',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinoloyaltycard1'] = {
		label = 'cdf casino - 2 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinoloyaltycard2'] = {
		label = 'cdf casino - 3 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinoloyaltycard3'] = {
		label = 'cdf casino - 4 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinoloyaltycard4'] = {
		label = 'cdf casino - 5 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinoloyaltycard5'] = {
		label = 'cdf casino - 6 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinoloyaltycard6'] = {
		label = 'cdf casino - 7 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinoloyaltycard7'] = {
		label = 'cdf casino - 8 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinoloyaltycard8'] = {
		label = 'cdf casino - 9 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['casinoloyaltycard9'] = {
		label = 'cdf casino - 10 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['chambrecompoarme'] = {
		label = 'chambre d\'arme',
		weight = 300,
		stack = true,
		close = true,

	},

	['champagne'] = {
		label = 'champagne',
		weight = 750,
		stack = true,
		close = true,

	},

	['charcoal'] = {
		label = 'charbon de bois',
		weight = 10,
		stack = true,
		close = true,

	},

	['chawarma_poulet'] = {
		label = 'chawarma de poulet',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['cheese'] = {
		label = 'fromage',
		weight = 100,
		stack = true,
		close = true,

	},

	['cheeseplate'] = {
		label = 'assiette de fromages',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['chemicalfertilizer'] = {
		label = 'engrais chimique',
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

	['chickenburgermenu'] = {
		label = 'menu chicken burger',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320,
        client = {
            status = { hunger = 80, thirst = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},

	['chickenburger'] = {
		label = 'chicken burger',
		weight = 500,
		stack = true,
		close = true,
		degrade = 4320
	},

	['chiliconcarne'] = {
		label = 'chili con carne',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['chilipowder'] = {
		label = 'poudre de chili',
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

	['cinnamon'] = {
		label = 'cannelle',
		weight = 100,
		stack = true,
		close = true,

	},

	['cocacola'] = {
		label = 'coca cola',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['coca_leaf'] = {
		label = 'feuille de coca',
		weight = 100,
		stack = true,
		close = true,

	},

	['coconutmilk'] = {
		label = 'lait de coco',
		weight = 750,
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

	},

	['coke'] = {
		label = 'cocaine',
		weight = 100,
		stack = true,
		close = true,

	},

	['coldcutsplatter'] = {
		label = 'assiette de charcuterie',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
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

	['conditioner'] = {
		label = 'démêlant',
		weight = 100,
		stack = true,
		close = true,

	},

	['contract'] = {
		label = 'contrat - concess occasion',
		weight = 500,
		stack = true,
		close = true,

	},

	['cookie'] = {
		label = 'cookie',
		weight = 500,
		stack = true,
		close = true,

	},

	['cosmopolitan'] = {
		label = 'cosmopolitan',
		weight = 750,
		stack = true,
		close = true,

	},

	['cowboy'] = {
		label = 'cowboy',
		weight = 750,
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
		label = 'crème',
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

	['curacao'] = {
		label = 'curacao bleu',
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

	['deliverymeal'] = {
		label = 'menu livraison',
		weight = 100,
		stack = true,
		close = true,

	},

	['diamond'] = {
		label = 'diamant',
		weight = 100,
		stack = true,
		close = true,

	},

	['digitaltablet'] = {
		label = 'tablette numérique',
		weight = 100,
		stack = true,
		close = true,

	},

	['dinerloyaltycard'] = {
		label = 'cdf pop\'s diner',
		weight = 10,
		stack = true,
		close = true,

	},

	['dinerloyaltycard0'] = {
		label = 'cdf pop\'s diner - 1 point',
		weight = 10,
		stack = true,
		close = true,

	},

	['dinerloyaltycard1'] = {
		label = 'cdf pop\'s diner - 2 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['dinerloyaltycard2'] = {
		label = 'cdf pop\'s diner - 3 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['dinerloyaltycard3'] = {
		label = 'cdf pop\'s diner - 4 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['dinerloyaltycard4'] = {
		label = 'cdf pop\'s diner - 5 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['dinerloyaltycard5'] = {
		label = 'cdf pop\'s diner - 6 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['dinerloyaltycard6'] = {
		label = 'cdf pop\'s diner - 7 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['dinerloyaltycard7'] = {
		label = 'cdf pop\'s diner - 8 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['dinerloyaltycard8'] = {
		label = 'cdf pop\'s diner - 9 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['dinerloyaltycard9'] = {
		label = 'cdf pop\'s diner - 10 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['dinermenu'] = {
		label = 'menu diner',
		weight = 100,
		stack = true,
		close = true,

	},

	['dnaanalyzer'] = {
		label = 'analyseur d\'adn',
		weight = 1250,
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

	['doors'] = {
		label = 'portière',
		weight = 10000,
		stack = true,
		close = true,

	},

	['dough'] = {
		label = 'pâte',
		weight = 100,
		stack = true,
		close = true,

	},

	['driedmarijuana'] = {
		label = 'cannabis séchée',
		weight = 100,
		stack = true,
		close = true,

	},

	['driedmeat'] = {
		label = 'viande séchée',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320
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

	['enchilada'] = {
		label = 'enchilada',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['energydrink'] = {
		label = 'boisson energisante',
		weight = 750,
		stack = true,
		close = true,

	},

	['engine'] = {
		label = 'moteur',
		weight = 10000,
		stack = true,
		close = true,

	},

	['envelope'] = {
		label = 'enveloppe cadeau',
		weight = 1,
		stack = true,
		close = true,

	},

	['ephedrine'] = {
		label = 'Éphédrine',
		weight = 1,
		stack = true,
		close = true,

	},

	['fajitas'] = {
		label = 'fajitas',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['fakeplate'] = {
		label = 'fausse plaque',
		weight = 200,
		stack = true,
		close = true,

	},

	['familialdeliverymeal'] = {
		label = 'menu livraison familial',
		weight = 100,
		stack = true,
		close = true,

	},

	['fanta'] = {
		label = 'fanta',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['fermentedbarleymalt'] = {
		label = 'moût d\'orge fermenté',
		weight = 100,
		stack = true,
		close = true,

	},

	['fishing_rod'] = {
		label = 'canne à pêche',
		weight = 500,
		stack = true,
		close = true,

	},

	['flour'] = {
		label = 'farine',
		weight = 100,
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

	},

	['gintonic'] = {
		label = 'gin tonic',
		weight = 750,
		stack = true,
		close = true,

	},

	['glass'] = {
		label = 'verre',
		weight = 100,
		stack = true,
		close = true,

	},

	['goldbar'] = {
		label = 'lingot or',
		weight = 100,
		stack = true,
		close = true,

	},

	['goldflake'] = {
		label = 'paillette d\'or',
		weight = 100,
		stack = true,
		close = true,

	},

	['goldnecklace'] = {
		label = 'collier en or',
		weight = 100,
		stack = true,
		close = true,

	},

	['goldnugget'] = {
		label = 'pépite d\'or',
		weight = 100,
		stack = true,
		close = true,

	},

	['golem'] = {
		label = 'golem',
		weight = 150,
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

	['grand_cru'] = {
		label = 'grand cru',
		weight = 750,
		stack = true,
		close = true,

	},

	['gravestone'] = {
		label = 'grave stone',
		weight = 750,
		stack = true,
		close = true,

	},

	['guinness'] = {
		label = 'guinness',
		weight = 750,
		stack = true,
		close = true,

	},

	['gunpowder'] = {
		label = 'poudre à canon',
		weight = 1,
		stack = true,
		close = true,

	},

	['gyoza'] = {
		label = 'gyoza maison',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320
	},

	['hairoil'] = {
		label = 'huile pour cheveux',
		weight = 100,
		stack = true,
		close = true,

	},

	['halibut'] = {
		label = 'flétan',
		weight = 100,
		stack = true,
		close = true,

	},

	['harleydavidson'] = {
		label = 'harley davidson',
		weight = 750,
		stack = true,
		close = true,

	},

	['hei_prop_cash_crate_half_full'] = {
		label = 'palette argent 2',
		weight = 100,
		stack = true,
		close = true,

	},

	['hei_prop_hei_drug_case'] = {
		label = 'cocaine malette',
		weight = 100,
		stack = true,
		close = true,

	},

	['hei_prop_hei_drug_pack_01a'] = {
		label = 'petite brique cocaine',
		weight = 100,
		stack = true,
		close = true,

	},

	['hei_prop_hei_drug_pack_01b'] = {
		label = 'brique cocaine',
		weight = 100,
		stack = true,
		close = true,

	},

	['hei_prop_hei_drug_pack_02'] = {
		label = 'paquet drogue',
		weight = 100,
		stack = true,
		close = true,

	},

	['hei_prop_pill_bag_01'] = {
		label = 'sac de pilules',
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

	['homemadepotatochip'] = {
		label = 'chips maison',
		weight = 300,
		stack = true,
		close = true,
		degrade = 4320
	},

	['hood'] = {
		label = 'cagoule',
		weight = 2,
		stack = true,
		close = true,

	},

	['hotdog'] = {
		label = 'hotdog',
		weight = 140,
		stack = true,
		close = true,
		degrade = 4320
	},

	['hydrochloric_acid'] = {
		label = 'acide hydrochlorique',
		weight = 100,
		stack = true,
		close = true,

	},

	['ice'] = {
		label = 'glaçon',
		weight = 100,
		stack = true,
		close = true,

	},

	['icetea'] = {
		label = 'ice tea',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['ikealoyaltycard'] = {
		label = 'cdf ikea',
		weight = 10,
		stack = true,
		close = true,

	},

	['ikealoyaltycard0'] = {
		label = 'cdf ikea - 1 point',
		weight = 10,
		stack = true,
		close = true,

	},

	['ikealoyaltycard1'] = {
		label = 'cdf ikea - 2 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['ikealoyaltycard2'] = {
		label = 'cdf ikea - 3 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['ikealoyaltycard3'] = {
		label = 'cdf ikea - 4 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['ikealoyaltycard4'] = {
		label = 'cdf ikea - 5 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['ikealoyaltycard5'] = {
		label = 'cdf ikea - 6 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['ikealoyaltycard6'] = {
		label = 'cdf ikea - 7 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['ikealoyaltycard7'] = {
		label = 'cdf ikea - 8 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['ikealoyaltycard8'] = {
		label = 'cdf ikea - 9 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['ikealoyaltycard9'] = {
		label = 'cdf ikea - 10 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['irishcoffee'] = {
		label = 'irish coffee',
		weight = 750,
		stack = true,
		close = true,

	},

	['iron'] = {
		label = 'Fer',
		weight = 100,
		stack = true,
		close = true,

	},

	['jagerbomb'] = {
		label = 'jägerbomb',
		weight = 750,
		stack = true,
		close = true,

	},

	['jagermeister'] = {
		label = 'jägermeister',
		weight = 750,
		stack = true,
		close = true,

	},

	['jasmine'] = {
		label = 'jasmin',
		weight = 100,
		stack = true,
		close = true,

	},

	['grapejuice'] = {
		label = 'jus de raisin',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['kamikazenoodles'] = {
		label = 'nouilles kamikaze',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320
	},

	['kevlar'] = {
		label = 'kevlar',
		weight = 100,
		stack = true,
		close = true,

	},

	['chickndriveloyaltycard'] = {
		label = 'cdf chickndrive',
		weight = 100,
		stack = true,
		close = true,

	},

	['chickndriveloyaltycard0'] = {
		label = 'cdf chickndrive - 1 point',
		weight = 10,
		stack = true,
		close = true,

	},

	['chickndriveloyaltycard1'] = {
		label = 'cdf chickndrive - 2 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['chickndriveloyaltycard2'] = {
		label = 'cdf chickndrive - 3 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['chickndriveloyaltycard3'] = {
		label = 'cdf chickndrive - 4 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['chickndriveloyaltycard4'] = {
		label = 'cdf chickndrive - 5 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['chickndriveloyaltycard5'] = {
		label = 'cdf chickndrive - 6 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['chickndriveloyaltycard6'] = {
		label = 'cdf chickndrive - 7 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['chickndriveloyaltycard7'] = {
		label = 'cdf chickndrive - 8 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['chickndriveloyaltycard8'] = {
		label = 'cdf chickndrive - 9 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['chickndriveloyaltycard9'] = {
		label = 'cdf chickndrive - 10 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['kilbeggan'] = {
		label = 'kilbeggan',
		weight = 750,
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

	},

	['lithium'] = {
		label = 'lithium',
		weight = 100,
		stack = true,
		close = true,

	},

	['longisland'] = {
		label = 'long island',
		weight = 750,
		stack = true,
		close = true,

	},

	['lsd'] = {
		label = 'lsd',
		weight = 100,
		stack = true,
		close = true,

	},

	['lsflightschoolmembercard'] = {
		label = 'carte de membre ls flight school',
		weight = 10,
		stack = true,
		close = true,

	},

	['luckystrike'] = {
		label = 'lucky strike',
		weight = 100,
		stack = true,
		close = true,

	},

	['macaron'] = {
		label = 'macaron',
		weight = 500,
		stack = true,
		close = true,

	},

	['machinepistol'] = {
		label = 'tec-9 désarmé',
		weight = 1500,
		stack = true,
		close = true,

	},

	['magasincompoarme'] = {
		label = 'magasins d\'arme',
		weight = 300,
		stack = true,
		close = true,

	},

	['makiassortment'] = {
		label = 'assortiment de makis',
		weight = 500,
		stack = true,
		close = true,
		degrade = 4320
	},

	['makiassortmentmenu'] = {
		label = 'menu makis',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320,
        client = {
            status = { hunger = 80, thirst = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},

	['cigarette'] = {
		label = 'cigarette',
		weight = 100,
		stack = true,
		close = true,

	},

	['margarita'] = {
		label = 'margarita',
		weight = 750,
		stack = true,
		close = true,

	},

	['marijuana'] = {
		label = 'cannabis',
		weight = 100,
		stack = true,
		close = true,

	},

	['martini'] = {
		label = 'martini',
		weight = 750,
		stack = true,
		close = true,

	},

	['matchatea'] = {
		label = 'thé matcha',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320
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

	['medikit'] = {
		label = 'medikit',
		weight = 250,
		stack = true,
		close = true,

	},

	['medikitpharma'] = {
		label = 'médikit pharmacie',
		weight = 100,
		stack = true,
		close = true,

	},

	['metal'] = {
		label = 'métal',
		weight = 100,
		stack = true,
		close = true,

	},

	['metalplate'] = {
		label = 'plaque de métal',
		weight = 100,
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

	['milk'] = {
		label = 'lait',
		weight = 130,
		stack = true,
		close = true,

	},

	['milkshake'] = {
		label = 'milkshake fraise',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['minismg'] = {
		label = 'mini smg désarmé',
		weight = 1500,
		stack = true,
		close = true,

	},

	['mint'] = {
		label = 'menthe',
		weight = 100,
		stack = true,
		close = true,

	},

	['minttea'] = {
		label = 'thé à la menthe',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['misosoup'] = {
		label = 'soupe miso',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320
	},

	['mochi'] = {
		label = 'mochi',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320
	},

	['mojito'] = {
		label = 'mojito',
		weight = 750,
		stack = true,
		close = true,

	},

	['morphine'] = {
		label = 'morphine',
		weight = 100,
		stack = true,
		close = true,

	},

	['muffin'] = {
		label = 'muffin',
		weight = 300,
		stack = true,
		close = true,
		degrade = 4320
	},

	['muffler'] = {
		label = 'silencieux d\'echappement',
		weight = 2,
		stack = true,
		close = true,

	},

	['nachos'] = {
		label = 'nachos',
		weight = 500,
		stack = true,
		close = true,
		degrade = 4320
	},

	['necklace'] = {
		label = 'collier',
		weight = 100,
		stack = true,
		close = true,

	},

	['noodles'] = {
		label = 'nouilles',
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

	['oilpump'] = {
		label = 'pompe à huile',
		weight = 2,
		stack = true,
		close = true,

	},

	['okonomiyaki'] = {
		label = 'okonomiyaki',
		weight = 5,
		stack = true,
		close = true,
		degrade = 4320
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

	['orangegranita'] = {
		label = 'granita orange',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['orangemilkshake'] = {
		label = 'milkshake orange',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
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

	['pancake'] = {
		label = 'pancake',
		weight = 300,
		stack = true,
		close = true,
		degrade = 4320
	},

	['pepper'] = {
		label = 'piment',
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

	['petstorebox'] = {
		label = 'carton de nourriture pour animaux',
		weight = 100,
		stack = true,
		close = true,

	},

	['pinacolada'] = {
		label = 'piña colada',
		weight = 750,
		stack = true,
		close = true,

	},

	['pineapple'] = {
		label = 'ananas',
		weight = 100,
		stack = true,
		close = true,

	},

	['pineapplegranita'] = {
		label = 'granita ananas',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['pineapplemilkshake'] = {
		label = 'milshake ananas',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
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

	['planches'] = {
		label = 'planches',
		weight = 1000,
		stack = true,
		close = true,

	},

	['plastic'] = {
		label = 'plastique',
		weight = 100,
		stack = true,
		close = true,

	},

	['platinecompoarme'] = {
		label = 'platine d\'arme',
		weight = 300,
		stack = true,
		close = true,

	},

	['pneu'] = {
		label = 'pneu',
		weight = 2500,
		stack = true,
		close = true,

	},

	['potato'] = {
		label = 'pomme de terre',
		weight = 125,
		stack = true,
		close = true,

	},

	['poppyresin'] = {
		label = 'résine de pavot',
		weight = 100,
		stack = true,
		close = true,

	},

	['ppa'] = {
		label = 'permis de port d\'arme',
		weight = 100,
		stack = true,
		close = true,

	},

	['prebatchedcocktail'] = {
		label = 'pre-batched cocktail',
		weight = 100,
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

	['p_gcase_s'] = {
		label = 'malette arme 1',
		weight = 100,
		stack = true,
		close = true,

	},

	['p_meth_bag_01_s'] = {
		label = 'sachet drogue',
		weight = 100,
		stack = true,
		close = true,

	},

	['queuededetentecompoarme'] = {
		label = 'queue de détente d\'arme',
		weight = 300,
		stack = true,
		close = true,

	},

	['quinoa'] = {
		label = 'quinoa',
		weight = 100,
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

	['ramen'] = {
		label = 'ramen',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320
	},

	['ramune'] = {
		label = 'ramune',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320
	},

	['red_phosphore'] = {
		label = 'phosphore rouge',
		weight = 100,
		stack = true,
		close = true,

	},

	['reinforced_fishing_rod'] = {
		label = 'canne à pêche renforcée',
		weight = 500,
		stack = true,
		close = true,

	},

	['reskit'] = {
		label = 'kit de réanimation',
		weight = 100,
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

	},

	['rhumarrange'] = {
		label = 'rhum arrangé',
		weight = 750,
		stack = true,
		close = true,

	},

	['rhumarrangeananas'] = {
		label = 'rhum arrangé ananas',
		weight = 750,
		stack = true,
		close = true,

	},

	['rhumarrangebvc'] = {
		label = 'rhum arrangé banane vanille cannelle',
		weight = 750,
		stack = true,
		close = true,

	},

	['rhumarrangecoco'] = {
		label = 'rhum arrangé coco',
		weight = 750,
		stack = true,
		close = true,

	},

	['rhumarrangeorange'] = {
		label = 'rhum arrangé orange',
		weight = 750,
		stack = true,
		close = true,

	},

	['rhumarrangevc'] = {
		label = 'rhum arrangé vanille cannelle',
		weight = 750,
		stack = true,
		close = true,

	},

	['rhumtonic'] = {
		label = 'rhum tonic',
		weight = 750,
		stack = true,
		close = true,

	},

	['rice'] = {
		label = 'riz',
		weight = 100,
		stack = true,
		close = true,

	},

	['rims'] = {
		label = 'jantes',
		weight = 4,
		stack = true,
		close = true,

	},

	['ring'] = {
		label = 'bague',
		weight = 100,
		stack = true,
		close = true,

	},

	['royalmojito'] = {
		label = 'mojito royal',
		weight = 750,
		stack = true,
		close = true,

	},

	['saintepopsine'] = {
		label = 'sainte popsine',
		weight = 750,
		stack = true,
		close = true,

	},

	['sake'] = {
		label = 'saké',
		weight = 750,
		stack = true,
		close = true,

	},

	['sakuramenu'] = {
		label = 'menu sakura',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320
	},

	['sakuratea'] = {
		label = 'thé maison',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320
	},

	['salmon'] = {
		label = 'saumon',
		weight = 100,
		stack = true,
		close = true,

	},

	['salmonsashimi'] = {
		label = 'sashimi de saumon',
		weight = 500,
		stack = true,
		close = true,
		degrade = 4320
	},

	['salt'] = {
		label = 'sel',
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

	['sashimiassortment'] = {
		label = 'assortiment de sashimi',
		weight = 500,
		stack = true,
		close = true,
		degrade = 4320
	},

	['saucisson'] = {
		label = 'saucisson',
		weight = 500,
		stack = true,
		close = true,
		degrade = 4320
	},

	['sawnoffshotgun'] = {
		label = 'fusil à canon scié désarmé',
		weight = 3000,
		stack = true,
		close = true,

	},

	['schwarzwald'] = {
		label = 'schwarzwald',
		weight = 750,
		stack = true,
		close = true,

	},

	['screwdriver'] = {
		label = 'tournevis',
		weight = 250,
		stack = true,
		close = true,

	},

	['sevenup'] = {
		label = '7 up',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['sexontherider'] = {
		label = 'sex on the rider',
		weight = 750,
		stack = true,
		close = true,

	},

	['shabushabu'] = {
		label = 'shabu-shabu',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320
	},

	['shampoo'] = {
		label = 'shampoing',
		weight = 100,
		stack = true,
		close = true,

	},

	['shark_fin'] = {
		label = 'aileron de requin',
		weight = 500,
		stack = true,
		close = true,

	},

	['shot_tequila'] = {
		label = 'shot de tequila',
		weight = 300,
		stack = true,
		close = true,

	},

	['shrimp'] = {
		label = 'crevette',
		weight = 100,
		stack = true,
		close = true,

	},

	['shrimptempura'] = {
		label = 'tempura de crevettes',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320
	},

	['sim'] = {
		label = 'sim',
		weight = 1,
		stack = true,
		close = true,
	},

    ['chicken'] = {
		label = 'poulet',
		weight = 1000,
		stack = false,
	},

	['slaughtered_chicken'] = {
		label = 'poulet mort',
		weight = 350,
		stack = true,
		close = true,

	},

	['smg'] = {
		label = 'smg désarmé',
		weight = 3000,
		stack = true,
		close = true,

	},

	['soja'] = {
		label = 'soja',
		weight = 100,
		stack = true,

	},

	['speakers'] = {
		label = 'haut-parleurs',
		weight = 6,
		stack = true,
		close = true,

	},

	['specialdinermenu'] = {
		label = 'menu diner spécial',
		weight = 100,
		stack = true,
		close = true,

	},

	['specialprebatchedcocktail'] = {
		label = 'special pre-batched cocktail',
		weight = 100,
		stack = true,
		close = true,

	},

	['specialsakuramenu'] = {
		label = 'menu sakura spécial',
		weight = 100,
		stack = true,
		close = true,
	},

	['specialtreatment'] = {
		label = 'traitement spécial',
		weight = 100,
		stack = true,
		close = true,

	},

	['spray'] = {
		label = 'bombe de peinture',
		weight = 500,
		stack = true,
		close = true,

	},

	['steeringwheel'] = {
		label = 'volant',
		weight = 5,
		stack = true,
		close = true,

	},

	['stingray'] = {
		label = 'raie',
		weight = 100,
		stack = true,
		close = true,

	},

	['strawberry'] = {
		label = 'fraise',
		weight = 125,
		stack = true,
		close = true,

	},

	['strawberrybubbletea'] = {
		label = 'bubble tea fraise',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320
	},

	['strawberrymojito'] = {
		label = 'mojito fraise',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['subwoofer'] = {
		label = 'caisson de basse',
		weight = 3,
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

	['sushiassortment'] = {
		label = 'assortiment de sushis',
		weight = 500,
		stack = true,
		close = true,
		degrade = 4320
	},

	['sushiassortmentmenu'] = {
		label = 'menu sushis',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320,
        client = {
            status = { hunger = 80, thirst = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},

	['tabachblond'] = {
		label = 'tabac blond humide',
		weight = 100,
		stack = true,
		close = true,

	},

	['tabachbrun'] = {
		label = 'tabac brun humide',
		weight = 100,
		stack = true,
		close = true,

	},

	['tabacsblond'] = {
		label = 'tabac blond séché',
		weight = 100,
		stack = true,
		close = true,

	},

	['tabacsbrun'] = {
		label = 'tabac brun séché',
		weight = 100,
		stack = true,
		close = true,

	},

	['tacos'] = {
		label = 'tacos',
		weight = 145,
		stack = true,
		close = true,
		degrade = 4320
	},

	['tattooshoployaltycard'] = {
		label = 'cdf blazing tattoo',
		weight = 10,
		stack = true,
		close = true,

	},

	['tattooshoployaltycard0'] = {
		label = 'cdf blazing tattoo - 1 point',
		weight = 10,
		stack = true,
		close = true,

	},

	['tattooshoployaltycard1'] = {
		label = 'cdf blazing tattoo - 2 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['tattooshoployaltycard2'] = {
		label = 'cdf blazing tattoo - 3 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['tattooshoployaltycard3'] = {
		label = 'cdf blazing tattoo - 4 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['tattooshoployaltycard4'] = {
		label = 'cdf blazing tattoo - 5 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['tattooshoployaltycard5'] = {
		label = 'cdf blazing tattoo - 6 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['tattooshoployaltycard6'] = {
		label = 'cdf blazing tattoo - 7 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['tattooshoployaltycard7'] = {
		label = 'cdf blazing tattoo - 8 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['tattooshoployaltycard8'] = {
		label = 'cdf blazing tattoo - 9 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['tattooshoployaltycard9'] = {
		label = 'cdf blazing tattoo - 10 points',
		weight = 10,
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

	['tendersbucket'] = {
		label = 'bucket tenders',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320
	},

	['tendersbucketmenu'] = {
		label = 'menu bucket tenders',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320,
        client = {
            status = { hunger = 80, thirst = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},

	['tequila'] = {
		label = 'tequila',
		weight = 750,
		stack = true,
		close = true,

	},

	['tequilasunrise'] = {
		label = 'tequila sunrise',
		weight = 750,
		stack = true,
		close = true,

	},

	['tequipaf'] = {
		label = 'tequipaf',
		weight = 100,
		stack = true,
		close = true,

	},

	['foiegrastoast'] = {
		label = 'toast de foie gras',
		weight = 500,
		stack = true,
		close = true,
		degrade = 4320
	},

	['token'] = {
		label = 'jeton',
		weight = 0,
		stack = true,
		close = true,

	},

	['tomato'] = {
		label = 'tomate',
		weight = 120,
		stack = true,
		close = true,

	},

	['tonic'] = {
		label = 'soda tonic',
		weight = 100,
		stack = true,
		close = true,

	},

	['tortilla'] = {
		label = 'tortilla',
		weight = 100,
		stack = true,
		close = true,

	},

	['tortillaconsalsa'] = {
		label = 'tortilla con salsa',
		weight = 500,
		stack = true,
		close = true,
		degrade = 4320
	},

	['tortillasoup'] = {
		label = 'soupe de tortillas',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['trinidad'] = {
		label = 'trinidad',
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

	['trunk'] = {
		label = 'coffre',
		weight = 2,
		stack = true,
		close = true,

	},

	['tunasashimi'] = {
		label = 'sashimi de thon',
		weight = 500,
		stack = true,
		close = true,
		degrade = 4320
	},

	['vanilla'] = {
		label = 'vanille',
		weight = 100,
		stack = true,
		close = true,

	},

	['vanillamilkshake'] = {
		label = 'milshake vanille',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['vin_blanc'] = {
		label = 'vin blanc',
		weight = 120,
		stack = true,
		close = true,

	},

	['vin_rouge'] = {
		label = 'vin rouge',
		weight = 120,
		stack = true,
		close = true,

	},

	['virginmojito'] = {
		label = 'virgin mojito',
		weight = 100,
		stack = true,
		close = true,

	},

	['vodka'] = {
		label = 'vodka',
		weight = 180,
		stack = true,
		close = true,

	},

	['watch'] = {
		label = 'montre',
		weight = 100,
		stack = true,
		close = true,

	},

	['waterpump'] = {
		label = 'pompe à eau',
		weight = 2,
		stack = true,
		close = true,

	},

	['weed'] = {
		label = 'pump\'king',
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

	},

	['white_seabass'] = {
		label = 'bar blanc',
		weight = 100,
		stack = true,
		close = true,

	},

	['wingsbucket'] = {
		label = 'bucket wings',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320
	},

	['wingsbucketmenu'] = {
		label = 'menu bucket wings',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320,
        client = {
            status = { hunger = 80, thirst = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},

	['yakitori'] = {
		label = 'brochette yakitori',
		weight = 5,
		stack = true,
		close = true,
		degrade = 4320
	},

	['yakitorimenu'] = {
		label = 'menu yakitori',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320,
        client = {
            status = { hunger = 80, thirst = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},

	['bikeexhaust'] = {
		label = 'pot d\'échappement moto',
		weight = 2000,
		stack = true,
		close = true,

	},

	['bikerims'] = {
		label = 'jante moto',
		weight = 5000,
		stack = true,
		close = true,

	},

	['coffeebean'] = {
		label = 'graine de café',
		weight = 10,
		stack = true,
		close = true,

	},

	['agave'] = {
		label = 'agave',
		weight = 10,
		stack = true,
		close = true,

	},

	['sakuraloyaltycard1'] = {
		label = 'cdf sakura - 2 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['sakuraloyaltycard4'] = {
		label = 'cdf sakura - 5 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['sakuraloyaltycard5'] = {
		label = 'cdf sakura - 6 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['sakuraloyaltycard9'] = {
		label = 'cdf sakura - 10 points',
		weight = 10,
		stack = true,
		close = true,

	},

    ['steakmenu'] = {
		label = 'menu steak frites',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320,
        client = {
            status = { hunger = 80, thirst = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},

	['chickenmenu'] = {
		label = 'menu poulet pommes de terre',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320,
        client = {
            status = { hunger = 80, thirst = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},

	['brunchmenu'] = {
		label = 'menu brunch',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320,
        client = {
            status = { hunger = 80, thirst = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},

	['sakuraloyaltycard'] = {
		label = 'cdf sakura',
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

	['cubalibre'] = {
		label = 'cuba libre',
		weight = 750,
		stack = true,
		close = true,

	},

	['strawberrypie'] = {
		label = 'tarte aux fraises',
		weight = 100,
		stack = true,
		close = true,
		degrade = 4320
	},

	['strawberrydaiquiri'] = {
		label = 'strawberry daiquiri',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
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

	['sakuraloyaltycard3'] = {
		label = 'cdf sakura - 4 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['sakuraloyaltycard7'] = {
		label = 'cdf sakura - 8 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['sakuraloyaltycard8'] = {
		label = 'cdf sakura - 9 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['sakuraloyaltycard6'] = {
		label = 'cdf sakura - 7 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['quesadilla'] = {
		label = 'quesadilla',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

	['sakuraloyaltycard2'] = {
		label = 'cdf sakura - 3 points',
		weight = 10,
		stack = true,
		close = true,

	},

	['sakuraloyaltycard0'] = {
		label = 'cdf sakura - 1 point',
		weight = 10,
		stack = true,
		close = true,

	},

	['jagerginger'] = {
		label = 'jäger ginger',
		weight = 750,
		stack = true,
		close = true,

	},

	['vodkaredbull'] = {
		label = 'vodka redbull',
		weight = 750,
		stack = true,
		close = true,

	},

	['cayokit'] = {
		label = 'kit de réparation',
		weight = 1000,
		stack = true,
		close = true,

	},

	['sakegimlet'] = {
		label = 'saké gimlet',
		weight = 750,
		stack = true,
		close = true,

	},

	['moscowmule'] = {
		label = 'moscow mule',
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

	['greenbeast'] = {
		label = 'green beast',
		weight = 750,
		stack = true,
		close = true,

	},

	['gingerbeer'] = {
		label = 'ginger beer',
		weight = 750,
		stack = true,
		close = true,

	},

	['burgermenu'] = {
		label = 'menu burger-frites',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320,
        client = {
            status = { hunger = 80, thirst = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},

    ['cheeseburger'] = {
		label = 'cheeseburger',
		weight = 500,
		stack = true,
		close = true,
		degrade = 4320
	},

    ['cheeseburgermenu'] = {
		label = 'menu cheeseburger',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320,
        client = {
            status = { hunger = 80, thirst = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},

    ['fishburger'] = {
		label = 'fish burger',
		weight = 500,
		stack = true,
		close = true,
		degrade = 4320
	},

    ['fishburgermenu'] = {
		label = 'menu fish burger',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320,
        client = {
            status = { hunger = 80, thirst = 80 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = {
                model = 'prop_cs_burger_01',
                pos = { x = 0.02, y = 0.02, y = -0.02},
                rot = { x = 0.0, y = 0.0, y = 0.0}
            },
            usetime = 2500,
        }
	},

	['sugarcane'] = {
		label = 'canne à sucre',
		weight = 10,
		stack = true,
		close = true,

	},

	['bikeairfilter'] = {
		label = 'filtre à air moto',
		weight = 1000,
		stack = true,
		close = true,

	},

	['bikeengine'] = {
		label = 'moteur moto',
		weight = 10000,
		stack = true,
		close = true,

	},

	['illegalcrate'] = {
		label = 'caisse de contrebande',
		weight = 1000,
		stack = false,
		close = true,

	},

	['chicken_piece'] = {
		label = 'morceau de poulet',
		weight = 200,
		stack = true,
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

    ['fruitpie'] = {
		label = 'Tarte aux Fruits',
		weight = 750,
		stack = true,
		close = true,
		degrade = 4320
	},

    ['cow'] = {
		label = 'Vache',
		weight = 40000,
		stack = true,
		close = true,

	},

	["weed_amnesia"] = {
		label = "Amnesia 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Amnesia",
		client = {
			image = "weed_baggy.png",
		}
	},

	["firework4"] = {
		label = "Weeping Willow",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework4.png",
		}
	},

	["printerdocument"] = {
		label = "Document",
		weight = 500,
		stack = false,
		close = true,
		description = "A nice document",
		client = {
			image = "printerdocument.png",
		}
	},

	["firework3"] = {
		label = "WipeOut",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework3.png",
		}
	},

	["lighter"] = {
		label = "Lighter",
		weight = 0,
		stack = true,
		close = true,
		description = "On new years eve a nice fire to stand next to",
		client = {
			image = "lighter.png",
		}
	},

	["labkey"] = {
		label = "Key",
		weight = 500,
		stack = false,
		close = true,
		description = "Key for a lock...?",
		client = {
			image = "labkey.png",
		}
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

	["rubber"] = {
		label = "Rubber",
		weight = 100,
		stack = true,
		close = false,
		description = "Rubber, I believe you can make your own rubber ducky with it :D",
		client = {
			image = "rubber.png",
		}
	},

	["tosti"] = {
		label = "Grilled Cheese Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat",
		client = {
			image = "tosti.png",
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

	["walkstick"] = {
		label = "Walking Stick",
		weight = 1000,
		stack = true,
		close = true,
		description = "Walking stick for ya'll grannies out there.. HAHA",
		client = {
			image = "walkstick.png",
		}
	},

	["gatecrack"] = {
		label = "Gatecrack",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to tear down some fences",
		client = {
			image = "usb_device.png",
		}
	},

	["rolex"] = {
		label = "Golden Watch",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden watch seems like the jackpot to me!",
		client = {
			image = "rolex.png",
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

	["weed_nutrition"] = {
		label = "Plant Fertilizer",
		weight = 2000,
		stack = true,
		close = true,
		description = "Plant nutrition",
		client = {
			image = "weed_nutrition.png",
		}
	},

	["jerry_can"] = {
		label = "Jerrycan 20L",
		weight = 20000,
		stack = true,
		close = true,
		description = "A can full of Fuel",
		client = {
			image = "jerry_can.png",
		}
	},

	["tablet"] = {
		label = "Tablet",
		weight = 2000,
		stack = true,
		close = true,
		description = "Expensive tablet",
		client = {
			image = "tablet.png",
		}
	},

	["diamond_ring"] = {
		label = "Diamond Ring",
		weight = 1500,
		stack = true,
		close = true,
		description = "A diamond ring seems like the jackpot to me!",
		client = {
			image = "diamond_ring.png",
		}
	},

	["coke_small_brick"] = {
		label = "Coke Package",
		weight = 350,
		stack = false,
		close = true,
		description = "Small package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_small_brick.png",
		}
	},

	["pinger"] = {
		label = "Pinger",
		weight = 1000,
		stack = true,
		close = true,
		description = "With a pinger and your phone you can send out your location",
		client = {
			image = "pinger.png",
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

	["weed_brick"] = {
		label = "Weed Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "1KG Weed Brick to sell to large customers.",
		client = {
			image = "weed_brick.png",
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

	["advancedlockpick"] = {
		label = "Advanced Lockpick",
		weight = 500,
		stack = true,
		close = true,
		description = "If you lose your keys a lot this is very useful... Also useful to open your beers",
		client = {
			image = "advancedlockpick.png",
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

	["weed_ak47"] = {
		label = "AK47 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g AK47",
		client = {
			image = "weed_baggy.png",
		}
	},

	["samsungphone"] = {
		label = "Samsung S10",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "samsungphone.png",
		}
	},

	["cryptostick"] = {
		label = "Crypto Stick",
		weight = 200,
		stack = false,
		close = true,
		description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?",
		client = {
			image = "cryptostick.png",
		}
	},

	["stickynote"] = {
		label = "Sticky note",
		weight = 0,
		stack = false,
		close = false,
		description = "Sometimes handy to remember something :)",
		client = {
			image = "stickynote.png",
		}
	},

	["antipatharia_coral"] = {
		label = "Antipatharia",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as black corals or thorn corals",
		client = {
			image = "antipatharia_coral.png",
		}
	},

	["moneybag"] = {
		label = "Money Bag",
		weight = 0,
		stack = false,
		close = true,
		description = "A bag with cash",
		client = {
			image = "moneybag.png",
		}
	},

	["handcuffs"] = {
		label = "Menottes",
		weight = 100,
		stack = true,
		close = true,
	},

	["painkillers"] = {
		label = "Painkillers",
		weight = 0,
		stack = true,
		close = true,
		description = "For pain you can't stand anymore, take this pill that'd make you feel great again",
		client = {
			image = "painkillers.png",
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

	["iphone"] = {
		label = "iPhone",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "iphone.png",
		}
	},

	["heavyarmor"] = {
		label = "Heavy Armor",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},

	["whiskey"] = {
		label = "Whiskey",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "whiskey.png",
		}
	},

	["weed_ak47_seed"] = {
		label = "AK47 Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of AK47",
		client = {
			image = "weed_seed.png",
		}
	},

	["casinochips"] = {
		label = "Casino Chips",
		weight = 0,
		stack = true,
		close = false,
		description = "Chips For Casino Gambling",
		client = {
			image = "casinochips.png",
		}
	},

	["joint"] = {
		label = "Joint",
		weight = 0,
		stack = true,
		close = true,
		description = "Sidney would be very proud at you",
		client = {
			image = "joint.png",
		}
	},

	["weed_amnesia_seed"] = {
		label = "Amnesia Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Amnesia",
		client = {
			image = "weed_seed.png",
		}
	},

	["snikkel_candy"] = {
		label = "Snikkel",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "snikkel_candy.png",
		}
	},

	["weed_og-kush"] = {
		label = "OGKush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g OG Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["goldchain"] = {
		label = "Golden Chain",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden chain seems like the jackpot to me!",
		client = {
			image = "goldchain.png",
		}
	},

	["twerks_candy"] = {
		label = "Twerks",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "twerks_candy.png",
		}
	},

	["crack_baggy"] = {
		label = "Bag of Crack",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy faster",
		client = {
			image = "crack_baggy.png",
		}
	},

	["aluminum"] = {
		label = "Aluminium",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "aluminum.png",
		}
	},

	["cleaningkit"] = {
		label = "Cleaning Kit",
		weight = 250,
		stack = true,
		close = true,
		description = "A microfiber cloth with some soap will let your car sparkle again!",
		client = {
			image = "cleaningkit.png",
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

	["weed_purple-haze"] = {
		label = "Purple Haze 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze",
		client = {
			image = "weed_baggy.png",
		}
	},

	["water_bottle"] = {
		label = "Bottle of Water",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "water_bottle.png",
		}
	},

	["ifaks"] = {
		label = "ifaks",
		weight = 200,
		stack = true,
		close = true,
		description = "ifaks for healing and a complete stress remover.",
		client = {
			image = "ifaks.png",
		}
	},

	["repairkit"] = {
		label = "Kit de Réparation",
		weight = 2500,
		stack = true,
		close = false,
	},

	["weed_skunk"] = {
		label = "Skunk 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Skunk",
		client = {
			image = "weed_baggy.png",
		}
	},

	["coke_brick"] = {
		label = "Coke Brick",
		weight = 1000,
		stack = false,
		close = true,
		description = "Heavy package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_brick.png",
		}
	},

	["weed_white-widow"] = {
		label = "White Widow 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g White Widow",
		client = {
			image = "weed_baggy.png",
		}
	},

	["firework2"] = {
		label = "Poppelers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework2.png",
		}
	},

	["thermite"] = {
		label = "Thermite",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd wish for everything to burn",
		client = {
			image = "thermite.png",
		}
	},

	["security_card_02"] = {
		label = "Security Card B",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_02.png",
		}
	},

	["dendrogyra_coral"] = {
		label = "Dendrogyra",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as pillar coral",
		client = {
			image = "dendrogyra_coral.png",
		}
	},

	["copper"] = {
		label = "Copper",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "copper.png",
		}
	},

	["sandwich"] = {
		label = "Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice bread for your stomach",
		client = {
			image = "sandwich.png",
		}
	},

	["security_card_01"] = {
		label = "Security Card A",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_01.png",
		}
	},

	["ironoxide"] = {
		label = "Iron Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with.",
		client = {
			image = "ironoxide.png",
		}
	},

	["oxy"] = {
		label = "Prescription Oxy",
		weight = 0,
		stack = true,
		close = true,
		description = "The Label Has Been Ripped Off",
		client = {
			image = "oxy.png",
		}
	},

	["trojan_usb"] = {
		label = "Trojan USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems",
		client = {
			image = "usb_device.png",
		}
	},

	["screwdriverset"] = {
		label = "Toolkit",
		weight = 1000,
		stack = true,
		close = false,
		description = "Very useful to screw... screws...",
		client = {
			image = "screwdriverset.png",
		}
	},

	["10kgoldchain"] = {
		label = "10k Gold Chain",
		weight = 2000,
		stack = true,
		close = true,
		description = "10 carat golden chain",
		client = {
			image = "10kgoldchain.png",
		}
	},

	["police_stormram"] = {
		label = "Stormram",
		weight = 18000,
		stack = true,
		close = true,
		description = "A nice tool to break into doors",
		client = {
			image = "police_stormram.png",
		}
	},

	["radioscanner"] = {
		label = "Radio Scanner",
		weight = 1000,
		stack = true,
		close = true,
		description = "With this you can get some police alerts. Not 100% effective however",
		client = {
			image = "radioscanner.png",
		}
	},

	["electronickit"] = {
		label = "Electronic Kit",
		weight = 100,
		stack = true,
		close = true,
		description = "If you've always wanted to build a robot you can maybe start here. Maybe you'll be the new Elon Musk?",
		client = {
			image = "electronickit.png",
		}
	},

	["armor"] = {
		label = "Armor",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},

	["kurkakola"] = {
		label = "Cola",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "cola.png",
		}
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

	["harness"] = {
		label = "Race Harness",
		weight = 1000,
		stack = false,
		close = true,
		description = "Racing Harness so no matter what you stay in the car",
		client = {
			image = "harness.png",
		}
	},

	["empty_weed_bag"] = {
		label = "Empty Weed Bag",
		weight = 0,
		stack = true,
		close = true,
		description = "A small empty bag",
		client = {
			image = "weed_baggy_empty.png",
		}
	},

	["metalscrap"] = {
		label = "Metal Scrap",
		weight = 100,
		stack = true,
		close = false,
		description = "You can probably make something nice out of this",
		client = {
			image = "metalscrap.png",
		}
	},

	["weed_skunk_seed"] = {
		label = "Skunk Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Skunk",
		client = {
			image = "weed_seed.png",
		}
	},

	["weed_white-widow_seed"] = {
		label = "White Widow Seed",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed seed of White Widow",
		client = {
			image = "weed_seed.png",
		}
	},

	["rolling_paper"] = {
		label = "Rolling Paper",
		weight = 0,
		stack = true,
		close = true,
		description = "Paper made specifically for encasing and smoking tobacco or cannabis.",
		client = {
			image = "rolling_paper.png",
		}
	},

	["firework1"] = {
		label = "2Brothers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework1.png",
		}
	},

	["certificate"] = {
		label = "Certificate",
		weight = 0,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff",
		client = {
			image = "certificate.png",
		}
	},

	["cokebaggy"] = {
		label = "Bag of Coke",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real quick",
		client = {
			image = "cocaine_baggy.png",
		}
	},

	["weed_og-kush_seed"] = {
		label = "OGKush Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["aluminumoxide"] = {
		label = "Aluminium Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with",
		client = {
			image = "aluminumoxide.png",
		}
	},

	["weed_purple-haze_seed"] = {
		label = "Purple Haze Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze",
		client = {
			image = "weed_seed.png",
		}
	},

	["fitbit"] = {
		label = "Fitbit",
		weight = 500,
		stack = false,
		close = true,
		description = "I like fitbit",
		client = {
			image = "fitbit.png",
		}
	},

	["xtcbaggy"] = {
		label = "Bag of XTC",
		weight = 0,
		stack = true,
		close = true,
		description = "Pop those pills baby",
		client = {
			image = "xtc_baggy.png",
		}
	},

	["markedbills"] = {
		label = "Marked Money",
		weight = 1000,
		stack = false,
		close = true,
		description = "Money?",
		client = {
			image = "markedbills.png",
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
    ["sojaseed"] = {
		label = "Graine de Soja",
		weight = 100,
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

	["grinder"] = {
		label = "Meuleuse",
		weight = 5000,
		stack = false
	},

	["gold_ingot"] = {
		label = "Lingot d'or",
		weight = 1000,
		stack = true
	},

    ["cuff"] = {
		label = "menottes",
		weight = 100,
		stack = true
	},
    ["cuff_keys"] = {
		label = "Clés menottes",
		weight = 100,
		stack = true
	},
    ["rope"] = {
		label = "Corde",
		weight = 100,
		stack = true
	},
    ["headbag"] = {
		label = "Sac tête",
		weight = 100,
		stack = true
	},

	["firstaid"] = {
		label = "First Aid",
		weight = 2500,
		stack = true,
		close = true,
		description = "You can use this First Aid kit to get people back on their feet",
		client = {
			image = "firstaid.png",
		}
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


	["lawyerpass"] = {
		label = "Lawyer Pass",
		weight = 100,
		stack = false,
		close = false,
		description = "Pass exclusive to lawyers to show they can represent a suspect",
		client = {
			image = "lawyerpass.png",
		}
	},

	["vehicle_reg"] = {
		label = "Vehicle Registration",
		weight = 100,
		stack = false,
		server = {
			export = 'MyCity_VehicleRegistration.UseRegistration'
		}
	},

	["vehicle_ins"] = {
		label = "Vehicle Insurance",
		weight = 100,
		stack = false,
		server = {
			export = 'MyCity_VehicleRegistration.UseInsurance'
		}
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

	["weaponlicense"] = {
		label = "Weapon License",
		weight = 0,
		stack = false,
		close = true,
		description = "Weapon License",
		client = {
			image = "weapon_license.png",
		}
	},

    ['racing_gps'] = {
		label = 'GPS de Course',
		weight = 1000,
		stack = false,
	},

    ['obd_scanner'] = {
		label = 'ODb Scanner',
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


	["weed_purplehaze"] = {
		label = "Purple Haze 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze",
		client = {
			image = "weed_baggy.png",
		}
	},

	["medscope_attachment"] = {
		label = "Medium Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A medium scope for a weapon",
		client = {
			image = "medscope_attachment.png",
		}
	},

	["weed_ogkush"] = {
		label = "OGKush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g OG Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["barrel_attachment"] = {
		label = "Barrel",
		weight = 1000,
		stack = true,
		close = true,
		description = "A barrel for a weapon",
		client = {
			image = "barrel_attachment.png",
		}
	},

	["suppressor_attachment"] = {
		label = "Suppressor",
		weight = 1000,
		stack = true,
		close = true,
		description = "A suppressor for a weapon",
		client = {
			image = "suppressor_attachment.png",
		}
	},

	["tenkgoldchain"] = {
		label = "10k Gold Chain",
		weight = 2000,
		stack = true,
		close = true,
		description = "10 carat golden chain",
		client = {
			image = "10kgoldchain.png",
		}
	},

	["tirerepairkit"] = {
		label = "Tire Repair Kit",
		weight = 1000,
		stack = true,
		close = true,
		description = "A kit to repair your tires",
		client = {
			image = "tirerepairkit.png",
		}
	},

	["precision_muzzle_brake"] = {
		label = "Precision Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "precision_muzzle_brake.png",
		}
	},

	["sessantacamo_attachment"] = {
		label = "Sessanta Nove Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A sessanta nove camo for a weapon",
		client = {
			image = "sessantacamo_attachment.png",
		}
	},

	["squared_muzzle_brake"] = {
		label = "Squared Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "squared_muzzle_brake.png",
		}
	},

	["brushcamo_attachment"] = {
		label = "Brushstroke Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A brushstroke camo for a weapon",
		client = {
			image = "brushcamo_attachment.png",
		}
	},

	["flat_muzzle_brake"] = {
		label = "Flat Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "flat_muzzle_brake.png",
		}
	},

	["veh_engine"] = {
		label = "Engine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle engine",
		client = {
			image = "veh_engine.png",
		}
	},

	["geocamo_attachment"] = {
		label = "Geometric Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A geometric camo for a weapon",
		client = {
			image = "geocamo_attachment.png",
		}
	},

	["clip_attachment"] = {
		label = "Clip",
		weight = 1000,
		stack = true,
		close = true,
		description = "A clip for a weapon",
		client = {
			image = "clip_attachment.png",
		}
	},

	["veh_suspension"] = {
		label = "Suspension",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle suspension",
		client = {
			image = "veh_suspension.png",
		}
	},

	["split_end_muzzle_brake"] = {
		label = "Split End Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "split_end_muzzle_brake.png",
		}
	},

	["heavy_duty_muzzle_brake"] = {
		label = "HD Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "heavy_duty_muzzle_brake.png",
		}
	},

	["veh_armor"] = {
		label = "Armor",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle armor",
		client = {
			image = "veh_armor.png",
		}
	},

	["veh_neons"] = {
		label = "Neons",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle neons",
		client = {
			image = "veh_neons.png",
		}
	},

	["patriotcamo_attachment"] = {
		label = "Patriot Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A patriot camo for a weapon",
		client = {
			image = "patriotcamo_attachment.png",
		}
	},

	["weed_purplehaze_seed"] = {
		label = "Purple Haze Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze",
		client = {
			image = "weed_seed.png",
		}
	},

	["weed_whitewidow_seed"] = {
		label = "White Widow Seed",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed seed of White Widow",
		client = {
			image = "weed_seed.png",
		}
	},

	["flashlight_attachment"] = {
		label = "Flashlight",
		weight = 1000,
		stack = true,
		close = true,
		description = "A flashlight for a weapon",
		client = {
			image = "flashlight_attachment.png",
		}
	},

	["largescope_attachment"] = {
		label = "Large Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A large scope for a weapon",
		client = {
			image = "largescope_attachment.png",
		}
	},

	["thermalscope_attachment"] = {
		label = "Thermal Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A thermal scope for a weapon",
		client = {
			image = "thermalscope_attachment.png",
		}
	},

	["veh_turbo"] = {
		label = "Turbo",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle turbo",
		client = {
			image = "veh_turbo.png",
		}
	},

	["veh_brakes"] = {
		label = "Brakes",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle brakes",
		client = {
			image = "veh_brakes.png",
		}
	},

	["veh_wheels"] = {
		label = "Wheels",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle wheels",
		client = {
			image = "veh_wheels.png",
		}
	},

	["drum_attachment"] = {
		label = "Drum",
		weight = 1000,
		stack = true,
		close = true,
		description = "A drum for a weapon",
		client = {
			image = "drum_attachment.png",
		}
	},

	["woodcamo_attachment"] = {
		label = "Woodland Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A woodland camo for a weapon",
		client = {
			image = "woodcamo_attachment.png",
		}
	},

	["leopardcamo_attachment"] = {
		label = "Leopard Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A leopard camo for a weapon",
		client = {
			image = "leopardcamo_attachment.png",
		}
	},

	["holoscope_attachment"] = {
		label = "Holo Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A holo scope for a weapon",
		client = {
			image = "holoscope_attachment.png",
		}
	},

	["tactical_muzzle_brake"] = {
		label = "Tactical Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brakee for a weapon",
		client = {
			image = "tactical_muzzle_brake.png",
		}
	},

	["veh_toolbox"] = {
		label = "Toolbox",
		weight = 1000,
		stack = true,
		close = true,
		description = "Check vehicle status",
		client = {
			image = "veh_toolbox.png",
		}
	},

	["veh_interior"] = {
		label = "Interior",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle interior",
		client = {
			image = "veh_interior.png",
		}
	},

	["weed_whitewidow"] = {
		label = "White Widow 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g White Widow",
		client = {
			image = "weed_baggy.png",
		}
	},

	["weed_ogkush_seed"] = {
		label = "OGKush Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["nvscope_attachment"] = {
		label = "Night Vision Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A night vision scope for a weapon",
		client = {
			image = "nvscope_attachment.png",
		}
	},

	["veh_plates"] = {
		label = "Plates",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle plates",
		client = {
			image = "veh_plates.png",
		}
	},

	["veh_xenons"] = {
		label = "Xenons",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle xenons",
		client = {
			image = "veh_xenons.png",
		}
	},

	["boomcamo_attachment"] = {
		label = "Boom Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A boom camo for a weapon",
		client = {
			image = "boomcamo_attachment.png",
		}
	},

	["veh_transmission"] = {
		label = "Transmission",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle transmission",
		client = {
			image = "veh_transmission.png",
		}
	},

	["digicamo_attachment"] = {
		label = "Digital Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A digital camo for a weapon",
		client = {
			image = "digicamo_attachment.png",
		}
	},

	["comp_attachment"] = {
		label = "Compensator",
		weight = 1000,
		stack = true,
		close = true,
		description = "A compensator for a weapon",
		client = {
			image = "comp_attachment.png",
		}
	},

	["veh_exterior"] = {
		label = "Exterior",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle exterior",
		client = {
			image = "veh_exterior.png",
		}
	},

	["grip_attachment"] = {
		label = "Grip",
		weight = 1000,
		stack = true,
		close = true,
		description = "A grip for a weapon",
		client = {
			image = "grip_attachment.png",
		}
	},

	["fat_end_muzzle_brake"] = {
		label = "Fat End Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "fat_end_muzzle_brake.png",
		}
	},

	["bank_card"] = {
		label = "Bank Card",
		weight = 0,
		stack = false,
		close = true,
		description = "Used to access ATM",
		client = {
			image = "bank_card.png",
		}
	},

	["smallscope_attachment"] = {
		label = "Small Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A small scope for a weapon",
		client = {
			image = "smallscope_attachment.png",
		}
	},

	["skullcamo_attachment"] = {
		label = "Skull Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A skull camo for a weapon",
		client = {
			image = "skullcamo_attachment.png",
		}
	},

	["zebracamo_attachment"] = {
		label = "Zebra Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A zebra camo for a weapon",
		client = {
			image = "zebracamo_attachment.png",
		}
	},

	["bellend_muzzle_brake"] = {
		label = "Bellend Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "bellend_muzzle_brake.png",
		}
	},

	["advscope_attachment"] = {
		label = "Advanced Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "An advanced scope for a weapon",
		client = {
			image = "advscope_attachment.png",
		}
	},

	["luxuryfinish_attachment"] = {
		label = "Luxury Finish",
		weight = 1000,
		stack = true,
		close = true,
		description = "A luxury finish for a weapon",
		client = {
			image = "luxuryfinish_attachment.png",
		}
	},

	["veh_tint"] = {
		label = "Tints",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle tint",
		client = {
			image = "veh_tint.png",
		}
	},

	["slanted_muzzle_brake"] = {
		label = "Slanted Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "slanted_muzzle_brake.png",
		}
	},

	["perseuscamo_attachment"] = {
		label = "Perseus Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A perseus camo for a weapon",
		client = {
			image = "perseuscamo_attachment.png",
		}
	},

    ["poster"] = {
        label = "Poster",
        weight = 360,
    },

    ["posterremover"] = {
        label = "Raclette",
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
		stack = true,
		close = false,
        consume = 0,
	},

    ["miningdrill"] = {
		label = "Foreuse",
		weight = 1000,
		stack = true,
		close = false,
        consume = 0,
	},

	["mininglaser"] = {
		label = "Foreuse Laser",
		weight = 900,
		stack = false,
		close = false,
        consume = 0,
	},

    ["steel"] = {
		label = "Acier",
		weight = 100,
		stack = true,
		close = false,
	},

	["uncut_emerald"] = {
		label = "Uncut Emerald",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Emerald",
		client = {
			image = "uncut_emerald.png",
		}
	},

	["sapphire_earring"] = {
		label = "Sapphire Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_earring.png",
		}
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

	["emerald_ring_silver"] = {
		label = "Emerald Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_ring_silver.png",
		}
	},

	["uncut_ruby"] = {
		label = "Uncut Ruby",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Ruby",
		client = {
			image = "uncut_ruby.png",
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

	["ruby_necklace_silver"] = {
		label = "Ruby Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_necklace_silver.png",
		}
	},

	["silverchain"] = {
		label = "Silver Chain",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silverchain.png",
		}
	},

	["silverore"] = {
		label = "Silver Ore",
		weight = 1000,
		stack = true,
		close = false,
		description = "Silver Ore",
		client = {
			image = "silverore.png",
		}
	},

	["silverearring"] = {
		label = "Silver Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silver_earring.png",
		}
	},

	["sapphire_ring_silver"] = {
		label = "Sapphire Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_ring_silver.png",
		}
	},

	["diamond_necklace_silver"] = {
		label = "Diamond Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_necklace_silver.png",
		}
	},

	["diamond_earring_silver"] = {
		label = "Diamond Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_earring_silver.png",
		}
	},

	["diamond_ring_silver"] = {
		label = "Diamond Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_ring_silver.png",
		}
	},

	["emerald_necklace_silver"] = {
		label = "Emerald Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_necklace_silver.png",
		}
	},

	["copperore"] = {
		label = "Copper Ore",
		weight = 1000,
		stack = true,
		close = false,
		description = "Copper, a base ore.",
		client = {
			image = "copperore.png",
		}
	},

	["diamond_earring"] = {
		label = "Diamond Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_earring.png",
		}
	},

	["ruby_ring"] = {
		label = "Ruby Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_ring.png",
		}
	},

	["can"] = {
		label = "Empty Can",
		weight = 10,
		stack = true,
		close = false,
		description = "An empty can, good for recycling",
		client = {
			image = "can.png",
		}
	},

	["bottle"] = {
		label = "Empty Bottle",
		weight = 10,
		stack = true,
		close = false,
		description = "A glass bottle",
		client = {
			image = "bottle.png",
		}
	},

	["ruby_earring_silver"] = {
		label = "Ruby Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_earring_silver.png",
		}
	},

	["emerald_earring"] = {
		label = "Emerald Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_earring.png",
		}
	},

	["sapphire_necklace_silver"] = {
		label = "Sapphire Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_necklace_silver.png",
		}
	},

	["sapphire_necklace"] = {
		label = "Sapphire Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_necklace.png",
		}
	},

	["ruby_necklace"] = {
		label = "Ruby Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_necklace.png",
		}
	},

	["goldore"] = {
		label = "Gold Ore",
		weight = 1000,
		stack = true,
		close = false,
		description = "Gold Ore",
		client = {
			image = "goldore.png",
		}
	},

	["silver_ring"] = {
		label = "Silver Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silver_ring.png",
		}
	},

	["emerald"] = {
		label = "Emerald",
		weight = 100,
		stack = true,
		close = false,
		description = "A Emerald that shimmers",
		client = {
			image = "emerald.png",
		}
	},

	["sapphire_earring_silver"] = {
		label = "Sapphire Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_earring_silver.png",
		}
	},

	["ruby_ring_silver"] = {
		label = "Ruby Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_ring_silver.png",
		}
	},

	["uncut_diamond"] = {
		label = "Uncut Diamond",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Diamond",
		client = {
			image = "uncut_diamond.png",
		}
	},

	["emerald_ring"] = {
		label = "Emerald Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_ring.png",
		}
	},

	["uncut_sapphire"] = {
		label = "Uncut Sapphire",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Sapphire",
		client = {
			image = "uncut_sapphire.png",
		}
	},

	["goldearring"] = {
		label = "Golden Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gold_earring.png",
		}
	},

	["ruby"] = {
		label = "Ruby",
		weight = 100,
		stack = true,
		close = false,
		description = "A Ruby that shimmers",
		client = {
			image = "ruby.png",
		}
	},

	["sapphire"] = {
		label = "Sapphire",
		weight = 100,
		stack = true,
		close = false,
		description = "A Sapphire that shimmers",
		client = {
			image = "sapphire.png",
		}
	},

	["silveringot"] = {
		label = "Silver Ingot",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silveringot.png",
		}
	},

	["goldpan"] = {
		label = "Gold Panning Tray",
		weight = 10,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "goldpan.png",
		}
	},

	["ruby_earring"] = {
		label = "Ruby Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_earring.png",
		}
	},

	["sapphire_ring"] = {
		label = "Sapphire Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_ring.png",
		}
	},

	["diamond_necklace"] = {
		label = "Diamond Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_necklace.png",
		}
	},

	["emerald_necklace"] = {
		label = "Emerald Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_necklace.png",
		}
	},

	["emerald_earring_silver"] = {
		label = "Emerald Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_earring_silver.png",
		}
	},

	["gold_ring"] = {
		label = "Gold Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gold_ring.png",
		}
	},

    ["carparts"] = {
		label = "Pièces Détachées",
		weight = 2000,
		stack = true,
		close = false,
	},

	["advancedrepairkit"] = {
		label = "Advanced Repairkit",
		weight = 4000,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "advancedkit.png",
		}
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
}