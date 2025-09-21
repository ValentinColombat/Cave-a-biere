CREATE TABLE UTILISATEUR (
    id_utilisateur SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    mot_de_passe VARCHAR(255) NOT NULL,
    nom VARCHAR(100),
    prenom VARCHAR(100)
);

CREATE TABLE CAVE(
id_cave SERIAL PRIMARY KEY,
nom_cave VARCHAR(100) NOT NULL,
id_utilisateur INTEGER NOT NULL,
id_biere INTEGER
);

CREATE TABLE BIERE(
    id_biere SERIAL PRIMARY KEY,
    nom_biere VARCHAR(100) NOT NULL,
    type VARCHAR(50),
    couleur VARCHAR(30),
    degre_alcool DECIMAL(3,1),
    format_contenant VARCHAR(50),
    aromes TEXT,
    quantite INTEGER NOT NULL DEFAULT 0,
    id_brasserie INTEGER NOT NULL
);

CREATE TABLE BRASSERIE (
    id_brasserie SERIAL PRIMARY KEY,
    nom_brasserie VARCHAR(100) NOT NULL,
    pays_origine VARCHAR(50),
    ville_adresse VARCHAR(100)
);