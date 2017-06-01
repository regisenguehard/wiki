# Installer une nouvelle preprod/prod
## Installer les fichiers
### Se connecter en SSH
Se rendre sur le domaine dans n-admin, puis dans l'onglet `Clés SSH`, vérifier que sa clé SSH est activée, sinon l'activer et attendre. Copier la commande qui doit ressembler à `ssh nouveauprojet-12345@nx3217.nexylan.net -p 2121`. La saisir dans un terminal

### Cloner les fichiers
Se rendre dans le dossier de la preprod ou la prod (`cd preprod` ou `cd prod`)
Récupérer sur bitbucket l'adresse du repository comme lors de la création d'un nouveau projet, puis saisir la commande suivante (en remplacant l'adresse du repository) :

	git clone git@bitbucket.org:whatsonweb/nouveau-projet.git .
	
## Installer la base de données
### Créer un dump
Se rendre sur la base de données à exporter (locale ou preprod), puis dans l'onglet `Export`, exporter la base de données.

Se rendre sur la base de données sur laquelle importer (preprod ou prod), puis dans l'onglet `Import`, importer la base de données

## Installer WP
Se rendre sur la preprod ou la prod puis suivre les étapes d'installations de WP