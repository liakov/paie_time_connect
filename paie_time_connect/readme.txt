Explication du script

Intervalle de paiement : Défini à 15 minutes (900000 millisecondes).

Montants de paiement : Le montant initial est de 100$, et il augmente de 25$ à chaque paiement.

Table playerAmounts : Suivi des montants accumulés pour chaque joueur, initialisé à 100$ pour chaque joueur.

Fonction payPlayers : Verse l'argent sur le compte bancaire de chaque joueur connecté et augmente le montant pour le prochain paiement.

Boucle Citizen.CreateThread : Exécute la fonction payPlayers toutes les 15 minutes.

100$ / 15mns ==> 100$ / 15mns --> 200$ / 30mns --> 300$ / 45mns --> 400$ / 1h soit un total de 1000$ pour 1 heure
50$ / 15mns ==> 50$ / 15mns --> 100$ / 30mns --> 150$ / 45mns --> 200$ / 1h soit un total de 500$ pour 1 heure

100$ / 15mns ==> 100$ / 15mns --> 200$ / 30mns --> 300$ / 45mns --> 400$ / 1h --> 500$ / 1h15 --> 600$ / 1h30 --> 700$ / 1h45 --> 800$ / 2h soit un total de 3600$ pour 2 heures
50$ / 15mns ==> 50$ / 15mns --> 100$ / 30mns --> 150$ / 45mns --> 200$ / 1h --> 250$ / 1h15 --> 300$ / 1h30 --> 350$ / 1h45 --> 400$ / 2h soit un total de 1800$ pour 2 heures
