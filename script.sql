CREATE DATABASE IF NOT EXISTS Bibliotheque;

USE Bibliotheque;

CREATE TABLE Utilisateur (
    ID_Utilisateur INT AUTO_INCREMENT PRIMARY KEY,
    Email VARCHAR(255) UNIQUE NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Role ENUM('Admin', 'Client') DEFAULT 'Client'
);

CREATE TABLE Livre (
    ID_Livre INT AUTO_INCREMENT PRIMARY KEY,
    Titre VARCHAR(100) NOT NULL,
    Auteur VARCHAR(40) NOT NULL,
    Genre VARCHAR(20) NOT NULL,
    Release_date YEAR,
    Nbr_exemplaire INT NOT NULL,
    Nbr_exemplaire_dispo INT NOT NULL
);

CREATE TABLE Emprunt (
    ID_Emprunt INT AUTO_INCREMENT PRIMARY KEY,
    ID_Utilisateur INT NOT NULL,
    ID_Livre INT NOT NULL,
    Date_Emprunt DATE NOT NULL,
    Date_Retour_Prevue DATE NOT NULL,
    Statut ENUM('En cours', 'Retourne', 'En retard') DEFAULT 'En cours',
    FOREIGN KEY (ID_Utilisateur) REFERENCES Utilisateur(ID_Utilisateur),
    FOREIGN KEY (ID_Livre) REFERENCES Livre(ID_Livre)
);

CREATE TABLE Categorie (
    ID_Categorie int AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(30) not null,
    description TEXT
);

CREATE TABLE Livre_Categorie (
    ID_Livre int not NULL,
    ID_Categorie int NOT NULL,
    PRIMARY KEY (ID_Livre, ID_Categorie),
    FOREIGN KEY (ID_Livre) REFERENCES Livre(ID_Livre),
    FOREIGN KEY (ID_Categorie) REFERENCES Categorie(ID_Categorie)
);