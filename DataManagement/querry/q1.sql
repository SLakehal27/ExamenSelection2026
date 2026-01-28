-- Trouver seulement le tire et le genre des jeux qui sont plus vieux que 1987
SELECT titre, genre FROM Jeu NATURAL JOIN sortie WHERE annee < 1987;
