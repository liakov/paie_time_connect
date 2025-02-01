-- Intervalle en millisecondes (15 minutes = 900000 ms)
local interval = 900000
-- Montant initial pour le paiement
local initialAmount = 50
-- Montant d'augmentation pour chaque paiement
local incrementAmount = 25

-- Table pour suivre le montant accumulé de chaque joueur
local playerAmounts = {}

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
            TriggerClientEvent('esx:showNotification', xPlayer.source, 'Vous avez reçu ~g~$' .. amountToPay .. ' ~s~sur votre compte bancaire.')
            -- Augmenter le montant accumulé pour le prochain paiement
            playerAmounts[playerId] = playerAmounts[playerId] + incrementAmount
        end
    end
end

-- Boucle pour exécuter la fonction à intervalles réguliers
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(interval)
        payPlayers()
    end
end)
