-- Afficher la table des horaires dans l’ordre chronologique a l’arret Madelaine. Faire dememe pour l’arret Republique.
SELECT horaire AS "Horaires a l'arret Madeleine (Lundi)"
FROM Horaire as h
LEFT JOIN Station_Ligne_Horaire_Jour AS slhj ON h.id = slhj.id_Horaire
LEFT JOIN Station AS s ON slhj.id_Station = s.id
WHERE s.nom = 'Madeleine'
ORDER BY horaire;

SELECT horaire AS "Horaires a l'arret Republique (Lundi)"
FROM Horaire as h
LEFT JOIN Station_Ligne_Horaire_Jour AS slhj ON h.id = slhj.id_Horaire
LEFT JOIN Station AS s ON slhj.id_Station = s.id
WHERE s.nom = 'Republique'
ORDER BY horaire;

-- Afficher le parcours complet de la ligne 2 Direction Kersec (la liste des arrets dansl’ordre de passage).
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
SELECT s.nom AS "Parcours de la ligne 2 Direction Kersec"
FROM Station AS s
LEFT JOIN Station_Ligne_Horaire_Jour AS slhj ON s.id = slhj.id_Station
LEFT JOIN Ligne AS l ON slhj.id_Ligne = l.id
WHERE l.numero = 2
GROUP BY s.nom
ORDER BY slhj.id_Horaire;

-- Des travaux sont en cours dans la ville. L’arret Petit Tohannic ne sera plus desservi temporairement. Un arret non desservi temporairement doit indiquer l’arret le plus proche auquel se rendre.
-- On redirigera les voyageur·ses vers l’arret Delestraint. Modifier le schema de la base de donnees pour modeliser ce besoin.
-- J'ai ajoute une colonne "indisponible" dans la table Station qui permet de savoir si une station est desservi ou non. SI il est egal a 0 (par defaut), l'arret est desservi, sinon il est indisponible.
ALTER TABLE Station 
ADD COLUMN indisponible TINYINT(1) DEFAULT 0;

UPDATE station
SET indisponible = 1 
WHERE nom = 'Petit Tohannic';

-- A l’arret Petit Tohannic, au lieu d’afficher la table des horaires, afficher le message"Arret temporairement non desservi."

SELECT 
    CASE 
        WHEN s.indisponible = 1 THEN CONCAT("L'arret n'est pas desservi. Veuillez vous reporter a l'arret ", station_proche)
        ELSE horaire 
    END AS "Horaires a l'arret Petit Tohannic (Lundi)"
FROM Horaire as h
LEFT JOIN Station_Ligne_Horaire_Jour AS slhj ON h.id = slhj.id_Horaire
LEFT JOIN Station AS s ON slhj.id_Station = s.id
CROSS JOIN (
    SELECT s2.nom AS station_proche
    FROM Horaire as h2
    LEFT JOIN Station_Ligne_Horaire_Jour AS slhj2 ON h2.id = slhj2.id_Horaire
    LEFT JOIN Station AS s2 ON slhj2.id_Station = s2.id
    WHERE s2.nom <> 'Petit Tohannic' AND h2.horaire > (
        SELECT MAX(h3.horaire)
        FROM Horaire as h3
        LEFT JOIN Station_Ligne_Horaire_Jour AS slhj3 ON h3.id = slhj3.id_Horaire
        LEFT JOIN Station AS s3 ON slhj3.id_Station = s3.id
        WHERE s3.nom = 'Petit Tohannic'
    )
    ORDER BY h2.horaire
    LIMIT 1
) AS nomprochainestation
WHERE s.nom = 'Petit Tohannic'
ORDER BY horaire;

-- Ajouter la ligne 2 dans la direction opposee Direction P+R Ouest ainsi que les stations qu’elle dessert. 
-- Reutiliser les memes horaires que pour l’autre direction. 
-- On se limitera ici a un seul trajet de bus, le premier de la journee..
INSERT INTO Ligne (numero,direction) VALUES (2,'P+R Ouest');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE direction = 'P+R Ouest'),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Kersec'),
    (SELECT id FROM Horaire WHERE horaire = '06:32:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE direction = 'P+R Ouest'),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Delestraint'),
    (SELECT id FROM Horaire WHERE horaire = '06:34:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE direction = 'P+R Ouest'),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Petit Tohannic'),
    (SELECT id FROM Horaire WHERE horaire = '06:37:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE direction = 'P+R Ouest'),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'PIBS 2'),
    (SELECT id FROM Horaire WHERE horaire = '06:42:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE direction = 'P+R Ouest'),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Republique'),
    (SELECT id FROM Horaire WHERE horaire = '06:46:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE direction = 'P+R Ouest'),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Madeleine'),
    (SELECT id FROM Horaire WHERE horaire = '06:50:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE direction = 'P+R Ouest'),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Fourchene 1'),
    (SELECT id FROM Horaire WHERE horaire = '06:51:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE direction = 'P+R Ouest'),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'P+R Ouest'),
    (SELECT id FROM Horaire WHERE horaire = '06:55:00');

-- Afficher pour chaque ligne, le parcours complet (liste des arrets dans l’ordre de passage).
-- On y indiquera egalement les arrets temporairement non desservis.
SELECT 
    l.direction AS Ligne,
    GROUP_CONCAT(
        DISTINCT s.nom
        ORDER BY h.Horaire
        SEPARATOR ', '
    ) AS Parcours
FROM Ligne AS l
LEFT JOIN Station_Ligne_Horaire_Jour AS slhj ON l.id = slhj.id_Ligne
LEFT JOIN Station AS s ON slhj.id_Station = s.id
LEFT JOIN Horaire AS h ON slhj.id_Horaire = h.id
GROUP BY l.direction
ORDER BY l.direction;

--  Bonus: etant donnes les besoins actuels sur votre base, et d’après sa structure, sur quelles colonnes serait-il judicieux de creer des indexs ? 
-- Pourquoi ?
-- Je pense qu'il serait judicieux de creer un index sur la colonne "nom" de Station car nous faisons enormement de recherches selon cette colonne
-- dans les requetes precedentes. Cela permettrait d'optimiser les performances de la base de donnees.