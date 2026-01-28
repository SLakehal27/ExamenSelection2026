-- Trouver le nombre de jeux par année, mais seulement pour l'années où il y a plus d'un jeux sortis
SELECT DISTINCT annee, COUNT(*) AS nombre_de_jeux FROM jeu NATURAL JOIN sortie GROUP BY annee HAVING COUNT(*) > 1
