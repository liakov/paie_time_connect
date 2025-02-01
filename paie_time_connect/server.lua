local interval = 3600000 -- Intervalle en millisecondes (par défaut 1h = 3600000 ms)
local initialAmount = 100 -- Montant initial pour le paiement
local incrementAmount = 25 -- Montant d'augmentation pour chaque paiement

local playerAmounts = {} -- Table pour suivre le montant accumulé de chaque joueur

-- Fonction pour donner de l'argent aux joueurs
function payPlayers()
    local xPlayers = ESX.GetPlayers()
    for i = 1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        if xPlayer then
            local playerId = xPlayer.identifier

            -- Si le joueur n'a pas encore de montant accumulé, on l'initialise
            if playerAmounts[playerId] == nil then
                playerAmounts[playerId] = initialAmount
            end

            -- Montant à verser pour ce joueur
            local amountToPay = playerAmounts[playerId]
            -- Verser l'argent sur le compte bancaire
            xPlayer.addAccountMoney('bank', amountToPay)
            -- Envoyer une notification au joueur
            TriggerClientEvent('esx:showNotification', xPlayer.source, 'Vous avez reçu une prime d\'activité de: ~g~$' .. amountToPay .. ' ~s~versé sur votre compte bancaire.')
            playerAmounts[playerId] = playerAmounts[playerId] + incrementAmount
        end
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(interval)
        payPlayers()
    end
end)
