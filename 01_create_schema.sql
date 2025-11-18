-- ============================================
-- Script de création de la base de données TIFOSI
-- ============================================

-- Suppression de la base de données si elle existe (pour réinitialisation)
DROP DATABASE IF EXISTS tifosi;

-- Création de la base de données
CREATE DATABASE tifosi
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

-- Création de l'utilisateur tifosi
CREATE USER IF NOT EXISTS 'tifosi'@'localhost' IDENTIFIED BY 'tifosi2024';

-- Attribution des droits à l'utilisateur
GRANT ALL PRIVILEGES ON tifosi.* TO 'tifosi'@'localhost';
FLUSH PRIVILEGES;

-- Utilisation de la base de données
USE tifosi;

-- ============================================
-- Création des tables
-- ============================================

-- Table: marque
CREATE TABLE marque (
    id_marque INT PRIMARY KEY AUTO_INCREMENT,
    nom_marque VARCHAR(50) NOT NULL UNIQUE,
    CONSTRAINT chk_nom_marque_not_empty CHECK (LENGTH(TRIM(nom_marque)) > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table: boisson
CREATE TABLE boisson (
    id_boisson INT PRIMARY KEY AUTO_INCREMENT,
    nom_boisson VARCHAR(100) NOT NULL,
    id_marque INT NOT NULL,
    CONSTRAINT fk_boisson_marque FOREIGN KEY (id_marque) 
        REFERENCES marque(id_marque) 
        ON DELETE RESTRICT 
        ON UPDATE CASCADE,
    CONSTRAINT chk_nom_boisson_not_empty CHECK (LENGTH(TRIM(nom_boisson)) > 0),
    CONSTRAINT uk_boisson_nom UNIQUE (nom_boisson)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table: ingredient
CREATE TABLE ingredient (
    id_ingredient INT PRIMARY KEY AUTO_INCREMENT,
    nom_ingredient VARCHAR(100) NOT NULL UNIQUE,
    CONSTRAINT chk_nom_ingredient_not_empty CHECK (LENGTH(TRIM(nom_ingredient)) > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table: focaccia
CREATE TABLE focaccia (
    id_focaccia INT PRIMARY KEY AUTO_INCREMENT,
    nom_focaccia VARCHAR(100) NOT NULL UNIQUE,
    prix DECIMAL(5,2) NOT NULL,
    CONSTRAINT chk_nom_focaccia_not_empty CHECK (LENGTH(TRIM(nom_focaccia)) > 0),
    CONSTRAINT chk_prix_positive CHECK (prix > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table de liaison: focaccia_ingredient (relation many-to-many)
CREATE TABLE focaccia_ingredient (
    id_focaccia INT NOT NULL,
    id_ingredient INT NOT NULL,
    PRIMARY KEY (id_focaccia, id_ingredient),
    CONSTRAINT fk_focaccia_ingredient_focaccia FOREIGN KEY (id_focaccia) 
        REFERENCES focaccia(id_focaccia) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    CONSTRAINT fk_focaccia_ingredient_ingredient FOREIGN KEY (id_ingredient) 
        REFERENCES ingredient(id_ingredient) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================
-- Création des index pour améliorer les performances
-- ============================================

CREATE INDEX idx_boisson_marque ON boisson(id_marque);
CREATE INDEX idx_focaccia_ingredient_focaccia ON focaccia_ingredient(id_focaccia);
CREATE INDEX idx_focaccia_ingredient_ingredient ON focaccia_ingredient(id_ingredient);

