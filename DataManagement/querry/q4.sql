-- Trouver le nom du jeux et des personnage dans ce jeux pour les jeux avec une note supérieur à la moyenne de tout les jeux.
SELECT titre, nom FROM jeu NATURAL JOIN personnage WHERE note > (SELECT AVG(note) FROM jeu)
