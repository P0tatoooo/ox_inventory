return {
	--{ name = 'weapon', coords = vec3(12.42198, -1105.82, 29.7854), price = 5000 }

	-- PAS de point de vente pour le permis de peche : il se donne entre joueurs,
	-- pas au comptoir. Une entree ici ferait apparaitre un marqueur « acheter le
	-- permis » que personne ne veut.
	--
	-- Le permis existe quand meme, et c'est lui qui ouvre l'achat des cannes et
	-- des appats chez le Pecheur (data/shops.lua, `license = 'fishing'`).
	-- Pour l'accorder, il suffit d'ecrire le meme champ que l'auto-ecole :
	--
	--     xPlayer.PlayerData.metadata.licenses['fishing'] = true
	--     xPlayer.Functions.SetMetaData('licenses', xPlayer.PlayerData.metadata.licenses)
	--
	-- C'est exactement ce que fait MyCity_DMVSchool pour `drive_boat`.
}
