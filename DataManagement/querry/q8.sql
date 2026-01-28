-- Trouver les personnages dans les jeux Nintendo après 1984,
-- avec le nombre de jeux dans lesquels ils apparaissent et la note moyenne de ces jeux
SELECT DISTINCT nom, COUNT(titre) as nombre_de_jeux, AVG(note)
FROM jeu NATURAL JOIN developpeur NATURAL JOIN sortie
GROUP BY nom, annee
HAVING nom = 'Capcom' and annee > 1984
