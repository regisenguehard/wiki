# Installation locale

Bien suivre le tuto `Nouveau projet` avant de commencer.

## Cloner le repository dans le dossier Projets
Se rendre sur l'url du repository sur bitbucket et récupérer l'adresse du repository qui doit ressembler à `git@bitbucket.org:whatsonweb/nouveau-projet.git`, copier cette adresse.

Ouvrir un terminal et se rendre dans le dossier `Projets`. Puis saisir la commande suivante `git clone git@bitbucket.org:whatsonweb/nouveau-projet.git` (en remplacant évidemment l'adresse par cette précédemment copiée)

## Installation des fichiers
Suivre un des 2 cas possibles, puis reprendre à l'étape `Ajouter le gitignore`

### Création d'un nouveau site
Télécharger la dernière version de [WordPress](https://fr.wordpress.org/), décompresser le zip et copier les fichiers dans le dossier du projet.

### Télécharger le site déjà existant
Récupérer les fichiers existants via FTP, puis les déplacer dans le dossier du projet.

## Ajouter le gitignore
Ajouter un fichier `.gitignore` à la racine du projet, contenant la même chose qu'[ici](https://github.com/github/gitignore/blob/master/WordPress.gitignore)

## Ajouter l'hôte dans MAMP
Ouvrir MAMP, se rendre dans l'onglet `Hosts`. Créer un nouvel hôte à l'aide du bouton `+`, renseigner le `Host name` (la future adresse locale), le `Document root` (l'emplacement des fichiers), `create a database named` (le nom de la base de données). MAMP va ensuite redémarrer.

Ouvrir ensuite l'url du nouvel hôte dans un navigateur, `hostname:8888` (hostname à remplacer par celui qui vient d'être renseigné)

Suiver les différentes étapes d'installation de WP

* Identifiant : root
* Mot de passe : root

## Faire le premier commit
Vérifier que tout fonctionne correctement, puis retourner dans le terminal et saisir ces commandes :

	gfc 'installation projet'
	gph -u origin master
