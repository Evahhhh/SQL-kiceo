-- Supprimer les anciennes donnees
DELETE FROM Station_Ligne_Horaire_Jour;
DELETE FROM Station;
DELETE FROM Ligne;
DELETE FROM Jour;
DELETE FROM Horaire;

-- Inserer les nouvelles donnees
INSERT INTO Jour (intitule) VALUES ('Lundi');
INSERT INTO Ligne (numero,direction) VALUES (2,'Kersec');
INSERT INTO Station (nom) VALUES ('P+R Ouest'),('Fourchene 1'),('Madeleine'),('Republique'),('PIBS 2'),('Petit Tohannic'),('Delestraint'),('Kersec');
INSERT INTO Horaire (horaire) VALUES ('06:32:00'),('06:34:00'),('06:37:00'),('06:42:00'),('06:44:00'),('06:46:00'),('06:47:00'),('06:50:00'),('06:51:00'),('06:52:00'),('06:54:00'),('06:55:00'),('06:56:00'),('06:57:00'),('07:00:00'),('07:01:00'),('07:02:00'),('07:05:00'),('07:06:00'),('07:07:00'),('07:10:00'),('07:11:00'),('07:12:00'),('07:16:00'),('07:17:00'),('07:21:00'),('07:22:00'),('07:26:00'),('07:27:00'),('07:31:00'),('07:32:00'),('07:36:00');

-- Associer les stations a la ligne 2

-- P+R Ouest
INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'P+R Ouest'),
    (SELECT id FROM Horaire WHERE horaire = '06:32:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'P+R Ouest'),
    (SELECT id FROM Horaire WHERE horaire = '06:42:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'P+R Ouest'),
    (SELECT id FROM Horaire WHERE horaire = '06:52:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'P+R Ouest'),
    (SELECT id FROM Horaire WHERE horaire = '07:00:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'P+R Ouest'),
    (SELECT id FROM Horaire WHERE horaire = '07:10:00');

-- Fourchene 1
INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Fourchene 1'),
    (SELECT id FROM Horaire WHERE horaire = '06:34:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Fourchene 1'),
    (SELECT id FROM Horaire WHERE horaire = '06:44:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Fourchene 1'),
    (SELECT id FROM Horaire WHERE horaire = '06:54:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Fourchene 1'),
    (SELECT id FROM Horaire WHERE horaire = '07:02:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Fourchene 1'),
    (SELECT id FROM Horaire WHERE horaire = '07:12:00');

-- Madeleine
INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Madeleine'),
    (SELECT id FROM Horaire WHERE horaire = '06:37:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Madeleine'),
    (SELECT id FROM Horaire WHERE horaire = '06:47:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Madeleine'),
    (SELECT id FROM Horaire WHERE horaire = '06:57:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Madeleine'),
    (SELECT id FROM Horaire WHERE horaire = '07:06:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Madeleine'),
    (SELECT id FROM Horaire WHERE horaire = '07:16:00');

-- Republique
INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Republique'),
    (SELECT id FROM Horaire WHERE horaire = '06:42:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Republique'),
    (SELECT id FROM Horaire WHERE horaire = '06:52:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Republique'),
    (SELECT id FROM Horaire WHERE horaire = '07:02:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Republique'),
    (SELECT id FROM Horaire WHERE horaire = '07:12:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Republique'),
    (SELECT id FROM Horaire WHERE horaire = '07:22:00');

-- PIBS 2
INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'PIBS 2'),
    (SELECT id FROM Horaire WHERE horaire = '06:46:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'PIBS 2'),
    (SELECT id FROM Horaire WHERE horaire = '06:56:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'PIBS 2'),
    (SELECT id FROM Horaire WHERE horaire = '07:07:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'PIBS 2'),
    (SELECT id FROM Horaire WHERE horaire = '07:17:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'PIBS 2'),
    (SELECT id FROM Horaire WHERE horaire = '07:27:00');

-- Petit Tohannic
INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Petit Tohannic'),
    (SELECT id FROM Horaire WHERE horaire = '06:50:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Petit Tohannic'),
    (SELECT id FROM Horaire WHERE horaire = '07:00:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Petit Tohannic'),
    (SELECT id FROM Horaire WHERE horaire = '07:11:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Petit Tohannic'),
    (SELECT id FROM Horaire WHERE horaire = '07:21:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Petit Tohannic'),
    (SELECT id FROM Horaire WHERE horaire = '07:31:00');

-- Delestraint
INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Delestraint'),
    (SELECT id FROM Horaire WHERE horaire = '06:51:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Delestraint'),
    (SELECT id FROM Horaire WHERE horaire = '07:01:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Delestraint'),
    (SELECT id FROM Horaire WHERE horaire = '07:12:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Delestraint'),
    (SELECT id FROM Horaire WHERE horaire = '07:22:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Delestraint'),
    (SELECT id FROM Horaire WHERE horaire = '07:32:00');

-- Kersec
INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Kersec'),
    (SELECT id FROM Horaire WHERE horaire = '06:55:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Kersec'),
    (SELECT id FROM Horaire WHERE horaire = '07:05:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Kersec'),
    (SELECT id FROM Horaire WHERE horaire = '07:16:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Kersec'),
    (SELECT id FROM Horaire WHERE horaire = '07:26:00');

INSERT INTO Station_Ligne_Horaire_Jour (id_Ligne, id_Jour, id_Station, id_Horaire)
SELECT 
    (SELECT id FROM Ligne WHERE numero = 2),
    (SELECT id FROM Jour WHERE intitule = 'Lundi'),
    (SELECT id FROM Station WHERE nom = 'Kersec'),
    (SELECT id FROM Horaire WHERE horaire = '07:36:00');
