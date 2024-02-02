DROP TABLE IF EXISTS Station;
CREATE TABLE IF NOT EXISTS Station (
    id INT AUTO_INCREMENT NOT NULL,
    nom VARCHAR(255),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS Ligne;
CREATE TABLE IF NOT EXISTS Ligne (
    id INT AUTO_INCREMENT NOT NULL,
    numero INT,
    direction VARCHAR(255),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS Jour;
CREATE TABLE IF NOT EXISTS Jour (
    id INT AUTO_INCREMENT NOT NULL,
    intitule VARCHAR(255),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS Horaire;
CREATE TABLE IF NOT EXISTS Horaire (
    id INT AUTO_INCREMENT NOT NULL,
    horaire TIME,
    PRIMARY KEY pk_horaire (id)
);

DROP TABLE IF EXISTS Station_Ligne_Horaire_Jour;
CREATE TABLE IF NOT EXISTS Station_Ligne_Horaire_Jour (
    id_Ligne INT NOT NULL,
    id_Station INT NOT NULL,
    id_Horaire INT NOT NULL,
    id_Jour INT NOT NULL,
    PRIMARY KEY (id_Ligne, id_Station,id_Horaire,id_Jour)
);

ALTER TABLE Station_Ligne_Horaire_Jour
ADD CONSTRAINT FK_Station_Ligne_Horaire_id_Ligne FOREIGN KEY (id_Ligne) REFERENCES Ligne (id);

ALTER TABLE Station_Ligne_Horaire_Jour
ADD CONSTRAINT FK_Station_Ligne_Horaire_id_Station FOREIGN KEY (id_Station) REFERENCES Station (id);

ALTER TABLE Station_Ligne_Horaire_Jour
ADD CONSTRAINT FK_Station_Ligne_Horaire_id_Horaire FOREIGN KEY (id_Horaire) REFERENCES Horaire (id);

ALTER TABLE Station_Ligne_Horaire_Jour
ADD CONSTRAINT FK_Station_Ligne_Horaire_id_Jour FOREIGN KEY (id_Jour) REFERENCES Jour (id);