# Création d'un bucket Amazon S3
## Créer le bucket
[Homepage Amazon S3](https://console.aws.amazon.com/s3/home?region=eu-central-1)

Cliquer sur `Create Bucket`, renseigner le nom et mettre `Frankfurt` en `Region`

## Définir la fonction GetObject accessible pour tout le monde
[AWS Policy Generator](http://awspolicygen.s3.amazonaws.com/policygen.html)

- `Select Type of Policy` : `S3 Bucket Policy`
- `Effect` : `Allow`
- `Principal` : `*`
- `AWS Service` : `Amazon S3`
- `Actions` : `GetObject`
- `ARN` : `arn:aws:s3:::<bucket_name>/*`

Récupérer le JSON, puis se rendre sur le [bucket](https://console.aws.amazon.com/s3/home?region=eu-central-1).

Aller dans `Properties` > `Permissions` > `Edit bucket policy`

Copier le JSON et enregistrer

## Récupérer une clé d'accès
Disponible dans 1password sous le nom : `Amazon S3 - Security crendentials`