# Crétation d'un nouveau projet
## Créer le repository sur bitbucket

Se rendre [ici](https://bitbucket.org/repo/create) et renseigner :

* `Owner` : `whatsonweb`
* `Project` : `Wordpress`
* `Repository name` : Nom du nouveau projet

## Créer l'hébergement sur Nexylan
Se rendre [ici](https://n-admin.nexylan.com/domains/new?server_id=195)

Renseigner le nom de domaine final, attendre qu'il soit créé, puis se rendre dessus

Aller dans l'onglet `Sous-domaines`, et créer 2 sous-domaines `preprod` et `prod`

Aller ensuite dans l'onglet `Base de données`, créer 2 bases de données `preprod` et `prod` (s'il n'y a aucune base existante, une base sans suffixe se créera, il faudra la supprimer)

Ensuite, se rendre dans l'onglet `Alias` puis créer un alias `whatson-web.com` vers la preprod. Par convention, on respectera ce format `nom-de-domaine-preprod.whatson-web.com`. Ne pas oublier de créer le champ A de la nouvelle zone dans la zone DNS de whatson-web.com