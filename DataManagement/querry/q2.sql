-- Trouver la somme du nombre de jeux fait par Nintendo et Playstation 
SELECT COUNT(jeuid) as nombre_de_jeux FROM Jeu NATURAL JOIN developpeur
WHERE nom = 'Nintendo' OR nom = 'PlayStation'
