# paie_time_connect

Resource de paiement au temps de connexion complétement configurable.

Ne fonctionne qu'avec ESX.

Explication du script

Intervalle de paiement : Défini à 1 heure (3600000 millisecondes).

Montants de paiement : Le montant initial est de 100$, et il augmente de 25$ à chaque paiement(mettre 0 pour aucune augmentation).

100$ / 15mns ==> 100$ / 15mns --> 200$ / 30mns --> 300$ / 45mns --> 400$ / 1h soit un total de 1000$ pour 1 heure.
50$ / 15mns ==> 50$ / 15mns --> 100$ / 30mns --> 150$ / 45mns --> 200$ / 1h soit un total de 500$ pour 1 heure.

100$ / 15mns ==> 100$ / 15mns --> 200$ / 30mns --> 300$ / 45mns --> 400$ / 1h --> 500$ / 1h15 --> 600$ / 1h30 --> 700$ / 1h45 --> 800$ / 2h soit un total de 3600$ pour 2 heures.
50$ / 15mns ==> 50$ / 15mns --> 100$ / 30mns --> 150$ / 45mns --> 200$ / 1h --> 250$ / 1h15 --> 300$ / 1h30 --> 350$ / 1h45 --> 400$ / 2h soit un total de 1800$ pour 2 heures.

Ce remet à zéro à chaque reconnexion, c'est un moyen de remercier les jours les plus actif.

Ceci est juste un paiement bonus pour remercier les joueurs d'être fidle au serveur.
