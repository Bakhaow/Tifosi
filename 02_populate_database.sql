-- ============================================
-- Script de peuplement de la base de données TIFOSI
-- ============================================
USE tifosi;

SET FOREIGN_KEY_CHECKS = 0;

-- Insertion des marques
INSERT INTO marque (id_marque, nom_marque) VALUES (1, 'Coca-cola');
INSERT INTO marque (id_marque, nom_marque) VALUES (2, 'Cristalline');
INSERT INTO marque (id_marque, nom_marque) VALUES (3, 'Monster');
INSERT INTO marque (id_marque, nom_marque) VALUES (4, 'Pepsico');

-- Insertion des ingrédients
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (1, 'Ail');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (2, 'Ananas');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (3, 'Artichaut');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (4, 'Bacon');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (5, 'Base Tomate');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (6, 'Base crème');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (7, 'Champignon');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (8, 'Chevre');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (9, 'Cresson');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (10, 'Emmental');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (11, 'Gorgonzola');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (12, 'Jambon cuit');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (13, 'Jambon fumé');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (14, 'Oeuf');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (15, 'Oignon');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (16, 'Olive noire');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (17, 'Olive verte');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (18, 'Parmesan');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (19, 'Piment');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (20, 'Poivre');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (21, 'Pomme de terre');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (22, 'Raclette');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (23, 'Salami');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (24, 'Tomate cerise');
INSERT INTO ingredient (id_ingredient, nom_ingredient) VALUES (25, 'Mozarella');

-- Insertion des boissons
INSERT INTO boisson (id_boisson, nom_boisson, id_marque) VALUES (1, 'Coca-cola zéro', 1);
INSERT INTO boisson (id_boisson, nom_boisson, id_marque) VALUES (2, 'Coca-cola original', 1);
INSERT INTO boisson (id_boisson, nom_boisson, id_marque) VALUES (3, 'Fanta citron', 1);
INSERT INTO boisson (id_boisson, nom_boisson, id_marque) VALUES (4, 'Fanta orange', 1);
INSERT INTO boisson (id_boisson, nom_boisson, id_marque) VALUES (5, 'Capri-sun', 1);
INSERT INTO boisson (id_boisson, nom_boisson, id_marque) VALUES (6, 'Pepsi', 4);
INSERT INTO boisson (id_boisson, nom_boisson, id_marque) VALUES (7, 'Pepsi Max Zéro', 4);
INSERT INTO boisson (id_boisson, nom_boisson, id_marque) VALUES (8, 'Lipton zéro citron', 4);
INSERT INTO boisson (id_boisson, nom_boisson, id_marque) VALUES (9, 'Lipton Peach', 4);
INSERT INTO boisson (id_boisson, nom_boisson, id_marque) VALUES (10, 'Monster energy ultra gold', 3);
INSERT INTO boisson (id_boisson, nom_boisson, id_marque) VALUES (11, 'Monster energy ultra blue', 3);
INSERT INTO boisson (id_boisson, nom_boisson, id_marque) VALUES (12, 'Eau de source ', 2);

-- Insertion des focaccias
INSERT INTO focaccia (id_focaccia, nom_focaccia, prix) VALUES (1, 'Mozaccia', 9.8);
INSERT INTO focaccia (id_focaccia, nom_focaccia, prix) VALUES (2, 'Gorgonzollaccia', 10.8);
INSERT INTO focaccia (id_focaccia, nom_focaccia, prix) VALUES (3, 'Raclaccia', 8.9);
INSERT INTO focaccia (id_focaccia, nom_focaccia, prix) VALUES (4, 'Emmentalaccia', 9.8);
INSERT INTO focaccia (id_focaccia, nom_focaccia, prix) VALUES (5, 'Tradizione', 8.9);
INSERT INTO focaccia (id_focaccia, nom_focaccia, prix) VALUES (6, 'Hawaienne', 11.2);
INSERT INTO focaccia (id_focaccia, nom_focaccia, prix) VALUES (7, 'Américaine', 10.8);
INSERT INTO focaccia (id_focaccia, nom_focaccia, prix) VALUES (8, 'Paysanne', 12.8);

-- Insertion des relations focaccia-ingredient
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 5);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 25);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 9);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 13);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 1);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 3);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 7);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 18);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 20);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 16);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (2, 5);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (2, 11);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (2, 9);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (2, 1);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (2, 7);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (2, 18);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (2, 20);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (2, 16);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (3, 5);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (3, 22);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (3, 9);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (3, 1);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (3, 7);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (3, 18);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (3, 20);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (4, 6);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (4, 10);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (4, 9);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (4, 7);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (4, 18);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (4, 20);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (4, 15);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (5, 5);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (5, 25);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (5, 9);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (5, 12);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (5, 7);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (5, 18);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (5, 20);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (5, 16);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (5, 17);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (6, 5);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (6, 25);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (6, 9);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (6, 4);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (6, 2);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (6, 19);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (6, 18);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (6, 20);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (6, 16);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (7, 5);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (7, 25);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (7, 9);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (7, 4);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (7, 21);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (7, 18);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (7, 20);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (7, 16);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 6);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 8);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 9);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 21);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 13);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 1);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 3);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 7);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 18);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 20);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 16);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 14);

SET FOREIGN_KEY_CHECKS = 1;