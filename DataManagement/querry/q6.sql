-- Trouver le nom des personnages qui apparaissent dans plus d'un jeux.
SELECT nom FROM jeu NATURAL JOIN personnage GROUP BY nom HAVING COUNT(*) > 1
