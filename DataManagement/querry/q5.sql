-- Trouver tous les jeux avec le même genre que le jeu où apparaît le personnage "Luigi".
SELECT DISTINCT titre, genre FROM jeu NATURAL JOIN personnage WHERE genre = (SELECT genre FROM jeu NATURAL JOIN personnage WHERE nom = 'Luigi' FETCH FIRST 1 ROW ONLY) 
