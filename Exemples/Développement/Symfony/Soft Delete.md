# Soft Delete 
## Principe : 
Permet de garder en base de données une entité supprimé, en utilisant un attibut date (deletedAt).
Si cette attribut vaut null, alors l'objet n'est pas supprimé, si il vaut n'importe qu'elle date, l'objet est supprimé de tous les appels doctrine.

## Fonctionnement :
Pour fonctionner, il ajoute tout simplement "where deletedAt is null" a toutes les requetes sur les entités ou l'annotation est déclaré.

## Implémentation : 
 Dans config.yml : 
 
	stof_doctrine_extensions:
	    orm:
	        default:
	            sluggable: true
	            timestampable: true
	            translatable: true
	            tree: true
	            softdeleteable: true

	doctrine:
			//...
            mappings:
            translatable:
                type: annotation
                is_bundle: false
                prefix: Gedmo\Translatable\Entity
                dir: "%kernel.root_dir%/../vendor/gedmo/doctrine-extensions/lib/Gedmo/Translatable/Entity"
                alias: GedmoTranslatable
	        filters:
	              softdeleteable:
	                  class: Gedmo\SoftDeleteable\Filter\SoftDeleteableFilter
	                  enabled: true
	                  
Dans l'entité :
`use Gedmo\Mapping\Annotation as Gedmo;`

Annotation : ` * @Gedmo\SoftDeleteable(fieldName="deletedAt", timeAware=false, hardDelete=true)
`

et le champ : `use SoftDeleteableEntity;`

On peut désactiver quand on veut le filtre sur deletedAt avec : 
`$em->getFilters()->disable('softdeleteable');
`
