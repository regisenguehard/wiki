# Nommages des commits
Format à respecter pour les noms de commits :

	[INT|DEV|BUG][BK|FT|ME][Bundle1|Bundle2] libelle
	
## Explication

### 1/ Type(s) de commit (Obligatoire)
- INT : Intégration
- DEV : Développement
- BUG : Correction de bug

### 2/ Partie(s) concernée(s) (Facultatif)
- BK : Backend
- FT : Frontend
- ME : Membre

### 3/ Bundle(s) impacté(s) (Facultatif)
Le(s) nom(s) du/des bundle(s) impactés en camelCase comme sur Symfony (Ex: Cms, Blog)

## Exemples
	[INT] home
	[INT|BUG][FT] sous menu header
	[DEV][BK][Cms] personnalisation
	[DEV][FT][Cms] liaison BK : home, page, contact
	[DEV][BK|FT][Cms|Blog] ajout bannière