# Projet TIFOSI - Base de données MySQL

Ce projet consiste à créer une base de données MySQL pour le restaurant TIFOSI, spécialisé dans la street-food italienne.

## Structure du projet

```
tifosi/
├── data/                      # Fichiers Excel sources
│   ├── boisson.xlsx
│   ├── focaccia.xlsx
│   ├── ingredient.xlsx
│   └── marque.xlsx
├── 01_create_schema.sql       # Script de création du schéma
├── 02_populate_database.sql   # Script SQL d'insertion des données
├── 03_test_queries.sql        # Script avec les 10 requêtes de test
└── README.md                  # Ce fichier
```

## Installation et configuration

### Prérequis

- MySQL Server installé et en cours d'exécution

## Utilisation

### 1. Création du schéma de la base de données

Exécutez le script SQL pour créer la base de données, l'utilisateur et les tables :

```bash
mysql -u root -p < 01_create_schema.sql
```

Ou connectez-vous à MySQL et exécutez le contenu du fichier :

```sql
SOURCE 01_create_schema.sql;
```

### 2. Peuplement de la base de données

Exécutez le script SQL pour insérer les données :

```bash
mysql -u tifosi -p tifosi < 02_populate_database.sql
```

Ou connectez-vous à MySQL et exécutez :

```sql
SOURCE 02_populate_database.sql;
```

### 3. Exécution des requêtes de test

```bash
mysql -u tifosi -p tifosi < 03_test_queries.sql
```

Ou connectez-vous à MySQL :

```bash
mysql -u tifosi -p tifosi
```

Puis exécutez :

```sql
SOURCE 03_test_queries.sql;
```

## Structure de la base de données

### Tables

1. **marque** : Les marques de boissons

   - `id_marque` (PK, AUTO_INCREMENT)
   - `nom_marque` (UNIQUE, NOT NULL)

2. **boisson** : Les boissons proposées

   - `id_boisson` (PK, AUTO_INCREMENT)
   - `nom_boisson` (UNIQUE, NOT NULL)
   - `id_marque` (FK vers marque)

3. **ingredient** : Les ingrédients disponibles

   - `id_ingredient` (PK, AUTO_INCREMENT)
   - `nom_ingredient` (UNIQUE, NOT NULL)

4. **focaccia** : Les focaccias proposées

   - `id_focaccia` (PK, AUTO_INCREMENT)
   - `nom_focaccia` (UNIQUE, NOT NULL)
   - `prix` (NOT NULL, > 0)

5. **focaccia_ingredient** : Table de liaison (relation many-to-many)
   - `id_focaccia` (FK vers focaccia)
   - `id_ingredient` (FK vers ingredient)
   - PRIMARY KEY (id_focaccia, id_ingredient)

## Contraintes de sécurité

- Champs obligatoires avec `NOT NULL`
- Contraintes d'intégrité référentielle avec `FOREIGN KEY`
- Valeurs uniques avec `UNIQUE`
- Contraintes de validation (prix > 0, noms non vides)
- Encodage UTF-8 (utf8mb4) pour supporter tous les caractères

## Requêtes de test

Le fichier `03_test_queries.sql` contient 10 requêtes de test :

1. Liste des focaccias par ordre alphabétique
2. Nombre total d'ingrédients
3. Prix moyen des focaccias
4. Liste des boissons avec leur marque
5. Ingrédients d'une Raclaccia
6. Nombre d'ingrédients par focaccia
7. Focaccia avec le plus d'ingrédients
8. Focaccias contenant de l'ail
9. Ingrédients inutilisés
10. Focaccias sans champignons

## Identifiants de connexion

- **Utilisateur** : `tifosi`
- **Mot de passe** : `tifosi2024`
- **Base de données** : `tifosi`

⚠️ **Note de sécurité** : Changez le mot de passe en production !

## Auteur

Projet réalisé dans le cadre d'une formation avancée en bases de données.
