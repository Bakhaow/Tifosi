-- ============================================
-- Script de requêtes de test pour la base de données TIFOSI
-- ============================================

USE tifosi;

-- ============================================
-- REQUETE 1
-- ============================================
-- But: Afficher la liste des noms des focaccias par ordre alphabétique croissant
-- Code SQL:
SELECT nom_focaccia
FROM focaccia
ORDER BY nom_focaccia ASC;

-- Résultat attendu: Liste de tous les noms de focaccias triés alphabétiquement
-- Résultat obtenu: (à remplir après exécution)
-- Commentaires: (à remplir si nécessaire)


-- ============================================
-- REQUETE 2
-- ============================================
-- But: Afficher le nombre total d'ingrédients
-- Code SQL:
SELECT COUNT(*) AS nombre_total_ingredients
FROM ingredient;

-- Résultat attendu: 25 (nombre total d'ingrédients dans la table)
-- Résultat obtenu: (à remplir après exécution)
-- Commentaires: (à remplir si nécessaire)


-- ============================================
-- REQUETE 3
-- ============================================
-- But: Afficher le prix moyen des focaccias
-- Code SQL:
SELECT AVG(prix) AS prix_moyen
FROM focaccia;

-- Résultat attendu: Prix moyen calculé à partir de tous les prix des focaccias
-- Résultat obtenu: (à remplir après exécution)
-- Commentaires: (à remplir si nécessaire)


-- ============================================
-- REQUETE 4
-- ============================================
-- But: Afficher la liste des boissons avec leur marque, triée par nom de boisson
-- Code SQL:
SELECT b.nom_boisson, m.nom_marque
FROM boisson b
INNER JOIN marque m ON b.id_marque = m.id_marque
ORDER BY b.nom_boisson ASC;

-- Résultat attendu: Liste de toutes les boissons avec leur marque associée, triée par nom de boisson
-- Résultat obtenu: (à remplir après exécution)
-- Commentaires: (à remplir si nécessaire)


-- ============================================
-- REQUETE 5
-- ============================================
-- But: Afficher la liste des ingrédients pour une Raclaccia
-- Code SQL:
SELECT i.nom_ingredient
FROM ingredient i
INNER JOIN focaccia_ingredient fi ON i.id_ingredient = fi.id_ingredient
INNER JOIN focaccia f ON fi.id_focaccia = f.id_focaccia
WHERE f.nom_focaccia = 'Raclaccia'
ORDER BY i.nom_ingredient;

-- Résultat attendu: Liste des ingrédients de la focaccia "Raclaccia"
-- Résultat obtenu: (à remplir après exécution)
-- Commentaires: (à remplir si nécessaire)


-- ============================================
-- REQUETE 6
-- ============================================
-- But: Afficher le nom et le nombre d'ingrédients pour chaque focaccia
-- Code SQL:
SELECT f.nom_focaccia, COUNT(fi.id_ingredient) AS nombre_ingredients
FROM focaccia f
LEFT JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
GROUP BY f.id_focaccia, f.nom_focaccia
ORDER BY f.nom_focaccia;

-- Résultat attendu: Pour chaque focaccia, son nom et le nombre d'ingrédients qu'elle contient
-- Résultat obtenu: (à remplir après exécution)
-- Commentaires: (à remplir si nécessaire)


-- ============================================
-- REQUETE 7
-- ============================================
-- But: Afficher le nom de la focaccia qui a le plus d'ingrédients
-- Code SQL:
SELECT f.nom_focaccia, COUNT(fi.id_ingredient) AS nombre_ingredients
FROM focaccia f
INNER JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
GROUP BY f.id_focaccia, f.nom_focaccia
ORDER BY nombre_ingredients DESC
LIMIT 1;

-- Résultat attendu: Le nom de la focaccia avec le plus grand nombre d'ingrédients
-- Résultat obtenu: (à remplir après exécution)
-- Commentaires: (à remplir si nécessaire)


-- ============================================
-- REQUETE 8
-- ============================================
-- But: Afficher la liste des focaccias qui contiennent de l'ail
-- Code SQL:
SELECT DISTINCT f.nom_focaccia
FROM focaccia f
INNER JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
INNER JOIN ingredient i ON fi.id_ingredient = i.id_ingredient
WHERE i.nom_ingredient = 'Ail'
ORDER BY f.nom_focaccia;

-- Résultat attendu: Liste des focaccias contenant l'ingrédient "Ail"
-- Résultat obtenu: (à remplir après exécution)
-- Commentaires: (à remplir si nécessaire)


-- ============================================
-- REQUETE 9
-- ============================================
-- But: Afficher la liste des ingrédients inutilisés
-- Code SQL:
SELECT i.id_ingredient, i.nom_ingredient
FROM ingredient i
LEFT JOIN focaccia_ingredient fi ON i.id_ingredient = fi.id_ingredient
WHERE fi.id_ingredient IS NULL
ORDER BY i.nom_ingredient;

-- Résultat attendu: Liste des ingrédients qui ne sont utilisés dans aucune focaccia
-- Résultat obtenu: (à remplir après exécution)
-- Commentaires: (à remplir si nécessaire)


-- ============================================
-- REQUETE 10
-- ============================================
-- But: Afficher la liste des focaccias qui n'ont pas de champignons
-- Code SQL:
SELECT f.nom_focaccia
FROM focaccia f
WHERE f.id_focaccia NOT IN (
    SELECT DISTINCT fi.id_focaccia
    FROM focaccia_ingredient fi
    INNER JOIN ingredient i ON fi.id_ingredient = i.id_ingredient
    WHERE i.nom_ingredient = 'Champignon'
)
ORDER BY f.nom_focaccia;

-- Résultat attendu: Liste des focaccias qui ne contiennent pas l'ingrédient "Champignon"
-- Résultat obtenu: (à remplir après exécution)
-- Commentaires: (à remplir si nécessaire)

