-- Classer en ordre décroissant de note et de nombre de personnage pour les consoles qui ont la meuilleure note moyenne pour les jeux sortis.
-- There was an attempt lol --
SELECT console.nom FROM console CROSS JOIN sortie CROSS JOIN personnage NATURAL JOIN jeu 
ORDER BY jeu.note DESC, personnage.nom
