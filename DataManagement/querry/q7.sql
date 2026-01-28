-- Trouver le noms de tout les personnages qui apparaissent dans des jeux fait par Capcom après l'anné 1984.
SELECT DISTINCT nom FROM jeu NATURAL JOIN personnage NATURAL JOIN sortie WHERE annee > 1984
