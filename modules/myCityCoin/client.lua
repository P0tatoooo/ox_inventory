-- TODO Send the count of coins
RegisterNetEvent('MyCity_Inventory:Coin:Update', function(data)
    SendNUIMessage({
        action = 'MyCity:Coin:Update',
        data = {
            cityCoin = data.cityCoin
        }
    })
end)
