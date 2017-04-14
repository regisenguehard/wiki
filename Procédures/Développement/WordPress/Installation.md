# Installation
## Créer le repository sur bitbucket

Voir [ici](https://bitbucket.org/repo/create)

Champs à éditer:

`Owner: whatsonweb`

`Project name: nom du projet`

`Repository name: nom du projet`

`Access level  valider :This is a private repository`

`Repository type valider: Git`

Cliquer sur creat 
## Cloner le repository dans le dossier Projets
>colonne de gauche 

>Aller dans le terminal 

>ls puis sélection du dossier Projets = cd Projets


## Installation de WordPress
> Télécharger la dernière version de [WordPress](https://fr.wordpress.org/)

> Décompresser le zip et copier les fichier dans le dossier du projet

## Ajouter le gitignore
Voir [ici](https://github.com/github/gitignore/blob/master/WordPress.gitignore)
Prendre le contenu du lien et l'insérer dans un fichier à la racine du projet (Nom du fichier à créer  `.gitignore`) 


## Installer le site avec MAMP
Aller dans le menu gauche `Hosts` > Créer le projet: ajout du projet avec le `+` en bas. Reprendre le nom du projet pris dans Bitbucket puis cliquer sur si nom composer remplacer le `-` par `_` cocher create a database named reprender le nom du projet. renseigner la racine du projey puis cliquer sur `Save`

Une fois cette étape terminée (mamp doit sauvegarder et rédémarrer sont serveur pour prendre en compte la nouvelle installation)

Aller sur le navigateur et renseigner en tant qu'URL le nom du projet indiquer dans MAMP suivi de `:8888/`

Vous allez être rediriger vers la page d'instalation de WordPress.

Suivre les étapes 

Nom de la base de données:`celle renseignée sur mamp`

Identifiant:	`root`

Mot de passe	: `root`

Adresse de la base de données: `localhost`

Préfixe des tables:	`wp_`

Lancer l'installation:

Renseigner les différents champs demander puis cliquer sur installer WordPress
(
Titre du site `Gentlemens Factory`

Identifiant	`votre nom`

Mot de passe `Celui que vous souhaitez`

Votre adresse de messagerie	`votre email`

Vérifiez bien cette adresse de messagerie avant de continuer.

Visibilité pour les moteurs de recherche `Cocher`  Demander aux moteurs de recherche de ne pas indexer ce site)

cliquer sur `Installer WordPress`
Voilà WordPress est installé en Local !


## Faire le premier commit
Retourner dans le terminal et ajouter les commandes ci-dessous:

	gfc 'gitignore'
	gph -u origin master
	
## Copier ou télécharger l'ensemble des fichiers dans le dossier du projet
Récupérer le dossier (www) soit en local soit sur le serveur, le copier dans le dosier du projet en question
###compléter cette partie !!!

## Installer le site avec MAMP
Config par défaut:

	/** The name of the database for WordPress */
	define('DB_NAME', 'nom-de-la-bdd');

	/** MySQL database username */
	define('DB_USER', 'root');

	/** MySQL database password */
	define('DB_PASSWORD', 'root');

	/** MySQL hostname */
	define('DB_HOST', 'localhost');

	/** Database Charset to use in creating database tables. */
	define('DB_CHARSET', 'utf8');

	/** The Database Collate type. Don't change this if in doubt. */
	define('DB_COLLATE', '');

	
## Vérifier que tout fonctionne

Si erreur database connection, aller dans le dossier wp-config et reprendre le même nom renseigné dans phpmyadmin.

	/** The name of the database for WordPress */
	define('DB_NAME', 'nom-de-la-bdd');

## Faire le deuxième commit
	gfcp 'installation projet'		