# Créer le NDD sur nexylan (nx3217)
Renseigner le bon NDD et non l'url de préprod

- Aller dans les sous domaine et créér `preprod` et `prod`
- Aller dans la BDD et créer `preprod` et `prod`
- Supprimer la base sans suffixe !

Si pas d'accès à la zone DNS alors il faut créer un alias whatson-web.
Attention bien relier la destination (sous-domaine) sur preprod

	exemple: maison-saint-jean-preprod.whatson-web.com
	
Déclarer le champs A dans la zone DNS du nom de domaine souhaité.

# Installer les fichiers et la BDD
## Créer un dump de la BDD
Aller dans mamp, onglet mySQL et cliquer sur le logo phpmyadmin
aller sur la BDD du site et exporter > custom > save output to a file
Exporter (Go)

Importer le dump sur la BDD en ligne 
Retourner sur nexylan et se connecter sur la bdd (Connexion MySQL)
Une fois sur le BDD > sélectionner la BDD Preprod > importer le dump

## Déclarer la clé SSH
????

## Créer le repository sur bitbucket

# Installation
## Créer le repository sur bitbucket

Voir [ici](https://bitbucket.org/repo/create)
 
## Cloner le repository dans le dossier Projets
>colonne de gauche 

>Aller dans le terminal (bien vérifier que je suis à la racine) 

## Ajouter le gitignore
Voir [ici](https://github.com/github/gitignore/blob/master/WordPress.gitignore)
Prendre le contenu du lien et l'insérer sans un fichier à la racine du projet (Nom du fichier à créer  `.gitignore`) 

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

## Déclarer la clé SSH du serveur sur le git
> Générer la clé ssh-keygen
 
> Récupérer la clé avec la commande `cat .ssh/id_rsa.pub`

> Retourner sur Bit bucket

> Colonne de gauche  > settings > access keys > add key

> Label fin de la clé ssh exemple `maison-sai-26243@nx3217.nexylan.net`

## Installation des fichiers sur le serveur
 Se connecter en SSH
 écrire ls pour connaitre ce qu'il y a sur le serveur
 
 se positionner sur la preprod `cd preprod`
 copier coller
 >colonne de gauche 
 Clone et coller le exemple `git clone git@bitbucket.org:whatsonweb/maison-saint-jean.git` ajouter espace .

 
 

