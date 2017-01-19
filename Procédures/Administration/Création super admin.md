# Créer un utilisateur super admin
## Se connecter en SSH sur le domaine
Se rendre sur le domaine sur `N-admin` puis dans l'onglet `Clés SSH`, cocher sa clé SSH et attendre environ 5 minutes.

Copier/Coller la ligne `ssh domaine@server.nexylan.net -p 2121` (celle du domaine) dans un `Terminal`

Vous devez maintenant avoir quelque chose comme ça :

	You are in a limited shell.
	Type '?' or 'help' to get the list of allowed commands
	domaine:~$ 
	
## Se rendre dans le dossier du sous-domaine
Pour la preprod saisir : `cd preprod` (par défaut, vérifier dans l'onglet `Sous-domaines` si ça ne fonctionne pas)
Pour la prod saisir : `cd prod`

## Créer l'utilisateur
Saisir la commande suivante : `php app/console fos:user:create`

Renseigner l'email en `username` et en `email`

Pour le mot de passe, on respectera les conventions internes

## Associer le rôle à l'utilisateur
Saisir la commande suivante : `php app/console fos:user:promote`

Renseigner l'email en `username`

Pour le rôle, renseigner `ROLE_SUPER_ADMIN`
