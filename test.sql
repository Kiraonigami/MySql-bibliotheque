INSERT INTO Utilisateur (Email, Password, Role)
VALUES 
('admin@test.com', 'hashed_password', 'Admin'),
('user1@test.com', 'hashed_password', 'Client');

INSERT INTO Livre (Titre, Auteur, Genre, Release_date, Nbr_exemplaire, Nbr_exemplaire_dispo)
VALUES
('Soleil couchant', 'Dazai Osamu', 'Roman', 1947, 5, 4),
('Recueil de nouvelles', 'Akutagawa Ryunosuke', 'Nouvelles', 1927, 3, 3);

INSERT INTO Categorie (Nom, Description)
VALUES
('Classiques japonais', 'Oeuvres littéraires majeures de la littérature japonaise.'),
('Romans', 'Livres appartenant au genre narratif.'),
('Nouvelles', 'Courts récits littéraires.');

INSERT INTO Livre_Categorie (ID_Livre, ID_Categorie)
VALUES
(1, 1), -- Soleil couchant est un classique japonais
(1, 2), -- Soleil couchant est aussi un roman
(2, 1), -- Le recueil d'Akutagawa est un classique japonais
(2, 3); -- Le recueil appartient à la catégorie des nouvelles
